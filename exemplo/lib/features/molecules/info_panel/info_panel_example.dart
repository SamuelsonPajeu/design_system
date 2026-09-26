import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/molecules/info_panel/ds_info_panel.dart';
import 'package:design_system/core/components/molecules/top_app_bar/ds_top_app_bar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class InfoPanelExample extends StatefulWidget {
  const InfoPanelExample({super.key});

  @override
  State<InfoPanelExample> createState() => _InfoPanelExampleState();
}

class _InfoPanelExampleState extends State<InfoPanelExample> {
  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final isExpanded = context.knobs.boolean(
      label: 'Expanded Mode',
      initial: false,
    );

    final type = context.knobs.options(
      label: 'Type',
      initial: DSInfoPanelType.primary,
      options: [
        const Option(label: 'Primary', value: DSInfoPanelType.primary),
        const Option(label: 'Error', value: DSInfoPanelType.error),
        const Option(label: 'Warning', value: DSInfoPanelType.warning),
        const Option(label: 'Success', value: DSInfoPanelType.success),
      ],
    );

    final showCloseButton = context.knobs.boolean(
      label: 'Show Close Button (X)',
      initial: true,
    );

    final actionLabel = context.knobs.text(
      label: 'Action Label (Optional)',
      initial: 'Dismiss',
    );

    final durationSeconds = context.knobs.sliderInt(
      label: 'Duration (seconds)',
      initial: 5,
      min: 1,
      max: 10,
      divisions: 9,
    );

    final primaryText = context.knobs.text(
      label: 'Primary Text',
      initial: 'This is an information message.',
    );

    final titleText = context.knobs.text(
      label: 'Title (Expanded)',
      initial: 'Important Notice',
    );

    final secondaryText = context.knobs.text(
      label: 'Secondary Text (Expanded)',
      initial: 'Additional details about this alert can be placed here.',
    );

    return DSScaffold(
      appBar: DSTopAppBar.centered(title: 'Info Panel'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 16),
            Text(
              'Use the knobs to customize the panel below, then click the button to show it. The overlay auto-dismisses based on the duration knob.',
              style: context.texts.bodyMedium
                  .copyWith(color: context.colors.sysOnSurfaceVariant),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final DSInfoPanel panel = isExpanded
                      ? DSInfoPanel.expanded(
                          type: type,
                          title: titleText,
                          text: primaryText,
                          secondaryText:
                              secondaryText.isNotEmpty ? secondaryText : null,
                          duration: Duration(seconds: durationSeconds),
                          actionLabel:
                              actionLabel.isNotEmpty ? actionLabel : null,
                          onActionTap: actionLabel.isNotEmpty
                              ? () => debugPrint("Action Tapped")
                              : null,
                          showCloseButton: showCloseButton,
                          onCloseTap: () => debugPrint("Close X Tapped"),
                        )
                      : DSInfoPanel.standard(
                          type: type,
                          text: primaryText,
                          duration: Duration(seconds: durationSeconds),
                          actionLabel:
                              actionLabel.isNotEmpty ? actionLabel : null,
                          onActionTap: actionLabel.isNotEmpty
                              ? () => debugPrint("Action Tapped")
                              : null,
                          showCloseButton: showCloseButton,
                          onCloseTap: () => debugPrint("Close X Tapped"),
                        );

                  showDSInfoPanel(context, panel);
                },
                child: const Text('Show Animated Info Panel'),
              ),
            ),
            const SizedBox(height: 64),
            const DSDivider(thickness: 2),
            const SizedBox(height: 32),
            Text('Visual Verification (Static)',
                style: context.texts.headlineMedium),
            const SizedBox(height: 24),
            Text('Standard Variants', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            const DSInfoPanel.standard(
              type: DSInfoPanelType.primary,
              text: 'Primary: No buttons.',
            ),
            const SizedBox(height: 16),
            DSInfoPanel.standard(
              type: DSInfoPanelType.error,
              text: 'Error: With Action only.',
              actionLabel: 'Retry',
              onActionTap: () {},
            ),
            const SizedBox(height: 16),
            DSInfoPanel.standard(
              type: DSInfoPanelType.warning,
              text: 'Warning: With Close Icon only.',
              showCloseButton: true,
              onCloseTap: () {},
            ),
            const SizedBox(height: 16),
            DSInfoPanel.standard(
              type: DSInfoPanelType.success,
              text: 'Success: With Action & Close.',
              actionLabel: 'View',
              showCloseButton: true,
              onCloseTap: () {},
            ),
            const SizedBox(height: 32),
            Text('Expanded Variants', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            const DSInfoPanel.expanded(
              type: DSInfoPanelType.warning,
              title: 'Warning Alert',
              text:
                  'This is an expanded warning panel. It has a title and a primary message body.',
              secondaryText:
                  'It can also support a secondary text block separated by a divider.',
              showCloseButton: true,
            ),
            const SizedBox(height: 16),
            const DSInfoPanel.expanded(
              type: DSInfoPanelType.success,
              title: 'Success!',
              text: 'Operation completed successfully.',
              actionLabel: 'Undo',
              showCloseButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
