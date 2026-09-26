import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/select/ds_select.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSPaginatorVariant {
  desktop,
  mobile,
  mobileCompact,
}

/// A Design System Paginator widget.
class DSPaginator extends StatelessWidget {
  const DSPaginator.desktop({
    super.key,
    required this.totalItems,
    required this.currentPage,
    required this.rowsPerPage,
    required this.onPageChanged,
    required this.onRowsPerPageChanged,
    this.rowsPerPageOptions = const [25, 50, 75, 100],
    this.labels = const DSPaginatorLabels(),
  }) : _variant = DSPaginatorVariant.desktop;

  const DSPaginator.mobile({
    super.key,
    required this.totalItems,
    required this.currentPage,
    required this.rowsPerPage,
    required this.onPageChanged,
    required this.onRowsPerPageChanged,
    this.rowsPerPageOptions = const [25, 50, 75, 100],
    this.labels = const DSPaginatorLabels(),
  }) : _variant = DSPaginatorVariant.mobile;

  const DSPaginator.mobileCompact({
    super.key,
    required this.totalItems,
    required this.currentPage,
    required this.rowsPerPage,
    required this.onPageChanged,
    this.onRowsPerPageChanged,
    this.rowsPerPageOptions = const [],
    this.labels = const DSPaginatorLabels(),
  }) : _variant = DSPaginatorVariant.mobileCompact;

  final DSPaginatorVariant _variant;
  final int totalItems;
  final int currentPage;
  final int rowsPerPage;
  final List<int> rowsPerPageOptions;
  final ValueChanged<int> onPageChanged;
  final ValueChanged<int>? onRowsPerPageChanged;
  final DSPaginatorLabels labels;

  int get _totalPages => (totalItems / rowsPerPage).ceil();
  bool get _canGoFirst => currentPage > 1;
  bool get _canGoPrev => currentPage > 1;
  bool get _canGoNext => currentPage < _totalPages;
  bool get _canGoLast => currentPage < _totalPages;

  @override
  Widget build(BuildContext context) {
    switch (_variant) {
      case DSPaginatorVariant.desktop:
        return _buildDesktopLayout(context);
      case DSPaginatorVariant.mobile:
        return _buildMobileLayout(context);
      case DSPaginatorVariant.mobileCompact:
        return _buildMobileCompactLayout(context);
    }
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (onRowsPerPageChanged != null) ...[
              Text(
                labels.rowsPerPage,
                style: context.texts.bodyLarge.copyWith(
                  color: context.colors.sysOnSurface,
                ),
              ),
              const SizedBox(width: 8),
              _buildRowsPerPageSelector(context),
              const SizedBox(width: 16),
            ],
            _buildRangeText(context),
            const SizedBox(width: 8),
            _buildNavigationArrows(context),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.center,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 8,
            children: [
              Text(
                labels.rowsPerPage,
                style: context.texts.bodyLarge.copyWith(
                  color: context.colors.sysOnSurface,
                ),
              ),
              _buildRowsPerPageSelector(context),
              _buildRangeText(context),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.center,
          child: _buildNavigationArrows(context),
        ),
      ],
    );
  }

  Widget _buildMobileCompactLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildNavigationArrows(context),
      ],
    );
  }

  // --- Components ---

  Widget _buildRowsPerPageSelector(BuildContext context) {
    final entries = rowsPerPageOptions.map((val) {
      return DSSelectEntry<int>(value: val, label: val.toString());
    }).toList();

    return SizedBox(
      width: 90,
      child: DSSelect<int>.single(
        entries: entries,
        value: rowsPerPage,
        onChanged: (val) {
          if (val != null) onRowsPerPageChanged?.call(val);
        },
        allowClear: false,
        hintText: '',
        textStyle: context.texts.titleMedium.copyWith(
          color: context.colors.sysOnSurface,
        ),
      ),
    );
  }

  Widget _buildRangeText(BuildContext context) {
    final int start =
        totalItems == 0 ? 0 : ((currentPage - 1) * rowsPerPage) + 1;
    final int end = (currentPage * rowsPerPage).clamp(0, totalItems);

    return Text(
      '$start-$end ${labels.of} $totalItems',
      style: context.texts.bodyLarge.copyWith(
        color: context.colors.sysOnSurface,
      ),
    );
  }

  Widget _buildNavigationArrows(BuildContext context) {
    final color = context.colors.sysOnSurfaceVariant;
    final disabledColor = color.withValues(alpha: 0.38);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: DSIcon.small(icon: Icons.first_page),
          color: _canGoFirst ? color : disabledColor,
          onPressed: _canGoFirst ? () => onPageChanged(1) : null,
          tooltip: labels.firstPage,
        ),
        SizedBox(width: 24),
        IconButton(
          icon: DSIcon.small(icon: Icons.chevron_left),
          color: _canGoPrev ? color : disabledColor,
          onPressed: _canGoPrev ? () => onPageChanged(currentPage - 1) : null,
          tooltip: labels.prevPage,
        ),
        SizedBox(width: 24),
        IconButton(
          icon: DSIcon.small(icon: Icons.chevron_right),
          color: _canGoNext ? color : disabledColor,
          onPressed: _canGoNext ? () => onPageChanged(currentPage + 1) : null,
          tooltip: labels.nextPage,
        ),
        SizedBox(width: 24),
        IconButton(
          icon: DSIcon.small(icon: Icons.last_page),
          color: _canGoLast ? color : disabledColor,
          onPressed: _canGoLast ? () => onPageChanged(_totalPages) : null,
          tooltip: labels.lastPage,
        ),
      ],
    );
  }
}

/// Localization labels for [DSPaginator].
class DSPaginatorLabels {
  const DSPaginatorLabels({
    this.rowsPerPage = 'Resultados por página',
    this.of = 'de',
    this.firstPage = 'Primeira página',
    this.prevPage = 'Página anterior',
    this.nextPage = 'Próxima página',
    this.lastPage = 'Última página',
  });

  final String rowsPerPage;
  final String of;
  final String firstPage;
  final String prevPage;
  final String nextPage;
  final String lastPage;
}
