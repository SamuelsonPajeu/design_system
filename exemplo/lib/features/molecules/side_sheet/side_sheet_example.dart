import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/side_sheet/ds_side_sheet.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class SideSheetExample extends StatelessWidget {
  const SideSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final title = context.knobs.text(
      label: 'Sheet Title',
      initial: 'Title',
    );

    final variant = context.knobs.options(
      label: 'Variant',
      initial: DSSideSheetVariant.standard,
      options: [
        const Option(label: 'Standard', value: DSSideSheetVariant.standard),
        const Option(label: 'Modal', value: DSSideSheetVariant.modal),
      ],
    );

    final showBack = context.knobs.boolean(
      label: 'Show Back Button',
      initial: false,
    );

    final showClose = context.knobs.boolean(
      label: 'Show Close Button',
      initial: true,
    );

    final showFooter = context.knobs.boolean(
      label: 'Show Footer Actions',
      initial: true,
    );

    final width = context.knobs.slider(
      label: 'Sheet Width',
      initial: 320,
      min: 280,
      max: 600,
    );

    return DSScaffold(
      appBar: AppBar(
        title: const DSText('DSSideSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DSText(
              'Configure the sheet using the knobs,\nthen press the button to open.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: DSButton.elevated(
                onTap: () async {
                  _openSideSheet(
                    context,
                    title: title,
                    variant: variant,
                    showBack: showBack,
                    showClose: showClose,
                    showFooter: showFooter,
                    width: width,
                  );
                },
                buttonText: 'Open Side Sheet',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openSideSheet(
    BuildContext context, {
    required String title,
    required DSSideSheetVariant variant,
    required bool showBack,
    required bool showClose,
    required bool showFooter,
    required double width,
  }) {
    showDSSideSheet(
      context: context,
      builder: (context) {
        return DSSideSheet(
          title: title,
          variant: variant,
          showBackButton: showBack,
          showCloseButton: showClose,
          width: width,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSText(
                'Body Content',
                style: context.texts.titleMedium,
              ),
              const SizedBox(height: 16),
              DSText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: context.texts.bodyMedium,
              ),
              const SizedBox(height: 16),
              ...List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Container(
                    height: 80,
                    color: context.colors.sysSurfaceContainerHigh,
                    alignment: Alignment.center,
                    child: Text('Placeholder Content ${index + 1}'),
                  ),
                ),
              ),
            ],
          ),
          actions: showFooter
              ? [
                  DSButton.filled(
                    onTap: () async => Navigator.of(context).pop(),
                    buttonText: 'Save',
                  ),
                  DSButton.outlined(
                    onTap: () async => Navigator.of(context).pop(),
                    buttonText: 'Cancel',
                  ),
                ]
              : null,
        );
      },
    );
  }
}
