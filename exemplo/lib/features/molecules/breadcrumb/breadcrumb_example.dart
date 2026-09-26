import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/molecules/breadcrumb/ds_breadcrumb.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class BreadcrumbExample extends StatefulWidget {
  const BreadcrumbExample({super.key});

  @override
  State<BreadcrumbExample> createState() => _BreadcrumbExampleState();
}

class _BreadcrumbExampleState extends State<BreadcrumbExample> {
  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final type = context.knobs.options(
      label: 'Type',
      initial: DSBreadcrumbType.iconAndText,
      options: [
        const Option(label: 'Icon + Text', value: DSBreadcrumbType.iconAndText),
        const Option(label: 'Text Only', value: DSBreadcrumbType.textOnly),
        const Option(label: 'Icon Only', value: DSBreadcrumbType.iconOnly),
      ],
    );

    final overflow = context.knobs.options(
      label: 'Overflow Behavior',
      initial: DSBreadcrumbOverflow.none,
      options: [
        const Option(label: 'None (Wrap)', value: DSBreadcrumbOverflow.none),
        const Option(label: 'Left (...)', value: DSBreadcrumbOverflow.left),
        const Option(label: 'Middle (...)', value: DSBreadcrumbOverflow.middle),
        const Option(label: 'Right (...)', value: DSBreadcrumbOverflow.right),
      ],
    );

    final itemCount = context.knobs.sliderInt(
        label: 'Item Count', initial: 5, min: 1, max: 10, divisions: 9);

    final maxVisible = context.knobs.sliderInt(
        label: 'Max Visible (for Overflow)',
        initial: 3,
        min: 2,
        max: 5,
        divisions: 4);

    final items = List.generate(itemCount, (index) {
      final isLast = index == itemCount - 1;
      return DSBreadcrumbItem(
        label: isLast ? 'Page' : (index == 0 ? 'Home' : 'Section $index'),
        icon: index == 0
            ? Icons.home
            : (isLast ? Icons.description : Icons.folder),
        onTap: isLast ? null : () {},
      );
    });

    return DSScaffold(
      appBar: AppBar(title: const Text('DSBreadcrumb')),
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
                border: Border.all(color: context.colors.sysOutline),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DSBreadcrumb(
                items: items,
                type: type,
                overflow: overflow,
                maxVisibleItems: maxVisible,
              ),
            ),
            const SizedBox(height: 64),
            const DSDivider(thickness: 2),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 24),
            // Row 1: Types
            Text('Variants', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            _buildVariantRow(
                context, 'Icon + Text', DSBreadcrumbType.iconAndText),
            const SizedBox(height: 16),
            _buildVariantRow(context, 'Text Only', DSBreadcrumbType.textOnly),
            const SizedBox(height: 16),
            _buildVariantRow(context, 'Icon Only', DSBreadcrumbType.iconOnly),
            const SizedBox(height: 32),
            // Row 2: Overflow
            Text('Overflow Behavior (Max 3 Items)',
                style: context.texts.titleMedium),
            const SizedBox(height: 16),
            _buildOverflowRow(
                context, 'Left Overflow', DSBreadcrumbOverflow.left),
            const SizedBox(height: 16),
            _buildOverflowRow(
                context, 'Middle Overflow', DSBreadcrumbOverflow.middle),
            const SizedBox(height: 16),
            _buildOverflowRow(
                context, 'Right Overflow', DSBreadcrumbOverflow.right),
          ],
        ),
      ),
    );
  }

  Widget _buildVariantRow(
      BuildContext context, String label, DSBreadcrumbType type) {
    final items = [
      DSBreadcrumbItem(label: 'Home', icon: Icons.home, onTap: () {}),
      DSBreadcrumbItem(
          label: 'Agenda', icon: Icons.calendar_today, onTap: () {}),
      DSBreadcrumbItem(label: 'Page', icon: Icons.content_cut),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: context.texts.labelMedium
                .copyWith(color: context.colors.sysOnSurfaceVariant)),
        const SizedBox(height: 8),
        DSBreadcrumb(items: items, type: type),
      ],
    );
  }

  Widget _buildOverflowRow(
      BuildContext context, String label, DSBreadcrumbOverflow overflow) {
    final items = [
      DSBreadcrumbItem(label: 'Home', icon: Icons.home, onTap: () {}),
      DSBreadcrumbItem(label: 'Section 1', icon: Icons.folder, onTap: () {}),
      DSBreadcrumbItem(label: 'Section 2', icon: Icons.folder, onTap: () {}),
      DSBreadcrumbItem(
          label: 'Agenda', icon: Icons.calendar_today, onTap: () {}),
      DSBreadcrumbItem(label: 'Page', icon: Icons.content_cut),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: context.texts.labelMedium
                .copyWith(color: context.colors.sysOnSurfaceVariant)),
        const SizedBox(height: 8),
        DSBreadcrumb(
          items: items,
          type: DSBreadcrumbType.iconAndText,
          overflow: overflow,
          maxVisibleItems: 3,
        ),
      ],
    );
  }
}
