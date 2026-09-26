import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Material Design divider tailored for the Design System.
///
/// A thin horizontal line, with padding on either side.
///
/// This wrapper ensures that the [Divider] adheres to the application's
/// theme tokens defined in [ThemeExtensions].
class DSDivider extends StatelessWidget {
  /// Creates a Design System divider.
  const DSDivider({
    super.key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.radius,
  });

  /// The divider's height extent.
  final double? height;

  /// The thickness of the line drawn within the divider.
  final double? thickness;

  /// The amount of empty space to the leading edge of the divider.
  final double? indent;

  /// The amount of empty space to the trailing edge of the divider.
  final double? endIndent;

  /// The color to use when painting the line.
  ///
  /// If null, defaults to [context.colors.sysOutlineVariant].
  final Color? color;

  /// The amount of radius for the border of the divider.
  final BorderRadiusGeometry? radius;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color ?? context.colors.sysOutlineVariant,
      radius: radius,
    );
  }
}

/// A Material Design vertical divider tailored for the Design System.
///
/// A thin vertical line, with padding on either side.
class DSVerticalDivider extends StatelessWidget {
  /// Creates a Design System vertical divider.
  const DSVerticalDivider({
    super.key,
    this.width,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.radius,
  });

  /// The divider's width.
  final double? width;

  /// The thickness of the line drawn within the divider.
  final double? thickness;

  /// The amount of empty space on top of the divider.
  final double? indent;

  /// The amount of empty space under the divider.
  final double? endIndent;

  /// The color to use when painting the line.
  ///
  /// If null, defaults to [context.colors.sysOutlineVariant].
  final Color? color;

  /// The amount of radius for the border of the divider.
  final BorderRadiusGeometry? radius;

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      width: width,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color ?? context.colors.sysOutlineVariant,
      radius: radius,
    );
  }
}
