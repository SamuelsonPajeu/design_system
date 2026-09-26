import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Material Design range slider tailored for the Design System.
///
/// Used to select a range of values.
///
/// This wrapper ensures that the [RangeSlider] adheres to the application's
/// theme tokens defined in [ThemeExtensions] and enforces the modern Material 3
/// appearance.
class DSRangeSlider extends StatelessWidget {
  const DSRangeSlider(
      {super.key,
      required this.values,
      required this.onChanged,
      this.onChangeStart,
      this.onChangeEnd,
      this.min = 0.0,
      this.max = 1.0,
      this.divisions,
      this.labels,
      this.activeColor,
      this.inactiveColor,
      this.overlayColor,
      this.mouseCursor,
      this.semanticFormatterCallback,
      this.showValueIndicator});

  final RangeValues values;
  final ValueChanged<RangeValues>? onChanged;
  final ValueChanged<RangeValues>? onChangeStart;
  final ValueChanged<RangeValues>? onChangeEnd;
  final double min;
  final double max;
  final int? divisions;
  final RangeLabels? labels;
  final Color? activeColor;
  final Color? inactiveColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final MouseCursor? mouseCursor;
  final SemanticFormatterCallback? semanticFormatterCallback;
  final ShowValueIndicator? showValueIndicator;

  @override
  Widget build(BuildContext context) {
    final defaultActiveColor = context.colors.sysPrimary;
    final defaultInactiveColor = context.colors.sysPrimaryContainer;

    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        showValueIndicator: showValueIndicator ?? ShowValueIndicator.onDrag,
        year2023: false,
        activeTrackColor: activeColor ?? defaultActiveColor,
        inactiveTrackColor: inactiveColor ?? defaultInactiveColor,
        thumbColor: activeColor ?? defaultActiveColor,
        overlayColor: overlayColor?.resolve({}) ??
            (activeColor ?? defaultActiveColor).withValues(alpha: 0.12),
      ),
      child: RangeSlider(
        values: values,
        onChanged: onChanged,
        onChangeStart: onChangeStart,
        onChangeEnd: onChangeEnd,
        min: min,
        max: max,
        divisions: divisions,
        labels: labels,
        activeColor: activeColor ?? defaultActiveColor,
        inactiveColor: inactiveColor ?? defaultInactiveColor,
        overlayColor: overlayColor,
        mouseCursor:
            mouseCursor != null ? WidgetStateProperty.all(mouseCursor) : null,
        semanticFormatterCallback: semanticFormatterCallback,
      ),
    );
  }
}
