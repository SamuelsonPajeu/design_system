import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/bottom_sheet/ds_bottom_sheet.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    bool dragHandle = context.knobs
        .boolean(label: 'Button close or DragHandle', initial: true);
    return DSScaffold(
      body: Center(
        child: DSButton(
          buttonWidth: 300,
          onTap: () => DSBottomSheet(context,
              dragHandle: dragHandle,
              elevation: 2,
              child: const Center(
                child: DSText('Isso é um BottomSheet'),
              )),
          buttonText: 'Abrir BottomSheet',
        ),
      ),
    );
  }
}
