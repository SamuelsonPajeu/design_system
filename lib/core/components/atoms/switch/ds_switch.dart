import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A Design System switch based on the Material [Switch].
///
/// Used to toggle the on/off state of a single setting.
class DSSwitch extends StatelessWidget {
  /// Whether this switch is on or off.
  final bool value;

  /// Called when the user toggles the switch on or off.
  final ValueChanged<bool>? onChanged;

  /// The color to use on the thumb when this switch is on.
  final Color? activeThumbColor;

  /// The color to use on the track when this switch is on.
  final Color? activeTrackColor;

  /// The color to use on the thumb when this switch is off.
  final Color? inactiveThumbColor;

  /// The color to use on the track when this switch is off.
  final Color? inactiveTrackColor;

  /// An image to use on the thumb of this switch when the switch is on.
  final ImageProvider? activeThumbImage;

  /// An optional error callback for errors emitted when loading [activeThumbImage].
  final ImageErrorListener? onActiveThumbImageError;

  /// An image to use on the thumb of this switch when the switch is off.
  final ImageProvider? inactiveThumbImage;

  /// An optional error callback for errors emitted when loading [inactiveThumbImage].
  final ImageErrorListener? onInactiveThumbImageError;

  /// The color of this [Switch]'s thumb.
  final WidgetStateProperty<Color?>? thumbColor;

  /// The color of this [Switch]'s track.
  final WidgetStateProperty<Color?>? trackColor;

  /// The outline color of this [Switch]'s track.
  final WidgetStateProperty<Color?>? trackOutlineColor;

  /// The outline width of this [Switch]'s track.
  final WidgetStateProperty<double?>? trackOutlineWidth;

  /// The icon to use on the thumb of this switch.
  final WidgetStateProperty<Icon?>? thumbIcon;

  /// Configures the minimum size of the tap target.
  final MaterialTapTargetSize? materialTapTargetSize;

  /// {@macro flutter.cupertino.CupertinoSwitch.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final MouseCursor? mouseCursor;

  /// The color for the button's [Material] when it has the input focus.
  final Color? focusColor;

  /// The color for the button's [Material] when a pointer is hovering over it.
  final Color? hoverColor;

  /// The color for the switch's [Material].
  final WidgetStateProperty<Color?>? overlayColor;

  /// The splash radius of the circular [Material] ink response.
  final double? splashRadius;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.material.inkwell.onFocusChange}
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  const DSSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeThumbColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    this.thumbColor,
    this.trackColor,
    this.trackOutlineColor,
    this.trackOutlineWidth,
    this.thumbIcon,
    this.materialTapTargetSize,
    this.dragStartBehavior = DragStartBehavior.start,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.focusNode,
    this.onFocusChange,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    // --- Default Color Definitions ---

    // Thumb Color Logic
    final defaultThumbColor = WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          // Selected & Disabled
          return context.colors.sysSurface;
        }
        // Unselected & Disabled
        return context.colors.sysOnSurface.withValues(alpha: 0.38);
      }

      if (states.contains(WidgetState.selected)) {
        // Selected & Enabled (Hover/Focus/Press)
        if (states.contains(WidgetState.hovered) ||
            states.contains(WidgetState.focused) ||
            states.contains(WidgetState.pressed)) {
          return context.colors.sysPrimaryContainer;
        }
        // Selected & Enabled (Standard)
        return context.colors.sysSurface;
      }

      // Unselected & Enabled (Hover/Focus/Press)
      if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.focused) ||
          states.contains(WidgetState.pressed)) {
        return context.colors.sysOnSurfaceVariant;
      }
      // Unselected & Enabled (Standard)
      return context.colors.sysOutline;
    });

    // Track Color Logic
    final defaultTrackColor = WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          // Selected & Disabled
          return context.colors.sysOnSurface.withValues(alpha: 0.12);
        }
        // Unselected & Disabled
        return context.colors.sysOnSurfaceVariant.withValues(alpha: 0.12);
      }

      if (states.contains(WidgetState.selected)) {
        // Selected & Enabled
        return context.colors.sysPrimary;
      }

      // Unselected & Enabled
      return context.colors.sysSurfaceContainerHighest;
    });

    // Track Outline Color (Border) Logic
    final defaultTrackOutlineColor =
        WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.transparent;
      }

      if (states.contains(WidgetState.disabled)) {
        // Unselected & Disabled
        return context.colors.sysOnSurface.withValues(alpha: 0.12);
      }

      // Unselected & Enabled
      return context.colors.sysOutline;
    });

    // Icon Color Logic
    Color? getIconColor(Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          // Selected & Disabled
          return context.colors.sysOnSurfaceVariant.withValues(alpha: 0.38);
        }
        // Unselected & Disabled
        return context.colors.sysInverseOnSurface.withValues(alpha: 0.38);
      }

      if (states.contains(WidgetState.selected)) {
        // Selected & Enabled
        return context.colors.sysOnSurfaceVariant;
      }

      // Unselected & Enabled
      return context.colors.sysInverseOnSurface;
    }

    final effectiveThumbIcon = thumbIcon == null
        ? null
        : WidgetStateProperty.resolveWith<Icon?>((states) {
            final Icon? icon = thumbIcon!.resolve(states);
            if (icon == null) return null;

            final Color forcedColor = getIconColor(states)!;

            return Icon(
              icon.icon,
              key: icon.key,
              size: icon.size,
              fill: icon.fill,
              weight: icon.weight,
              grade: icon.grade,
              opticalSize: icon.opticalSize,
              shadows: icon.shadows,
              semanticLabel: icon.semanticLabel,
              textDirection: icon.textDirection,
              color: forcedColor,
            );
          });

    return Switch(
      value: value,
      onChanged: onChanged,
      activeThumbColor: activeThumbColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
      activeThumbImage: activeThumbImage,
      onActiveThumbImageError: onActiveThumbImageError,
      inactiveThumbImage: inactiveThumbImage,
      onInactiveThumbImageError: onInactiveThumbImageError,
      thumbColor: thumbColor ?? defaultThumbColor,
      trackColor: trackColor ?? defaultTrackColor,
      trackOutlineColor: trackOutlineColor ?? defaultTrackOutlineColor,
      trackOutlineWidth: trackOutlineWidth,
      thumbIcon: effectiveThumbIcon,
      materialTapTargetSize: materialTapTargetSize,
      dragStartBehavior: dragStartBehavior,
      mouseCursor: mouseCursor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      overlayColor: overlayColor,
      splashRadius: splashRadius,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
    );
  }
}
