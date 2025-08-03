import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';

enum DSFloatingActionButtonType {
  regular,
  small,
  large,
  extended,
}

enum DSFloatingActionButtonColor { surface, primary, secondary, tertiary }

class DSFloatingActionButton extends StatelessWidget {
  const DSFloatingActionButton(
      {super.key,
      required this.onPressed,
      this.backgroundColor,
      required this.icon,
      required this.iconColor,
      this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
      this.semanticLabel})
      : _floatingActionButtonType = DSFloatingActionButtonType.regular,
        _extendedLabel = null;

  const DSFloatingActionButton.small(
      {super.key,
      required this.onPressed,
      this.backgroundColor,
      required this.icon,
      required this.iconColor,
      this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
      this.semanticLabel})
      : _floatingActionButtonType = DSFloatingActionButtonType.small,
        _extendedLabel = null;

  const DSFloatingActionButton.large(
      {super.key,
      required this.onPressed,
      this.backgroundColor,
      required this.icon,
      required this.iconColor,
      this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
      this.semanticLabel})
      : _floatingActionButtonType = DSFloatingActionButtonType.large,
        _extendedLabel = null;

  const DSFloatingActionButton.extended(
      {super.key,
      required this.onPressed,
      this.backgroundColor,
      required this.icon,
      required this.iconColor,
      required Widget label,
      this.floatingActionButtonStyle = DSFloatingActionButtonColor.primary,
      this.semanticLabel})
      : _floatingActionButtonType = DSFloatingActionButtonType.large,
        _extendedLabel = label;

  final DSFloatingActionButtonType _floatingActionButtonType;
  final DSFloatingActionButtonColor floatingActionButtonStyle;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final IconData icon;
  final Color iconColor;
  final Widget? _extendedLabel;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    switch (_floatingActionButtonType) {
      case DSFloatingActionButtonType.regular:
        return FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          child: DSIcon(
            icon: icon,
            color: iconColor,
            semanticLabel: semanticLabel,
          ),
        );
      case DSFloatingActionButtonType.small:
        return FloatingActionButton.small(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          child: DSIcon(
            icon: icon,
            color: iconColor,
            semanticLabel: semanticLabel,
          ),
        );
      case DSFloatingActionButtonType.large:
        return FloatingActionButton.large(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          child: DSIcon(
            icon: icon,
            color: iconColor,
            semanticLabel: semanticLabel,
          ),
        );
      case DSFloatingActionButtonType.extended:
        return FloatingActionButton.extended(
          onPressed: onPressed,
          backgroundColor: backgroundColor ?? _getColor(context),
          icon: DSIcon(
            icon: icon,
            color: iconColor,
            semanticLabel: semanticLabel,
          ),
          label: _extendedLabel!,
        );
    }
  }

  Color _getColor(BuildContext context) {
    final ColorsThemeExtension bgColor = Theme.of(context).colors;
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
}
