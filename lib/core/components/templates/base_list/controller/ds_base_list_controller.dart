import 'dart:collection';

import 'package:design_system/core/components/molecules/listtile/ds_listtile.dart';
import 'package:design_system/core/components/templates/base_list/ds_base_list.dart'; // For DSBaseListModelTabs
import 'package:flutter/foundation.dart'; // For ChangeNotifier

class DSBaseListController extends ChangeNotifier {
  final bool isTabMode;
  final List<DSListTile> _initialItensList;
  final List<DSBaseListModelTabs> _initialTabs;

  String _searchString = "";

  DSBaseListController({
    required this.isTabMode,
    List<DSListTile>? itemsList,
    List<DSBaseListModelTabs>? tabs,
  })  : _initialItensList = List<DSListTile>.unmodifiable(itemsList ?? []),
        _initialTabs = List<DSBaseListModelTabs>.unmodifiable(tabs ?? []);

  UnmodifiableListView<DSListTile> get cardsSearch => _getResultListTiles();

  String get currentSearchString => _searchString;

  void changeSearchString(String searchString) {
    _searchString = searchString;
    notifyListeners();
  }

  UnmodifiableListView<DSListTile> _getResultListTiles() {
    if (isTabMode) {
      if (_initialTabs.isEmpty) {
        return UnmodifiableListView([]);
      }
      final List<DSListTile> listToFilter = _initialTabs[0].itemsList;
      if (_searchString.isEmpty) {
        return UnmodifiableListView(listToFilter);
      }
      final filteredList = listToFilter
          .where((item) =>
              (item.title).toLowerCase().contains(_searchString.toLowerCase()))
          .toList();
      return UnmodifiableListView(filteredList);
    } else {
      if (_searchString.isEmpty) {
        return UnmodifiableListView(_initialItensList);
      }
      final filteredList = _initialItensList
          .where((item) =>
              (item.title).toLowerCase().contains(_searchString.toLowerCase()))
          .toList();
      return UnmodifiableListView(filteredList);
    }
  }
}
