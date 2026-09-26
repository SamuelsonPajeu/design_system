import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/atoms/loading/ds_loading_shimmer.dart';
import 'package:design_system/core/components/molecules/paginator/ds_paginator.dart';
import 'package:design_system/core/components/templates/table/controller/ds_table_controller.dart';
import 'package:design_system/core/components/templates/table/views/ds_table_row.dart';
import 'package:design_system/core/components/templates/table/views/ds_table_row_header.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class _DSTableBodyState {
  final bool isLoading;
  final int dataVersion;

  const _DSTableBodyState({
    required this.isLoading,
    required this.dataVersion,
  });

  @override
  bool operator ==(Object other) {
    return other is _DSTableBodyState &&
        other.isLoading == isLoading &&
        other.dataVersion == dataVersion;
  }

  @override
  int get hashCode => Object.hash(isLoading, dataVersion);
}

class _DSTableFooterState {
  final int itemsPerPage;
  final int currentPage;
  final int totalItems;

  const _DSTableFooterState({
    required this.itemsPerPage,
    required this.currentPage,
    required this.totalItems,
  });

  @override
  bool operator ==(Object other) {
    return other is _DSTableFooterState &&
        other.itemsPerPage == itemsPerPage &&
        other.currentPage == currentPage &&
        other.totalItems == totalItems;
  }

  @override
  int get hashCode => Object.hash(
        itemsPerPage,
        currentPage,
        totalItems,
      );
}

class DSTable<T> extends StatefulWidget {
  final DSTableController<T>? controller;
  final List<T> items;
  final DSTableRowHeader? header;
  final DSTableRow Function(T item, int index) rowBuilder;
  final List<Widget>? toolbarWidgets;
  final bool showHeader;
  final bool showFooter;
  final bool showToolbar;
  final double? maxBodyHeight;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? toolBarPadding;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final DSPaginatorLabels? paginatorLabels;
  final int shimmerRowCount;
  final bool showBorder;

  const DSTable({
    super.key,
    this.controller,
    this.items = const [],
    this.header,
    required this.rowBuilder,
    this.toolbarWidgets,
    this.showHeader = true,
    this.showFooter = true,
    this.showToolbar = true,
    this.maxBodyHeight,
    this.padding,
    this.toolBarPadding,
    this.backgroundColor,
    this.borderRadius,
    this.border,
    this.paginatorLabels,
    this.shimmerRowCount = 5,
    this.showBorder = false,
  });

  @override
  State<DSTable<T>> createState() => _DSTableState<T>();
}

class _DSTableState<T> extends State<DSTable<T>> {
  late DSTableController<T> _internalController;
  bool _useInternalController = false;
  final ScrollController _bodyScrollController = ScrollController();

  DSTableController<T> get _controller =>
      widget.controller ?? _internalController;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _useInternalController = true;
      _internalController = DSTableController<T>(
        items: widget.items,
      );
    }
  }

  @override
  void didUpdateWidget(covariant DSTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_useInternalController && widget.items != oldWidget.items) {
      _internalController.setItems(widget.items);
    }
  }

  @override
  void dispose() {
    if (_useInternalController) {
      _internalController.dispose();
    }
    _bodyScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DSTableController<T>>.value(
      value: _controller,
      child: Builder(
        builder: (context) {
          return _buildTable(context);
        },
      ),
    );
  }

  Widget _buildTable(BuildContext context) {
    final colors = context.colors;

    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? colors.sysSurface,
        borderRadius: widget.showBorder
            ? widget.borderRadius ?? BorderRadius.circular(8)
            : null,
        border: widget.showBorder
            ? (widget.border ?? Border.all(color: colors.sysOutlineVariant))
            : null,
      ),
      child: Padding(
        padding: widget.padding ?? EdgeInsets.all(widget.showBorder ? 16.0 : 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.showToolbar && widget.toolbarWidgets != null) ...[
              _buildToolbar(context),
              SizedBox(height: 16)
            ],
            if (widget.showHeader && widget.header != null)
              _buildHeader(context),
            _buildBody(context),
            if (widget.showFooter) _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final header = widget.header;
    if (header == null) return const SizedBox.shrink();

    if (!header.showCheckbox || header.onCheckboxChanged == null) {
      return header;
    }

    return Selector<DSTableController<T>, bool?>(
      selector: (_, controller) => controller.headerCheckboxValue,
      builder: (context, checkboxValue, _) {
        return DSTableRowHeader(
          key: header.key,
          leading: header.leading,
          cells: header.cells,
          trailing: header.trailing,
          padding: header.padding,
          backgroundColor: header.backgroundColor,
          showDivider: header.showDivider,
          showCheckbox: header.showCheckbox,
          checkboxValue: checkboxValue,
          checkboxTristate: header.checkboxTristate,
          onCheckboxChanged: header.onCheckboxChanged,
        );
      },
    );
  }

  Widget _buildToolbar(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: widget.toolBarPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 48),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    widget.toolbarWidgets!.length,
                    (index) {
                      final child = widget.toolbarWidgets![index];
                      final isLast = index == widget.toolbarWidgets!.length - 1;

                      if (isLast) return child;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          child,
                          const SizedBox(width: 8),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Selector<DSTableController<T>, _DSTableBodyState>(
      selector: (context, controller) => _DSTableBodyState(
        isLoading: controller.isLoading,
        dataVersion: controller.dataVersion,
      ),
      builder: (context, state, _) {
        final controller = context.read<DSTableController<T>>();

        if (state.isLoading) {
          return _buildShimmerLoading(context);
        }

        final currentItems = controller.currentPageItems;
        if (currentItems.isEmpty) {
          return const SizedBox.shrink();
        }

        final hasInternalScroll = widget.maxBodyHeight != null;
        final bodyHeight = hasInternalScroll
            ? _calculateBodyHeight(context, currentItems.length)
            : null;

        final list = ListView.builder(
          primary: hasInternalScroll,
          shrinkWrap: !hasInternalScroll,
          physics: hasInternalScroll
              ? const ClampingScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          itemCount: currentItems.length,
          cacheExtent: 500,
          addRepaintBoundaries: true,
          addAutomaticKeepAlives: false,
          itemBuilder: (context, index) {
            final item = currentItems[index];
            final isLast = index == currentItems.length - 1;

            return Selector<DSTableController<T>, bool>(
              selector: (_, c) => c.isSelected(item),
              builder: (context, _, __) {
                final row = widget.rowBuilder(item, index);

                if (!isLast || !row.showDivider) return row;

                return DSTableRow(
                  key: row.key,
                  leading: row.leading,
                  cells: row.cells,
                  trailing: row.trailing,
                  padding: row.padding,
                  backgroundColor: row.backgroundColor,
                  hoverColor: row.hoverColor,
                  showDivider: false,
                  showCheckbox: row.showCheckbox,
                  checkboxValue: row.checkboxValue,
                  onCheckboxChanged: row.onCheckboxChanged,
                  onTap: row.onTap,
                  onLongPress: row.onLongPress,
                  enabled: row.enabled,
                  selected: row.selected,
                  density: row.density,
                );
              },
            );
          },
        );

        if (!hasInternalScroll) {
          return list;
        }

        return SizedBox(
          height: bodyHeight,
          child: Listener(
            onPointerSignal: (event) {
              if (event is! PointerScrollEvent) return;
              if (!_bodyScrollController.hasClients) return;

              final position = _bodyScrollController.position;
              final nextPixels = (position.pixels + event.scrollDelta.dy)
                  .clamp(position.minScrollExtent, position.maxScrollExtent);
              if (nextPixels == position.pixels) return;

              GestureBinding.instance.pointerSignalResolver.register(
                event,
                (event) {
                  if (!_bodyScrollController.hasClients) return;
                  _bodyScrollController.jumpTo(nextPixels);
                },
              );
            },
            child: PrimaryScrollController(
              controller: _bodyScrollController,
              child: list,
            ),
          ),
        );
      },
    );
  }

  double _calculateBodyHeight(BuildContext context, int itemCount) {
    const estimatedRowExtent = 44.0;
    final estimatedContentHeight = itemCount * estimatedRowExtent;

    final maxBodyHeight = widget.maxBodyHeight;
    if (maxBodyHeight == null) {
      return estimatedContentHeight;
    }

    if (estimatedContentHeight < maxBodyHeight) return estimatedContentHeight;
    return maxBodyHeight;
  }

  Widget _buildShimmerLoading(BuildContext context) {
    final colors = context.colors;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        widget.shimmerRowCount,
        (index) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  DSLoadingShimmer(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: DSLoadingShimmer(
                      height: 16,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: DSLoadingShimmer(
                      height: 16,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: DSLoadingShimmer(
                      height: 16,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DSDivider(
              height: 1,
              thickness: 1,
              color: colors.sysOutlineVariant,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Selector<DSTableController<T>, _DSTableFooterState>(
      selector: (_, controller) => _DSTableFooterState(
        itemsPerPage: controller.itemsPerPage,
        currentPage: controller.currentPage,
        totalItems: controller.totalItems,
      ),
      builder: (context, footerState, _) {
        final controller = context.read<DSTableController<T>>();

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: DSPaginator.desktop(
            totalItems: footerState.totalItems,
            currentPage: footerState.currentPage,
            rowsPerPage: footerState.itemsPerPage,
            rowsPerPageOptions: controller.itemsPerPageOptions,
            labels: widget.paginatorLabels ?? const DSPaginatorLabels(),
            onPageChanged: (page) => controller.goToPage(page),
            onRowsPerPageChanged: (rowsPerPage) =>
                controller.setItemsPerPage(rowsPerPage),
          ),
        );
      },
    );
  }
}
