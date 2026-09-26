import 'package:design_system/core/components/molecules/paginator/ds_paginator.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class PaginatorExample extends StatefulWidget {
  const PaginatorExample({super.key});

  @override
  State<PaginatorExample> createState() => _PaginatorExampleState();
}

class _PaginatorExampleState extends State<PaginatorExample> {
  int _currentPage = 1;
  int _rowsPerPage = 10;
  final int _totalItems = 125;

  @override
  Widget build(BuildContext context) {
    // Knobs
    final variant = context.knobs.options(
      label: 'Variant',
      initial: DSPaginatorVariant.desktop,
      options: [
        const Option(label: 'Desktop', value: DSPaginatorVariant.desktop),
        const Option(
            label: 'Mobile (2 lines)', value: DSPaginatorVariant.mobile),
        const Option(
            label: 'Mobile Compact', value: DSPaginatorVariant.mobileCompact),
      ],
    );

    return DSScaffold(
      appBar: AppBar(title: const Text('DSPaginator')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                    color: context.colors.sysOutline.withValues(alpha: 0.2)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: _buildInteractivePaginator(variant),
            ),

            const SizedBox(height: 16),
            Text(
              'Current Page: $_currentPage | Rows: $_rowsPerPage | Total: $_totalItems',
              style: context.texts.bodySmall
                  .copyWith(color: context.colors.sysOnSurfaceVariant),
            ),

            const SizedBox(height: 64),
            const Divider(thickness: 2),
            const SizedBox(height: 32),

            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 24),

            // 1. Desktop
            Text('1. Desktop Variant', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSPaginator.desktop(
              totalItems: 100,
              currentPage: 1,
              rowsPerPage: 10,
              onPageChanged: (page) {},
              onRowsPerPageChanged: (rows) {},
            ),

            const SizedBox(height: 32),

            // 2. Mobile
            Text('2. Mobile Variant (Two Lines)',
                style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSPaginator.mobile(
              totalItems: 100,
              currentPage: 2,
              rowsPerPage: 20,
              onPageChanged: (page) {},
              onRowsPerPageChanged: (rows) {},
            ),

            const SizedBox(height: 32),

            // 3. Mobile Compact
            Text('3. Mobile Compact (Arrows Only)',
                style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSPaginator.mobileCompact(
              totalItems: 100,
              currentPage: 10,
              rowsPerPage: 10,
              onPageChanged: (page) {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInteractivePaginator(DSPaginatorVariant variant) {
    switch (variant) {
      case DSPaginatorVariant.desktop:
        return DSPaginator.desktop(
          totalItems: _totalItems,
          currentPage: _currentPage,
          rowsPerPage: _rowsPerPage,
          onPageChanged: (p) => setState(() => _currentPage = p),
          onRowsPerPageChanged: (r) => setState(() {
            _rowsPerPage = r;
            _currentPage = 1;
          }),
        );
      case DSPaginatorVariant.mobile:
        return DSPaginator.mobile(
          totalItems: _totalItems,
          currentPage: _currentPage,
          rowsPerPage: _rowsPerPage,
          onPageChanged: (p) => setState(() => _currentPage = p),
          onRowsPerPageChanged: (r) => setState(() {
            _rowsPerPage = r;
            _currentPage = 1;
          }),
        );
      case DSPaginatorVariant.mobileCompact:
        return DSPaginator.mobileCompact(
          totalItems: _totalItems,
          currentPage: _currentPage,
          rowsPerPage: _rowsPerPage,
          onPageChanged: (p) => setState(() => _currentPage = p),
        );
    }
  }
}
