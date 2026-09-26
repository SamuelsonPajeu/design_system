import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum _DSProgressIndicatorType { linear, circular }

/// A Material Design progress indicator tailored for the Design System.
///
/// Shows progress along a line or a circle.
///
/// This wrapper ensures that the [ProgressIndicator] adheres to the application's
/// theme tokens defined in [ThemeExtensions].
class DSProgressIndicator extends StatelessWidget {
  /// Creates a linear progress indicator.
  const DSProgressIndicator.linear({
    super.key,
    this.value,
    this.backgroundColor,
    this.color,
    this.valueColor,
    this.minHeight,
    this.semanticsLabel,
    this.semanticsValue,
    this.borderRadius,
    this.stopIndicatorColor,
    this.stopIndicatorRadius,
    this.trackGap,
  })  : _type = _DSProgressIndicatorType.linear,
        strokeWidth = null,
        strokeAlign = null,
        strokeCap = null,
        constraints = null,
        padding = null;

  /// Creates a circular progress indicator.
  const DSProgressIndicator.circular({
    super.key,
    this.value,
    this.backgroundColor,
    this.color,
    this.valueColor,
    this.strokeWidth,
    this.strokeAlign,
    this.semanticsLabel,
    this.semanticsValue,
    this.strokeCap,
    this.constraints,
    this.trackGap,
    this.padding,
  })  : _type = _DSProgressIndicatorType.circular,
        minHeight = null,
        borderRadius = null,
        stopIndicatorColor = null,
        stopIndicatorRadius = null;

  final _DSProgressIndicatorType _type;

  // Common properties
  final double? value;
  final Color? backgroundColor;
  final Color? color;
  final Animation<Color?>? valueColor;
  final String? semanticsLabel;
  final String? semanticsValue;
  final double? trackGap;

  // Linear specific properties
  final double? minHeight;
  final BorderRadiusGeometry? borderRadius;
  final Color? stopIndicatorColor;
  final double? stopIndicatorRadius;

  // Circular specific properties
  final double? strokeWidth;
  final double? strokeAlign;
  final StrokeCap? strokeCap;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final defaultColor = context.colors.sysPrimary;
    final defaultBackgroundColor = context.colors.sysPrimaryContainer;

    return ProgressIndicatorTheme(
      data: ProgressIndicatorTheme.of(context).copyWith(
        year2023: false,
      ),
      child: Builder(
        builder: (context) {
          switch (_type) {
            case _DSProgressIndicatorType.linear:
              return LinearProgressIndicator(
                value: value,
                backgroundColor: backgroundColor ?? defaultBackgroundColor,
                color: color ?? defaultColor,
                valueColor: valueColor,
                minHeight: minHeight,
                semanticsLabel: semanticsLabel,
                semanticsValue: semanticsValue,
                borderRadius: borderRadius ?? BorderRadius.circular(4.0),
                stopIndicatorColor: stopIndicatorColor,
                stopIndicatorRadius: stopIndicatorRadius,
                trackGap: trackGap,
              );
            case _DSProgressIndicatorType.circular:
              return CircularProgressIndicator(
                value: value,
                backgroundColor: backgroundColor ?? defaultBackgroundColor,
                color: color ?? defaultColor,
                valueColor: valueColor,
                strokeWidth: strokeWidth ?? 4.0,
                strokeAlign: strokeAlign,
                semanticsLabel: semanticsLabel,
                semanticsValue: semanticsValue,
                strokeCap: strokeCap ?? StrokeCap.round,
                constraints: constraints,
                trackGap: trackGap,
                padding: padding,
              );
          }
        },
      ),
    );
  }
}
