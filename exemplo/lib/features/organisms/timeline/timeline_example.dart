import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/organisms/timeline/ds_timeline.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TimelineExample extends StatelessWidget {
  const TimelineExample({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final itemCount = context.knobs
        .sliderInt(
          label: 'Item Count',
          initial: 5,
          min: 0,
          max: 50,
          divisions: 5,
        )
        .toInt();

    final showScrollbars = context.knobs.boolean(
      label: 'Show Scrollbars',
      initial: true,
    );

    return DSScaffold(
      appBar: AppBar(
        title: const DSText('DSTimeline'),
      ),
      body: DSTimeline(
        showScrollbars: showScrollbars,
        padding: const EdgeInsets.all(12),
        items: List.generate(itemCount, (index) {
          return DSTimelineItem(
            icon: DSIcon.extraSmall(
                icon: Icons.access_time, color: context.colors.sysOnSecondary),
            child: _buildCard(context, index),
          );
        }),
      ),
    );
  }

  Widget _buildCard(BuildContext context, int index) {
    final colors = context.colors;
    final texts = context.texts;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.sysSurface,
        border: Border.all(color: colors.sysOutlineVariant),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSText(
            'Title ${index + 1}',
            autoSize: false,
            style: texts.titleMedium.copyWith(color: colors.sysOnSurface),
          ),
          const SizedBox(height: 4),
          DSText(
            'dd/mm/yyyy - 00:00',
            autoSize: false,
            style: texts.bodyMedium.copyWith(color: colors.sysOnSurfaceVariant),
          ),
          const SizedBox(height: 12),
          DSText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              autoSize: false,
              style: texts.bodyMedium.copyWith(color: colors.sysOnSurface)),
        ],
      ),
    );
  }
}
