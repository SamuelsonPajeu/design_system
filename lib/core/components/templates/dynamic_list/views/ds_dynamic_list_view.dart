import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/components/molecules/field/ds_form_text_field.dart';
import 'package:design_system/core/components/templates/dynamic_list/controller/ds_dynamic_list_controller.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_dynamic_list_chip.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_view_mode_filter_dynamic_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

class DSDynamicListView<T> extends StatelessWidget {
  const DSDynamicListView({
    super.key,
    required this.controller,
    required this.itemBuilder,
    this.onRemoteFilterSelected,
    this.onRemoteSearchChanged,
    this.hintTextSearch = 'Pesquisar...',
    this.emptyMessage = 'Nenhum item encontrado.',
    this.emptyIcon = Symbols.warning,
    this.textFilter,
  });

  final DSDynamicListController<T> controller;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final void Function(DSDynamicListChip? filter, String searchText)?
      onRemoteFilterSelected;
  final void Function(DSDynamicListChip? filter, String searchText)?
      onRemoteSearchChanged;
  final String hintTextSearch;
  final String emptyMessage;
  final IconData emptyIcon;
  final String? textFilter;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return _buildList();
    }

    return Expanded(child: _buildList());
  }

  Widget _buildList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (textFilter?.isNotEmpty == true)
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Text(
              '$textFilter',
            ),
          ),
        if (controller.showSearch)
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Semantics(
                label: hintTextSearch,
                hint: hintTextSearch,
                textField: true,
                child: DSFormTextField(
                  hintText: hintTextSearch,
                  controller: TextEditingController(),
                  onChanged: (value) {
                    controller.updateSearch(value, onRemoteSearchChanged);
                  },
                  suffixIcon: ExcludeSemantics(
                    excluding: true,
                    child: Icon(
                      Symbols.search,
                    ),
                  ),
                ),
              )),
        if (controller.showFilters)
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: _buildFilter(),
          ),
        const SizedBox(height: 16),
        Expanded(
          child: Obx(() {
            if (controller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            }

            final items = controller.filteredItems;

            if (items.isEmpty) {
              return Center(
                child: Semantics(
                  label: emptyMessage,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: ExcludeSemantics(
                          excluding: true,
                          child: Icon(
                            emptyIcon,
                            size: 50,
                          ),
                        ),
                      ),
                      Text(
                        emptyMessage,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }

            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (controller.showCountList)
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          ExcludeSemantics(
                            excluding: true,
                            child: Icon(
                              Symbols.check_circle_filled,
                              size: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Semantics(
                                label: Intl.plural(
                                  items.length,
                                  zero: emptyMessage,
                                  one: '1 item encontrado',
                                  other: '${items.length} itens encontrados',
                                ),
                                child: ExcludeSemantics(
                                  excluding: true,
                                  child: Text(
                                    Intl.plural(
                                      items.length,
                                      zero: emptyMessage,
                                      one: '1 item encontrado',
                                      other:
                                          '${items.length} itens encontrados',
                                    ),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Semantics(
                          label: 'Item ${index + 1} de ${items.length}',
                          child: itemBuilder(context, item, index),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildFilter() {
    switch (controller.viewMode) {
      case DsViewModeFilterDynamicList.chips:
        return Obx(
          () => _buildChipFilters(),
        );
      case DsViewModeFilterDynamicList.tabs:
        return _buildTabFilters();
    }
  }

  Widget _buildChipFilters() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Row(
          children: [
            DSChip(
              typeOfChip: TypeOfChip.labelOnly,
              label: 'Todos',
              selected: controller.selectedFilter.value == null,
              onPressed: () =>
                  controller.selectFilter(null, onRemoteFilterSelected),
            ),
            ...controller.filters.map((filter) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: DSChip(
                  typeOfChip: TypeOfChip.labelOnly,
                  label: filter.label,
                  selected: controller.selectedFilter.value == filter,
                  onPressed: () => controller.selectFilter(
                    filter,
                    onRemoteFilterSelected,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildTabFilters() {
    return DefaultTabController(
        length: controller.filters.length + 1,
        child: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: [
            Tab(
              child: Semantics(
                label: 'Filtro por: Todos',
                child: Text('Todos'),
              ),
            ),
            ...controller.filters.map(
              (filter) => Tab(
                child: Semantics(
                  label: 'Filtro por: ${filter.label}',
                  child: Text(filter.label),
                ),
              ),
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              controller.selectFilter(null, onRemoteFilterSelected);
            } else {
              controller.selectFilter(
                  controller.filters[index - 1], onRemoteFilterSelected);
            }
          },
        ));
  }
}
