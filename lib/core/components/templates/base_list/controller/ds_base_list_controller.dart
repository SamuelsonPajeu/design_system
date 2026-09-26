import 'dart:collection';

import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/components/templates/base_list/ds_base_list.dart';
import 'package:flutter/material.dart';

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
      final filteredList = listToFilter.where((item) {
        String titleText = '';
        if (item.title is Text) {
          titleText = (item.title as Text).data ?? '';
        }
        return titleText.toLowerCase().contains(_searchString.toLowerCase());
      }).toList();
      return UnmodifiableListView(filteredList);
    } else {
      if (_searchString.isEmpty) {
        return UnmodifiableListView(_initialItensList);
      }
      final filteredList = _initialItensList.where((item) {
        String titleText = '';
        if (item.title is Text) {
          titleText = (item.title as Text).data ?? '';
        }
        return titleText.toLowerCase().contains(_searchString.toLowerCase());
      }).toList();
      return UnmodifiableListView(filteredList);
    }
  }
}
