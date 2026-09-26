import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Material Design slider tailored for the Design System.
///
/// Used to select from a range of values.
///
/// This wrapper ensures that the [Slider] adheres to the application's
/// theme tokens defined in [ThemeExtensions] and enforces the modern Material 3
/// appearance (enabling features like track gaps and updated thumb shapes).
class DSSlider extends StatelessWidget {
  /// Creates a Design System slider.
  const DSSlider(
      {super.key,
      required this.value,
      this.secondaryTrackValue,
      required this.onChanged,
      this.onChangeStart,
      this.onChangeEnd,
      this.min = 0.0,
      this.max = 1.0,
      this.divisions,
      this.label,
      this.activeColor,
      this.inactiveColor,
      this.secondaryActiveColor,
      this.thumbColor,
      this.overlayColor,
      this.mouseCursor,
      this.semanticFormatterCallback,
      this.focusNode,
      this.autofocus = false,
      this.allowedInteraction,
      this.padding,
      this.showValueIndicator});

  final double value;
  final double? secondaryTrackValue;
  final ValueChanged<double>? onChanged;
  final ValueChanged<double>? onChangeStart;
  final ValueChanged<double>? onChangeEnd;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? secondaryActiveColor;
  final Color? thumbColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final MouseCursor? mouseCursor;
  final SemanticFormatterCallback? semanticFormatterCallback;
  final FocusNode? focusNode;
  final bool autofocus;
  final SliderInteraction? allowedInteraction;
  final EdgeInsetsGeometry? padding;
  final ShowValueIndicator? showValueIndicator;

  @override
  Widget build(BuildContext context) {
    final defaultActiveColor = context.colors.sysPrimary;
    final defaultInactiveColor = context.colors.sysPrimaryContainer;

    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        year2023: false,
        showValueIndicator: showValueIndicator ?? ShowValueIndicator.onDrag,
        activeTrackColor: activeColor ?? defaultActiveColor,
        inactiveTrackColor: inactiveColor ?? defaultInactiveColor,
        thumbColor: thumbColor ?? activeColor ?? defaultActiveColor,
        overlayColor: overlayColor?.resolve({}) ??
            (activeColor ?? defaultActiveColor).withValues(alpha: 0.12),
      ),
      child: Slider(
        value: value,
        secondaryTrackValue: secondaryTrackValue,
        onChanged: onChanged,
        onChangeStart: onChangeStart,
        onChangeEnd: onChangeEnd,
        min: min,
        max: max,
        divisions: divisions,
        label: label,
        activeColor: activeColor ?? defaultActiveColor,
        inactiveColor: inactiveColor ?? defaultInactiveColor,
        thumbColor: thumbColor,
        overlayColor: overlayColor,
        mouseCursor: mouseCursor,
        semanticFormatterCallback: semanticFormatterCallback,
        focusNode: focusNode,
        autofocus: autofocus,
        allowedInteraction: allowedInteraction,
        padding: padding,
      ),
    );
  }
}
