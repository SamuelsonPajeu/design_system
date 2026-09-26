import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/back_gesture_manager/ds_back_gesture_manager.dart';
import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/components/templates/dynamic_list/controller/ds_dynamic_list_controller.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_dynamic_list_chip.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_view_mode_filter_dynamic_list.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
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
    this.countTextBuilder,
    this.padding,
    this.filterPadding,
    this.useGrid = false,
    this.crossAxisCount = 2,
    this.gridItemWidthBuilder,
    this.shrinkWrap = false,
    this.physics,
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
  final String Function(int count)? countTextBuilder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? filterPadding;
  final bool useGrid;
  final int crossAxisCount;
  final double Function(T item, int index, double maxWidth)?
      gridItemWidthBuilder;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: shrinkWrap ? MainAxisSize.min : MainAxisSize.max,
      children: [
        if (textFilter?.isNotEmpty == true)
          Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Text(
              '$textFilter',
              style: context.texts.titleLarge.copyWith(
                  color: context.colors.sysOnSurface,
                  fontWeight: FontWeight.w700),
            ),
          ),
        if (controller.showSearch) ...[
          SizedBox(height: 16.0),
          Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Semantics(
              label: hintTextSearch,
              hint: hintTextSearch,
              textField: true,
              child: DSTextField.standard(
                hintText: hintTextSearch,
                onChanged: (value) {
                  controller.updateSearch(value, onRemoteSearchChanged);
                },
                prefixIcon: const ExcludeSemantics(
                  excluding: true,
                  child: Icon(
                    Symbols.search,
                  ),
                ),
              ),
            ),
          )
        ],
        if (controller.showFilters)
          Padding(
            padding: (filterPadding ?? EdgeInsets.zero).add(
              const EdgeInsets.only(top: 16),
            ),
            child: _buildFilter(context),
          ),
        const SizedBox(height: 16),
        shrinkWrap
            ? _buildListArea(context)
            : Expanded(child: _buildListArea(context)),
      ],
    );
  }

  Widget _buildListArea(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      final items = controller.filteredItems;

      if (items.isEmpty) {
        return Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Center(
            child: Semantics(
              label: emptyMessage,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
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
          ),
        );
      }

      final String countText = countTextBuilder != null
          ? countTextBuilder!(items.length)
          : Intl.plural(
              items.length,
              zero: emptyMessage,
              one: '1 item encontrado',
              other: '${items.length} itens encontrados',
            );

      final listView = useGrid
          ? SingleChildScrollView(
              padding: shrinkWrap
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(bottom: 32),
              physics: physics,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  const spacing = 12.0;
                  return Wrap(
                    spacing: spacing,
                    runSpacing: spacing,
                    children: items.asMap().entries.map((entry) {
                      double itemWidth;
                      if (gridItemWidthBuilder != null) {
                        itemWidth = gridItemWidthBuilder!(
                            entry.value, entry.key, constraints.maxWidth);
                      } else {
                        itemWidth = (constraints.maxWidth -
                                (spacing * (crossAxisCount - 1))) /
                            crossAxisCount;
                      }
                      itemWidth = itemWidth - 0.01;
                      return SizedBox(
                        width: itemWidth,
                        child: Semantics(
                          label: 'Item ${entry.key + 1} de ${items.length}',
                          child: itemBuilder(context, entry.value, entry.key),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            )
          : ListView.builder(
              shrinkWrap: shrinkWrap,
              physics: physics,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Semantics(
                  label: 'Item ${index + 1} de ${items.length}',
                  child: itemBuilder(context, item, index),
                );
              },
            );

      return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Column(
          mainAxisSize: shrinkWrap ? MainAxisSize.min : MainAxisSize.max,
          children: [
            if (controller.showCountList)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    const ExcludeSemantics(
                      excluding: true,
                      child: Icon(
                        Symbols.check_circle_filled,
                        size: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Semantics(
                        label: countText,
                        child: ExcludeSemantics(
                          excluding: true,
                          child: Text(
                            countText,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            shrinkWrap ? listView : Expanded(child: listView),
          ],
        ),
      );
    });
  }

  Widget _buildFilter(BuildContext context) {
    switch (controller.viewMode) {
      case DSViewModeFilterDynamicList.chips:
        return Obx(
          () => _buildChipFilters(context),
        );
      case DSViewModeFilterDynamicList.tabs:
        return _buildTabFilters();
    }
  }

  Widget _buildChipFilters(BuildContext context) {
    return DSBackGestureBlocker(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: DSChip.filter(
                label: DSText(
                  'Todos',
                  style: TextStyle(
                    color: context.colors.sysOnPrimaryContainer,
                  ),
                ),
                background: controller.selectedFilter.value == null
                    ? context.colors.sysPrimaryContainer
                    : context.colors.sysSurface,
                selected: controller.selectedFilter.value == null,
                onSelected: (_) =>
                    controller.selectFilter(null, onRemoteFilterSelected),
              ),
            ),
            ...controller.filters.map((filter) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: DSChip.filter(
                  label: DSText(
                    filter.label,
                    style: TextStyle(
                      color: context.colors.sysOnPrimaryContainer,
                    ),
                  ),
                  background:
                      filter.backgroundColor ?? context.colors.sysSurface,
                  filterSelectedColor: filter.selectedColor,
                  selected: controller.selectedFilter.value == filter,
                  onSelected: (_) => controller.selectFilter(
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
    return DSBackGestureBlocker(
      child: DefaultTabController(
        length: controller.filters.length + 1,
        child: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: [
            Tab(
              child: Semantics(
                label: 'Filtro por: Todos',
                child: const Text('Todos'),
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
        ),
      ),
    );
  }
}
