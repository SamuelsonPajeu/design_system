import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/tooltip/ds_tooltip.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final isRich = context.knobs.boolean(
      label: 'Use Rich Variant',
      initial: false,
    );

    final text = context.knobs.text(
      label: 'Message / Content',
      initial: 'This is a helpful tooltip message.',
    );

    final title = context.knobs.text(
      label: 'Rich Title',
      initial: 'Tooltip Title',
    );

    final waitDurationMs = context.knobs.sliderInt(
      label: 'Wait Duration (ms)',
      initial: 0,
      min: 0,
      max: 2000,
    );

    final showDurationMs = context.knobs.sliderInt(
      label: 'Show Duration (ms)',
      description: 'Time visible after long-press release (Mobile).',
      initial: 1500,
      min: 500,
      max: 5000,
    );

    final exitDurationMs = context.knobs.sliderInt(
      label: 'Exit Duration (ms)',
      description: 'Time to disappear after mouse exit (Web/Desktop).',
      initial: 100,
      min: 0,
      max: 2000,
    );

    final enableTapToDismiss = context.knobs.boolean(
      label: 'Enable Tap to Dismiss',
      initial: true,
    );

    final preferBelow = context.knobs.boolean(
      label: 'Prefer Below',
      initial: true,
    );

    final triggerMode = context.knobs.options(
      label: 'Trigger Mode',
      initial: TooltipTriggerMode.longPress,
      options: const [
        Option(label: 'Long Press', value: TooltipTriggerMode.longPress),
        Option(label: 'Tap', value: TooltipTriggerMode.tap),
        Option(label: 'Manual', value: TooltipTriggerMode.manual),
      ],
    );

    return DSScaffold(
      appBar: AppBar(
        title: const DSText('DSTooltip (Wrapper)'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Interactive Demo
            _buildSectionHeader(context, 'Interactive Demo'),
            const Text(
              'Interact with the element below based on the selected Trigger Mode.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Center(
              child: isRich
                  ? DSTooltip.rich(
                      title: title,
                      content: text,
                      waitDuration: Duration(milliseconds: waitDurationMs),
                      showDuration: Duration(milliseconds: showDurationMs),
                      exitDuration: Duration(milliseconds: exitDurationMs),
                      enableTapToDismiss: enableTapToDismiss,
                      preferBelow: preferBelow,
                      triggerMode: triggerMode,
                      actions: [
                        DSButton.text(
                          buttonStyle: ButtonStyle(),
                          onTap: () async {},
                          buttonText: 'Action',
                        ),
                        DSButton.text(
                          buttonStyle: ButtonStyle(),
                          onTap: () async {
                            DSTooltip.dismissAllToolTips();
                          },
                          buttonText: 'Close',
                        ),
                      ],
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: context.colors.sysPrimaryContainer,
                        child: Text(
                          'Rich Tooltip Target',
                          style: TextStyle(
                            color: context.colors.sysOnPrimaryContainer,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : DSTooltip.plain(
                      message: text,
                      waitDuration: Duration(milliseconds: waitDurationMs),
                      showDuration: Duration(milliseconds: showDurationMs),
                      exitDuration: Duration(milliseconds: exitDurationMs),
                      enableTapToDismiss: enableTapToDismiss,
                      preferBelow: preferBelow,
                      triggerMode: triggerMode,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: context.colors.sysSecondaryContainer,
                        child: Text(
                          'Plain Tooltip Target',
                          style: TextStyle(
                            color: context.colors.sysOnSecondaryContainer,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
            ),

            const SizedBox(height: 48),

            // Static Examples
            _buildSectionHeader(context, 'Static Examples (Hover/Press)'),
            Wrap(
              spacing: 32,
              runSpacing: 32,
              children: [
                DSTooltip.plain(
                  message: 'Simple Info',
                  child: const Chip(label: Text('Plain Tooltip')),
                ),
                DSTooltip.plain(
                  message: 'Multi-line\nInformation\nHere',
                  child: const Chip(label: Text('Multi-line Plain')),
                ),
                DSTooltip.rich(
                  title: 'Rich Info',
                  content: 'Detailed description about this specific item.',
                  child: const Chip(label: Text('Rich No Actions')),
                ),
                DSTooltip.rich(
                  title: 'Rich With Actions',
                  content: 'You can perform actions directly from here.',
                  actions: [
                    DSButton.text(
                      buttonStyle: ButtonStyle(),
                      onTap: () async {},
                      buttonText: 'Edit',
                    ),
                  ],
                  child: const Chip(label: Text('Rich With Actions')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: DSText(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
