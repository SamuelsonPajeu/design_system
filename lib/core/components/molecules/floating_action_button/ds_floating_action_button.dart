import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSFloatingActionButtonType {
  regular,
  small,
  large,
  extended,
}

enum DSFloatingActionButtonColor { surface, primary, secondary, tertiary }

class DSFloatingActionButton extends StatelessWidget {
  const DSFloatingActionButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    required this.icon,
    required this.iconColor,
    this.iconSize = 24.0,
    this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
    this.semanticLabel,
    this.elevation,
    this.shape,
  })  : _floatingActionButtonType = DSFloatingActionButtonType.regular,
        _extendedLabel = null,
        extendedPadding = null;

  const DSFloatingActionButton.small({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    required this.icon,
    required this.iconColor,
    this.iconSize = 24.0,
    this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
    this.semanticLabel,
    this.elevation,
    this.shape,
  })  : _floatingActionButtonType = DSFloatingActionButtonType.small,
        _extendedLabel = null,
        extendedPadding = null;

  const DSFloatingActionButton.large({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    required this.icon,
    required this.iconColor,
    this.iconSize = 36.0,
    this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
    this.semanticLabel,
    this.elevation,
    this.shape,
  })  : _floatingActionButtonType = DSFloatingActionButtonType.large,
        _extendedLabel = null,
        extendedPadding = null;

  const DSFloatingActionButton.extended({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    required this.icon,
    required this.iconColor,
    this.iconSize = 24.0,
    required Widget label,
    this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
    this.semanticLabel,
    this.elevation,
    this.shape,
    this.extendedPadding,
  })  : _floatingActionButtonType = DSFloatingActionButtonType.extended,
        _extendedLabel = label;

  final DSFloatingActionButtonType _floatingActionButtonType;
  final DSFloatingActionButtonColor floatingActionButtonStyle;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final Widget? _extendedLabel;
  final String? semanticLabel;
  final double? elevation;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? extendedPadding;

  @override
  Widget build(BuildContext context) {
    switch (_floatingActionButtonType) {
      case DSFloatingActionButtonType.regular:
        final lshape = shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            );
        return FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          elevation: elevation,
          shape: lshape,
          child: DSIcon.custom(
            icon: icon,
            color: iconColor,
            size: iconSize,
            semanticLabel: semanticLabel,
          ),
        );
      case DSFloatingActionButtonType.small:
        final lshape = shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            );
        return FloatingActionButton.small(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          elevation: elevation,
          shape: lshape,
          child: DSIcon.custom(
            icon: icon,
            color: iconColor,
            size: iconSize,
            semanticLabel: semanticLabel,
          ),
        );
      case DSFloatingActionButtonType.large:
        final lshape = shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            );
        return FloatingActionButton.large(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          elevation: elevation,
          shape: lshape,
          child: DSIcon.custom(
            icon: icon,
            color: iconColor,
            size: iconSize,
            semanticLabel: semanticLabel,
          ),
        );
      case DSFloatingActionButtonType.extended:
        final eshape = shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            );
        final eextendedPadding = extendedPadding ??
            const EdgeInsets.only(left: 16, right: 20, top: 16, bottom: 16);
        return FloatingActionButton.extended(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          elevation: elevation,
          shape: eshape,
          extendedPadding: eextendedPadding,
          icon: DSIcon.custom(
            icon: icon,
            color: iconColor,
            size: iconSize,
            semanticLabel: semanticLabel,
          ),
          label: _extendedLabel!,
        );
    }
  }

  Color _getColor(BuildContext context) {
    final ColorsThemeExtension bgColor = context.colors;
    switch (floatingActionButtonStyle) {
      case DSFloatingActionButtonColor.surface:
        return bgColor.sysSurface;
      case DSFloatingActionButtonColor.primary:
        return bgColor.sysPrimary;
      case DSFloatingActionButtonColor.secondary:
        return bgColor.sysSecondary;
      case DSFloatingActionButtonColor.tertiary:
        return bgColor.sysTertiary;
    }
  }

  DSFloatingActionButton copyWith({
    Color? backgroundColor,
    IconData? icon,
    Color? iconColor,
    double? iconSize,
    DSFloatingActionButtonColor? floatingActionButtonStyle,
    String? semanticLabel,
    double? elevation,
    ShapeBorder? shape,
    EdgeInsetsGeometry? extendedPadding,
  }) {
    return DSFloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      icon: icon ?? this.icon,
      iconColor: iconColor ?? this.iconColor,
      iconSize: iconSize ?? this.iconSize,
      floatingActionButtonStyle:
          floatingActionButtonStyle ?? this.floatingActionButtonStyle,
      semanticLabel: semanticLabel ?? this.semanticLabel,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
    );
  }
}
