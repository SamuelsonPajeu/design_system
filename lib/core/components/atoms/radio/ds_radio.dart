import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Material Design radio button tailored for the Design System.
///
/// Used to select between a number of mutually exclusive values.
///
/// This widget must be a descendant of a [DSRadioGroup].
class DSRadio<T> extends StatelessWidget {
  /// Creates a Design System radio button.
  const DSRadio({
    super.key,
    required this.value,
    this.mouseCursor,
    this.toggleable = false,
    this.activeColor,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.autofocus = false,
    this.enabled,
    this.backgroundColor,
    this.side,
    this.innerRadius,
  });

  /// The value represented by this radio button.
  final T value;

  final MouseCursor? mouseCursor;
  final bool toggleable;
  final Color? activeColor;
  final WidgetStateProperty<Color?>? fillColor;
  final Color? focusColor;
  final Color? hoverColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool? enabled;
  final WidgetStateProperty<Color?>? backgroundColor;
  final BorderSide? side;
  final WidgetStateProperty<double?>? innerRadius;

  @override
  Widget build(BuildContext context) {
    // 1. Resolve Active Color
    final defaultActiveColor = context.colors.sysPrimary;

    // 2. Resolve Fill Color (Border/Dot)
    final defaultFillColor = WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          return context.colors.sysOnSurfaceVariant.withValues(alpha: 0.38);
        }
        return context.colors.sysOnSurfaceVariant.withValues(alpha: 0.38);
      }
      if (states.contains(WidgetState.selected)) {
        return defaultActiveColor;
      }
      return context.colors.sysOnSurfaceVariant;
    });

    // 3. Resolve Overlay Color (Ripple)
    final defaultOverlayColor = WidgetStateProperty.resolveWith((states) {
      final isPressed = states.contains(WidgetState.pressed);
      final isHovered = states.contains(WidgetState.hovered);
      final isFocused = states.contains(WidgetState.focused);

      final Color baseColor = context.colors.sysPrimary;

      if (isPressed) return baseColor.withValues(alpha: 0.12);
      if (isHovered) return baseColor.withValues(alpha: 0.08);
      if (isFocused) return baseColor.withValues(alpha: 0.12);

      return Colors.transparent;
    });

    return Radio<T>(
      value: value,
      mouseCursor: mouseCursor,
      toggleable: toggleable,
      activeColor: activeColor ?? defaultActiveColor,
      fillColor: fillColor ?? defaultFillColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      overlayColor: overlayColor ?? defaultOverlayColor,
      splashRadius: splashRadius,
      materialTapTargetSize: materialTapTargetSize,
      visualDensity: visualDensity,
      focusNode: focusNode,
      autofocus: autofocus,
      enabled: enabled,
      backgroundColor: backgroundColor,
      side: side,
      innerRadius: innerRadius,
    );
  }
}

/// A group for Design System radios.
///
/// Handles the selection state for all [DSRadio] descendants.
class DSRadioGroup<T> extends StatelessWidget {
  const DSRadioGroup({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.child,
  });

  /// The currently selected value for this group.
  final T? groupValue;

  /// Called when the user selects a radio button in this group.
  final ValueChanged<T?> onChanged;

  /// The widget subtree containing the [DSRadio] widgets.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<T>(
      groupValue: groupValue,
      onChanged: onChanged,
      child: child,
    );
  }
}
