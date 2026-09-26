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
    double heightFactor = context.knobs
            .sliderInt(
                label: 'Height Factor (%)', initial: 50, min: 20, max: 100)
            .toDouble() /
        100;
    return DSScaffold(
      body: Center(
        child: DSButton(
          onTap: () => DSBottomSheet(
            context,
            dragHandle: dragHandle,
            elevation: 2,
            heightFactor: heightFactor,
            isScrollControlled: true,
            child: Container(),
          ),
          buttonText: 'Abrir BottomSheet',
        ),
      ),
    );
  }
}
