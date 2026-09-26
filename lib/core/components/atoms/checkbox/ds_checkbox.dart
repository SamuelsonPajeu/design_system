import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Material Design checkbox tailored for the Design System.
///
/// The checkbox itself does not maintain any state. Instead, when the state of
/// the checkbox changes, the widget calls the [onChanged] callback.
///
/// This wrapper ensures that the [Checkbox] adheres to the application's
/// theme tokens defined in [ThemeExtensions].
class DSCheckbox extends StatelessWidget {
  /// Creates a Design System Checkbox.
  const DSCheckbox({
    super.key,
    required this.value,
    this.tristate = false,
    required this.onChanged,
    this.mouseCursor,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.autofocus = false,
    this.shape,
    this.side,
    this.isError = false,
    this.semanticLabel,
  });

  /// Whether this checkbox is checked.
  final bool? value;

  /// Called when the value of the checkbox should change.
  final ValueChanged<bool?>? onChanged;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final MouseCursor? mouseCursor;

  /// The color to use when this checkbox is checked.
  ///
  /// If null, defaults to [context.colors.sysPrimary].
  final Color? activeColor;

  /// The color that fills the checkbox.
  ///
  /// If null, resolves to [sysPrimary] when selected and transparent when unselected.
  final WidgetStateProperty<Color?>? fillColor;

  /// The color to use for the check icon when this checkbox is checked.
  ///
  /// If null, defaults to [context.colors.sysOnPrimary] (Enabled) or
  /// [context.colors.sysOnSurfaceVariant] (Disabled).
  final Color? checkColor;

  /// If true the checkbox's [value] can be true, false, or null.
  final bool tristate;

  /// Configures the minimum size of the tap target.
  final MaterialTapTargetSize? materialTapTargetSize;

  /// Defines how compact the checkbox's layout will be.
  final VisualDensity? visualDensity;

  /// The color for the checkbox's [Material] when it has the input focus.
  final Color? focusColor;

  /// The color for the checkbox's [Material] when a pointer is hovering over it.
  final Color? hoverColor;

  /// The color for the checkbox's [Material].
  final WidgetStateProperty<Color?>? overlayColor;

  /// The splash radius of the circular [Material] ink response.
  final double? splashRadius;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// The shape of the checkbox's [Material].
  ///
  /// If null, defaults to [RoundedRectangleBorder] with radius 2.0.
  final OutlinedBorder? shape;

  /// The color and width of the checkbox's border.
  final BorderSide? side;

  /// True if this checkbox wants to show an error state.
  ///
  /// Defaults to false.
  final bool isError;

  /// The semantic label for the checkbox.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    // 1. Resolve Active Colors (Enabled State)
    final defaultActiveColor =
        isError ? context.colors.sysError : context.colors.sysPrimary;

    // 2. Resolve Fill Color (Background)
    final defaultFillColor = WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          return context.colors.sysOnSurface.withValues(alpha: 0.38);
        }
        return null;
      }

      if (states.contains(WidgetState.selected)) {
        return defaultActiveColor;
      }
      return null;
    });

    // 3. Resolve Check Color (Icon)
    final defaultCheckColorProperty = WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return context.colors.sysOnSurfaceVariant.withValues(alpha: 0.38);
      }
      return isError ? context.colors.sysOnError : context.colors.sysOnPrimary;
    });

    final effectiveCheckColorProperty = checkColor != null
        ? WidgetStateProperty.all(checkColor)
        : defaultCheckColorProperty;

    // 4. Resolve Side (Border)
    final defaultSide = WidgetStateBorderSide.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        if (!states.contains(WidgetState.selected)) {
          return BorderSide(
            color: context.colors.sysOnSurface.withValues(alpha: 0.38),
            width: 2.0,
          );
        }
        return const BorderSide(width: 0.0, color: Colors.transparent);
      }

      if (!states.contains(WidgetState.selected)) {
        return BorderSide(
          color: isError
              ? context.colors.sysError
              : context.colors.sysOnSurfaceVariant,
          width: 2.0,
        );
      }
      return const BorderSide(width: 0.0, color: Colors.transparent);
    });

    // 5. Resolve Overlay Color (Splash/Hover/Focus)
    final defaultOverlayColor = WidgetStateProperty.resolveWith((states) {
      final isSelected = states.contains(WidgetState.selected);
      final isPressed = states.contains(WidgetState.pressed);
      final isHovered = states.contains(WidgetState.hovered);
      final isFocused = states.contains(WidgetState.focused);

      final isLightMode = Theme.of(context).brightness == Brightness.light;

      final Color baseColor;

      if (isError) {
        baseColor = context.colors.sysError;
      } else {
        baseColor = isSelected && isPressed
            ? (isLightMode
                ? context.colors.sysOnPrimary
                : context.colors.sysPrimary)
            : defaultActiveColor;
      }

      if (isHovered) return baseColor.withValues(alpha: 0.08);
      if (isPressed) return baseColor.withValues(alpha: 0.2);
      if (isFocused) return baseColor.withValues(alpha: 0.12);

      return null;
    });

    return CheckboxTheme(
      data: CheckboxTheme.of(context).copyWith(
        checkColor: effectiveCheckColorProperty,
      ),
      child: Checkbox(
        value: value,
        tristate: tristate,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        activeColor: activeColor ?? defaultActiveColor,
        fillColor: fillColor ?? defaultFillColor,
        checkColor: null,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor ?? defaultOverlayColor,
        splashRadius: splashRadius,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusNode: focusNode,
        autofocus: autofocus,
        shape: shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
        side: side ?? defaultSide,
        isError: isError,
        semanticLabel: semanticLabel,
      ),
    );
  }
}
