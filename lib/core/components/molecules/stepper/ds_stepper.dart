import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSStepperButtonAlignment {
  left,
  right,
}

class DSStepperModel {
  final String? title;
  final String? subTitle;
  final String? sectionTitle;
  final String? sectionSubTitle;
  final String? description;
  final Widget? child;

  DSStepperModel({
    required this.title,
    this.subTitle,
    this.sectionTitle,
    this.sectionSubTitle,
    this.description,
    this.child,
  });
}

class DSStepper extends StatelessWidget {
  const DSStepper({
    super.key,
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
    this.stepIconMargin,
    this.buttonAlignment = DSStepperButtonAlignment.right,
    this.buttonBorderRadius = 12.0,
  });

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
  final DSStepperButtonAlignment buttonAlignment;
  final double buttonBorderRadius;

  Widget? _buildDefaultStepIconBuilder(
    BuildContext context,
    int stepIndex,
    StepState stepState,
  ) {
    final colors = context.colors;
    final texts = context.texts;

    Color backgroundColor;
    Color textColor;
    Widget icon;
    Border? border;

    switch (stepState) {
      case StepState.indexed:
        // Step futuro (não completado, não ativo)
        // Fundo light gray sólido, número dark gray
        backgroundColor = colors.sysSurfaceContainer;
        textColor = colors.sysOnSurface;
        // backgroundColor = colors.sysPrimary;
        // textColor = colors.sysOnPrimary;
        icon = DSText(
          '${stepIndex + 1}',
          style: texts.labelLarge.copyWith(
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        );
        border = null;
        break;
      case StepState.editing:
        // Step atual (ativo)
        // Fundo sysPrimary (dark teal), número sysOnPrimary (light teal)
        backgroundColor = colors.sysPrimary;
        textColor = colors.sysOnPrimary;
        icon = DSText(
          '${stepIndex + 1}',
          style: texts.labelLarge.copyWith(
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        );
        border = null;
        break;
      case StepState.complete:
        // Step completado
        // Fundo sysPrimary (dark teal), check sysOnPrimary (light teal)
        backgroundColor = colors.sysPrimary;
        textColor = colors.sysOnPrimary;
        icon = Icon(
          Icons.check,
          color: textColor,
          size: 18,
        );
        border = null;
        break;
      case StepState.disabled:
        // Step desabilitado
        backgroundColor = colors.sysSurfaceContainerHighest;
        textColor = colors.sysOnSurface.withValues(alpha: 0.38);
        icon = DSText(
          '${stepIndex + 1}',
          style: texts.labelLarge.copyWith(
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        );
        border = null;
        break;
      case StepState.error:
        // Step com erro
        backgroundColor = colors.sysError;
        textColor = colors.sysOnError;
        icon = Icon(
          Icons.error,
          color: textColor,
          size: 18,
        );
        border = null;
        break;
    }

    return Container(
      width: stepIconWidth ?? 24,
      height: stepIconHeight ?? 24,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: border,
      ),
      child: Center(child: icon),
    );
  }

  ControlsWidgetBuilder _buildDefaultControlsBuilder(BuildContext context) {
    return (context, details) {
      final colors = context.colors;
      final texts = context.texts;

      final cancelButton = OutlinedButton(
        onPressed: details.onStepCancel,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonBorderRadius),
          ),
          side: BorderSide(
            color: colors.sysOutline,
            width: 1,
          ),
        ),
        child: DSText(
          'Cancel',
          style: texts.labelLarge.copyWith(
            color: colors.sysPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
      );

      final continueButton = FilledButton(
        onPressed: details.onStepContinue,
        style: FilledButton.styleFrom(
          backgroundColor: colors.sysPrimary,
          foregroundColor: colors.sysOnPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonBorderRadius),
          ),
        ),
        child: DSText(
          'Continue',
          style: texts.labelLarge.copyWith(
            color: colors.sysOnPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
      );

      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: buttonAlignment == DSStepperButtonAlignment.right
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            if (details.stepIndex > 0) ...[
              cancelButton,
              const SizedBox(width: 8),
            ],
            continueButton,
          ],
        ),
      );
    };
  }

  Widget _buildDefaultStepHeader(BuildContext context, DSStepperModel element) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        DSText(
          element.title ?? '',
          maxLines: 1,
          style: context.texts.bodyLarge.copyWith(
            fontWeight: FontWeight.w400,
            color: context.colors.sysOnSurface,
          ),
        ),
        if (element.subTitle != null) ...[
          const SizedBox(
            height: 5,
          ),
          DSText(
            element.subTitle ?? '',
            maxLines: 2,
            maxFontSize: 12,
            style: context.texts.bodySmall.copyWith(
              fontWeight: FontWeight.w400,
              color: context.colors.sysOnSurfaceVariant,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildDefaultStepContent(
      BuildContext context, DSStepperModel element) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (element.sectionTitle != null) ...[
          const SizedBox(
            height: 16,
          ),
          DSText(
            element.sectionTitle ?? '',
            style: context.texts.titleMedium.copyWith(
              fontWeight: FontWeight.w700,
              color: context.colors.sysOnSurface,
            ),
          ),
        ],
        if (element.sectionSubTitle != null) ...[
          const SizedBox(
            height: 16,
          ),
          DSText(
            element.sectionSubTitle ?? '',
            style: context.texts.titleSmall.copyWith(
              fontWeight: FontWeight.w700,
              color: context.colors.sysOnSurfaceVariant,
            ),
          ),
        ],
        if (element.description != null) ...[
          const SizedBox(
            height: 16,
          ),
          DSText(
            element.description ?? '',
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            autoSize: false,
            style: context.texts.bodySmall.copyWith(
              fontWeight: FontWeight.w400,
              color: context.colors.sysOnSurfaceVariant,
            ),
          )
        ],
        if (element.child != null) ...[
          const SizedBox(
            height: 16,
          ),
          element.child!,
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: type,
      currentStep: index,
      onStepCancel: buttonCancel,
      onStepContinue: buttonContinue,
      onStepTapped: onTap,
      controller: scrollController,
      controlsBuilder:
          controlsWidgetBuilder ?? _buildDefaultControlsBuilder(context),
      margin: margin,
      stepIconBuilder: stepIconBuilder ??
          (stepIndex, stepState) =>
              _buildDefaultStepIconBuilder(context, stepIndex, stepState),
      stepIconHeight: stepIconHeight,
      stepIconMargin: stepIconMargin,
      stepIconWidth: stepIconWidth,
      steps: steps.asMap().entries.map((entry) {
        final stepIndex = entry.key;
        final element = entry.value;

        // Calcula o estado do step baseado na posição relativa ao currentStep
        final StepState stepState;
        if (stepIndex < index) {
          // Step já foi completado
          stepState = StepState.complete;
        } else if (stepIndex == index) {
          // Step atual (ativo)
          stepState = StepState.editing;
        } else {
          // Step futuro (não completado, não ativo)
          stepState = StepState.indexed;
        }

        return Step(
          title: _buildDefaultStepHeader(context, element),
          content: _buildDefaultStepContent(context, element),
          state: stepState,
          isActive: stepIndex == index,
        );
      }).toList(),
    );
  }
}
