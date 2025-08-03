import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:flutter/material.dart';

class DSStepperModel {
  final String title;
  final String subTitle;
  final Widget? widget;

  DSStepperModel({
    required this.title,
    required this.subTitle,
    this.widget,
  });
}

class DSStepper extends StatelessWidget {
  const DSStepper(
      {super.key,
      required this.steps,
      this.type = StepperType.vertical,
      required this.index,
      this.buttonCancel,
      this.buttonContinue,
      this.onTap,
      this.scrollController,
      this.controlsWidgetBuilder,
      this.margin,
      this.stepIconBuilder,
      this.stepIconHeight,
      this.stepIconWidth,
      this.stepIconMargin});

  final List<DSStepperModel> steps;
  final StepperType type;
  final int index;
  final VoidCallback? buttonCancel;
  final VoidCallback? buttonContinue;
  final Function(int)? onTap;
  final ScrollController? scrollController;
  final ControlsWidgetBuilder? controlsWidgetBuilder;
  final EdgeInsetsGeometry? margin;
  final Widget? Function(int, StepState)? stepIconBuilder;
  final EdgeInsets? stepIconMargin;
  final double? stepIconWidth;
  final double? stepIconHeight;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: type,
      currentStep: index,
      onStepCancel: buttonCancel,
      onStepContinue: buttonCancel,
      onStepTapped: onTap,
      controller: scrollController,
      controlsBuilder: controlsWidgetBuilder,
      margin: margin,
      stepIconBuilder: stepIconBuilder,
      stepIconHeight: stepIconHeight,
      stepIconMargin: stepIconMargin,
      stepIconWidth: stepIconWidth,
      steps: steps.map((DSStepperModel element) {
        return Step(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSText(
                  element.title,
                  maxLines: 1,
                  maxFontSize: 14,
                ),
                const SizedBox(
                  height: 5,
                ),
                DSText(
                  element.subTitle,
                  maxLines: 2,
                  maxFontSize: 12,
                )
              ],
            ),
            content: element.widget ?? Container());
      }).toList(),
    );
  }
}
