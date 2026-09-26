import 'dart:collection';

import 'package:flutter/foundation.dart';

class DSTableController<T> extends ChangeNotifier {
  final List<T> _allItems;
  List<T> _filteredItems;
  final List<T> _currentPageItems = <T>[];
  late final UnmodifiableListView<T> _currentPageItemsView;
  int _dataVersion = 0;
  int _currentPage;
  int _itemsPerPage;
  final List<int> itemsPerPageOptions;
  bool _isLoading = false;
  final Duration loadingDelay;
  int _filterToken = 0;

  // Selection management
  final Set<T> _selectedItems = {};
  final String Function(T item)? itemIdGetter;

  DSTableController({
    List<T> items = const [],
    int initialPage = 1,
    int initialItemsPerPage = 100,
    this.itemsPerPageOptions = const [10, 25, 50, 100],
    this.loadingDelay = const Duration(milliseconds: 150),
    bool startWithLoading = false,
    this.itemIdGetter,
  })  : _allItems = List<T>.from(items),
        _filteredItems = List<T>.from(items),
        _currentPage = initialPage,
        _itemsPerPage = initialItemsPerPage,
        _isLoading = startWithLoading {
    _currentPageItemsView = UnmodifiableListView<T>(_currentPageItems);
    _recomputeCurrentPageItems();
    if (startWithLoading) {
      _finishLoading();
    }
  }

  List<T> get allItems => List.unmodifiable(_allItems);

  List<T> get filteredItems => List.unmodifiable(_filteredItems);

  bool get isLoading => _isLoading;

  int get dataVersion => _dataVersion;

  void _bumpDataVersion() {
    _dataVersion++;
  }

  void _recomputeCurrentPageItems() {
    _currentPageItems
      ..clear()
      ..addAll(_sliceCurrentPageItems());
    _bumpDataVersion();
  }

  List<T> _sliceCurrentPageItems() {
    if (_filteredItems.isEmpty) return List<T>.empty(growable: false);

    final startIndex = (_currentPage - 1) * _itemsPerPage;
    if (startIndex >= _filteredItems.length) {
      return List<T>.empty(growable: false);
    }

    final endIndex = startIndex + _itemsPerPage;
    return _filteredItems.sublist(
      startIndex,
      endIndex > _filteredItems.length ? _filteredItems.length : endIndex,
    );
  }

  List<T> get currentPageItems => _currentPageItemsView;

  int get currentPage => _currentPage;

  int get itemsPerPage => _itemsPerPage;

  int get totalItems => _filteredItems.length;

  int get totalPages => (_filteredItems.length / _itemsPerPage).ceil();

  int get startItemIndex =>
      _filteredItems.isEmpty ? 0 : ((_currentPage - 1) * _itemsPerPage) + 1;

  int get endItemIndex {
    final end = _currentPage * _itemsPerPage;
    return end > _filteredItems.length ? _filteredItems.length : end;
  }

  bool get canGoToFirstPage => _currentPage > 1;

  bool get canGoToPreviousPage => _currentPage > 1;

  bool get canGoToNextPage => _currentPage < totalPages;

  bool get canGoToLastPage => _currentPage < totalPages;

  // Selection getters
  Set<T> get selectedItems => Set.unmodifiable(_selectedItems);

  int get selectedCount => _selectedItems.length;

  bool get hasSelection => _selectedItems.isNotEmpty;

  bool isSelected(T item) => _selectedItems.contains(item);

  bool get isAllCurrentPageSelected {
    if (currentPageItems.isEmpty) return false;
    return currentPageItems.every((item) => _selectedItems.contains(item));
  }

  bool? get headerCheckboxValue {
    if (_selectedItems.isEmpty) return false;
    if (isAllCurrentPageSelected) return true;
    return null; // tristate for partial selection
  }

  void _setLoading(bool value) {
    if (_isLoading != value) {
      _isLoading = value;
      notifyListeners();
    }
  }

  Future<void> _finishLoading() async {
    await Future.delayed(loadingDelay);
    _setLoading(false);
  }

  void setItems(List<T> items) {
    _allItems.clear();
    _allItems.addAll(items);
    _filteredItems = List<T>.from(items);
    _currentPage = 1;
    _recomputeCurrentPageItems();
    notifyListeners();
  }

  void addItem(T item) {
    _allItems.add(item);
    _filteredItems.add(item);
    _recomputeCurrentPageItems();
    notifyListeners();
  }

  void addItems(List<T> items) {
    _allItems.addAll(items);
    _filteredItems.addAll(items);
    _recomputeCurrentPageItems();
    notifyListeners();
  }

  void removeItem(T item) {
    _allItems.remove(item);
    _filteredItems.remove(item);
    _selectedItems.remove(item);
    if (_currentPage > totalPages && totalPages > 0) {
      _currentPage = totalPages;
    }
    _recomputeCurrentPageItems();
    notifyListeners();
  }

  void removeItemAt(int index) {
    if (index >= 0 && index < _allItems.length) {
      final item = _allItems[index];
      _allItems.removeAt(index);
      _filteredItems.remove(item);
      _selectedItems.remove(item);
      if (_currentPage > totalPages && totalPages > 0) {
        _currentPage = totalPages;
      }
      _recomputeCurrentPageItems();
      notifyListeners();
    }
  }

  void clearItems() {
    _allItems.clear();
    _filteredItems.clear();
    _selectedItems.clear();
    _currentPage = 1;
    _recomputeCurrentPageItems();
    notifyListeners();
  }

  void filterBy(bool Function(T item) predicate) {
    final token = ++_filterToken;
    _setLoading(true);
    _runFilterInChunks(token, predicate);
  }

  void filterByItems(List<T> items) {
    _filteredItems = items.where((item) => _allItems.contains(item)).toList();
    _currentPage = 1;
    _recomputeCurrentPageItems();
    notifyListeners();
  }

  void clearFilter() {
    final token = ++_filterToken;
    _setLoading(true);
    _runClearFilterInChunks(token);
  }

  Future<void> _runFilterInChunks(
    int token,
    bool Function(T item) predicate,
  ) async {
    await Future<void>.delayed(Duration.zero);
    if (token != _filterToken) return;

    const chunkSize = 500;
    final result = <T>[];
    for (var i = 0; i < _allItems.length; i++) {
      if (token != _filterToken) return;
      final item = _allItems[i];
      if (predicate(item)) {
        result.add(item);
      }
      if (i % chunkSize == chunkSize - 1) {
        await Future<void>.delayed(Duration.zero);
      }
    }

    if (token != _filterToken) return;
    _filteredItems = result;
    _currentPage = 1;
    _recomputeCurrentPageItems();
    _setLoading(false);
  }

  Future<void> _runClearFilterInChunks(int token) async {
    await Future<void>.delayed(Duration.zero);
    if (token != _filterToken) return;

    const chunkSize = 1000;
    final result = <T>[];
    for (var i = 0; i < _allItems.length; i++) {
      if (token != _filterToken) return;
      result.add(_allItems[i]);
      if (i % chunkSize == chunkSize - 1) {
        await Future<void>.delayed(Duration.zero);
      }
    }

    if (token != _filterToken) return;
    _filteredItems = result;
    _currentPage = 1;
    _recomputeCurrentPageItems();
    _setLoading(false);
  }

  void setItemsPerPage(int itemsPerPage) {
    if (itemsPerPage > 0 && itemsPerPage != _itemsPerPage) {
      _isLoading = true;
      _itemsPerPage = itemsPerPage;
      _currentPage = 1;
      _recomputeCurrentPageItems();
      notifyListeners();
      _finishLoading();
    }
  }

  void goToPage(int page) {
    if (page >= 1 && page <= totalPages && page != _currentPage) {
      _isLoading = true;
      _currentPage = page;
      _recomputeCurrentPageItems();
      notifyListeners();
      _finishLoading();
    }
  }

  void goToFirstPage() {
    if (canGoToFirstPage) {
      _isLoading = true;
      _currentPage = 1;
      _recomputeCurrentPageItems();
      notifyListeners();
      _finishLoading();
    }
  }

  void goToPreviousPage() {
    if (canGoToPreviousPage) {
      _isLoading = true;
      _currentPage--;
      _recomputeCurrentPageItems();
      notifyListeners();
      _finishLoading();
    }
  }

  void goToNextPage() {
    if (canGoToNextPage) {
      _isLoading = true;
      _currentPage++;
      _recomputeCurrentPageItems();
      notifyListeners();
      _finishLoading();
    }
  }

  void goToLastPage() {
    if (canGoToLastPage) {
      _isLoading = true;
      _currentPage = totalPages;
      _recomputeCurrentPageItems();
      notifyListeners();
      _finishLoading();
    }
  }

  @override
  void dispose() {
    _allItems.clear();
    _filteredItems.clear();
    _selectedItems.clear();
    _currentPageItems.clear();
    super.dispose();
  }

  // Selection methods
  void toggleSelection(T item) {
    if (_selectedItems.contains(item)) {
      _selectedItems.remove(item);
    } else {
      _selectedItems.add(item);
    }
    notifyListeners();
  }

  void select(T item) {
    if (!_selectedItems.contains(item)) {
      _selectedItems.add(item);
      notifyListeners();
    }
  }

  void deselect(T item) {
    if (_selectedItems.remove(item)) {
      notifyListeners();
    }
  }

  void selectAll() {
    _selectedItems.addAll(currentPageItems);
    notifyListeners();
  }

  void deselectAll() {
    _selectedItems.clear();
    notifyListeners();
  }

  void toggleSelectAll() {
    if (isAllCurrentPageSelected) {
      for (final item in currentPageItems) {
        _selectedItems.remove(item);
      }
    } else {
      _selectedItems.addAll(currentPageItems);
    }
    notifyListeners();
  }
}
