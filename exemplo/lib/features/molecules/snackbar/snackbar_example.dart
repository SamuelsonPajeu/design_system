import 'package:design_system/core/components/molecules/snackbar/ds_snackbar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class SnackbarExample extends StatefulWidget {
  const SnackbarExample({super.key});

  @override
  State<SnackbarExample> createState() => _SnackbarExampleState();
}

class _SnackbarExampleState extends State<SnackbarExample> {
  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final variant = context.knobs.options(
      label: 'Variant',
      initial: 'One Line',
      options: [
        const Option(label: 'One Line', value: 'One Line'),
        const Option(label: 'Two Lines', value: 'Two Lines'),
        const Option(label: 'Expanded', value: 'Expanded'),
      ],
    );

    final type = context.knobs.options(
      label: 'Type',
      initial: DSSnackbarType.defaultType,
      options: [
        const Option(
            label: 'Default (Dark)', value: DSSnackbarType.defaultType),
        const Option(label: 'Error', value: DSSnackbarType.error),
        const Option(label: 'Warning', value: DSSnackbarType.warning),
        const Option(label: 'Success', value: DSSnackbarType.success),
      ],
    );

    final showCloseButton = context.knobs.boolean(
      label: 'Show Close Button (X)',
      initial: true,
    );

    final actionLabel = context.knobs.text(
      label: 'Action Label (Optional)',
      initial: 'Undo',
    );

    final durationSeconds = context.knobs.sliderInt(
      label: 'Duration (seconds)',
      initial: 5,
      min: 1,
      max: 10,
    );

    final text = context.knobs.text(
      label: 'Text',
      initial: 'This is a snackbar message.',
    );

    return DSScaffold(
      appBar: AppBar(title: const Text('Snackbar')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 16),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  final DSSnackbar snackbar;
                  if (variant == 'One Line') {
                    snackbar = DSSnackbar.oneLine(
                      type: type,
                      text: text,
                      actionLabel: actionLabel.isNotEmpty ? actionLabel : null,
                      onActionTap: () {},
                      showCloseButton: showCloseButton,
                      onCloseTap: () {},
                      duration: Duration(seconds: durationSeconds),
                    );
                  } else if (variant == 'Two Lines') {
                    snackbar = DSSnackbar.twoLines(
                      type: type,
                      text: text,
                      actionLabel: actionLabel.isNotEmpty ? actionLabel : null,
                      onActionTap: () {},
                      showCloseButton: showCloseButton,
                      onCloseTap: () {},
                      duration: Duration(seconds: durationSeconds),
                    );
                  } else {
                    snackbar = DSSnackbar.expanded(
                      type: type,
                      text: text,
                      actionLabel: actionLabel.isNotEmpty ? actionLabel : null,
                      onActionTap: () {},
                      showCloseButton: showCloseButton,
                      onCloseTap: () {},
                      duration: Duration(seconds: durationSeconds),
                    );
                  }

                  showDSSnackbar(context, snackbar);
                },
                child: const Text('Show Animated Snackbar'),
              ),
            ),

            const SizedBox(height: 64),
            const Divider(thickness: 2),
            const SizedBox(height: 32),

            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 24),

            // --- 1. One Line Variants ---
            Text('1. One Line (Ellipsis on text after one line)',
                style: context.texts.titleMedium),
            const SizedBox(height: 16),
            const DSSnackbar.oneLine(
              type: DSSnackbarType.defaultType,
              text: 'Default: Text only',
            ),
            const SizedBox(height: 16),
            const DSSnackbar.oneLine(
              type: DSSnackbarType.defaultType,
              text: 'Default: With custom icon',
              icon: Icons.info_outline,
            ),
            const SizedBox(height: 16),
            DSSnackbar.oneLine(
              type: DSSnackbarType.defaultType,
              text: 'Default: With Action',
              actionLabel: 'Action',
              onActionTap: () {},
            ),
            const SizedBox(height: 16),
            DSSnackbar.oneLine(
              type: DSSnackbarType.defaultType,
              text: 'Default: With Close',
              showCloseButton: true,
              onCloseTap: () {},
            ),
            const SizedBox(height: 16),
            DSSnackbar.oneLine(
              type: DSSnackbarType.error,
              text: 'Error: Auto-icon + Action + Close',
              actionLabel: 'Retry',
              showCloseButton: true,
              onActionTap: () {},
              onCloseTap: () {},
            ),
            const SizedBox(height: 32),

            // --- 2. Two Lines Variants ---
            Text('2. Two Lines (Ellipsis on text after two lines)',
                style: context.texts.titleMedium),
            const SizedBox(height: 16),
            const DSSnackbar.twoLines(
              type: DSSnackbarType.defaultType,
              text:
                  'Supporting text that wraps to a second line for demonstration.',
            ),
            const SizedBox(height: 16),
            DSSnackbar.twoLines(
              type: DSSnackbarType.warning,
              text: 'Warning text spanning two lines with auto-icon included.',
              actionLabel: 'Action',
              showCloseButton: true,
              onActionTap: () {},
              onCloseTap: () {},
            ),

            const SizedBox(height: 32),

            // --- 3. Expanded Variants ---
            Text('3. Expanded', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSSnackbar.expanded(
              type: DSSnackbarType.success,
              text:
                  'Success message that is long enough to require an expanded layout to fit buttons comfortably.',
              actionLabel: 'Longer Action',
              showCloseButton: true,
              onActionTap: () {},
              onCloseTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
