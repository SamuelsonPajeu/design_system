import 'package:design_system/core/components/templates/dynamic_list/model/ds_dynamic_list_chip.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_view_mode_filter_dynamic_list.dart';
import 'package:get/get.dart';

class DSDynamicListController<T> extends GetxController {
  DSDynamicListController({
    required this.filters,
    required this.searchMatcher,
    required this.filterMatcher,
    this.isSearchLocal = true,
    this.isFilterLocal = true,
    this.showFilters = true,
    this.showSearch = true,
    this.showCountList = true,
    this.viewMode = DSViewModeFilterDynamicList.chips,
  });

  final List<DSDynamicListChip> filters;
  final bool Function(T item, String searchText) searchMatcher;
  final bool Function(T item, DSDynamicListChip? filter) filterMatcher;

  final bool showFilters;
  final bool showSearch;
  final bool showCountList;

  final bool isSearchLocal;
  final bool isFilterLocal;

  var items = <T>[].obs;
  var selectedFilter = Rxn<DSDynamicListChip>();
  var searchText = ''.obs;
  var isLoading = false.obs;

  DSViewModeFilterDynamicList viewMode;

  List<T> get filteredItems {
    List<T> tempItems = items;

    if (isFilterLocal && selectedFilter.value != null) {
      tempItems = tempItems
          .where((item) => filterMatcher(item, selectedFilter.value))
          .toList();
    }

    if (isSearchLocal && searchText.value.isNotEmpty) {
      tempItems = tempItems
          .where((item) => searchMatcher(item, searchText.value))
          .toList();
    }

    return tempItems;
  }

  void setLoading(bool value) {
    isLoading.value = value;
  }

  void updateItems(List<T> newItems) {
    items.assignAll(newItems);
    setLoading(false);
  }

  void selectFilter(
    DSDynamicListChip? filter,
    void Function(DSDynamicListChip? filter, String searchText)?
        onRemoteFilterSelected,
  ) {
    selectedFilter.value = filter;

    if (!isFilterLocal && onRemoteFilterSelected != null) {
      setLoading(true);
      onRemoteFilterSelected(filter, searchText.value);
    }
  }

  void updateSearch(
    String value,
    void Function(DSDynamicListChip? filter, String searchText)?
        onRemoteSearchChanged,
  ) {
    searchText.value = value;

    if (!isSearchLocal && onRemoteSearchChanged != null) {
      setLoading(true);
      onRemoteSearchChanged(selectedFilter.value, searchText.value);
    }
  }
}
