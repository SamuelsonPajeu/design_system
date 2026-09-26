import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSSegmentedButton<T> extends StatelessWidget {
  const DSSegmentedButton.standard({
    super.key,
    required this.segments,
    required this.selected,
    this.onSelectionChanged,
    this.multiSelectionEnabled = false,
    this.emptySelectionAllowed = false,
    this.expandedInsets,
    this.style,
    this.showSelectedIcon = true,
    this.selectedIcon,
    this.direction = Axis.horizontal,
    // Style overrides
    this.backgroundColor,
    this.foregroundColor,
    this.selectedBackgroundColor,
    this.selectedForegroundColor,
    this.overlayColor,
    this.inactiveBorderColor,
  })  : _iconSize = 18.0,
        _density = VisualDensity.standard;

  const DSSegmentedButton.small({
    super.key,
    required this.segments,
    required this.selected,
    this.onSelectionChanged,
    this.multiSelectionEnabled = false,
    this.emptySelectionAllowed = false,
    this.expandedInsets,
    this.style,
    this.showSelectedIcon = true,
    this.selectedIcon,
    this.direction = Axis.horizontal,
    // Style overrides
    this.backgroundColor,
    this.foregroundColor,
    this.selectedBackgroundColor,
    this.selectedForegroundColor,
    this.overlayColor,
    this.inactiveBorderColor,
  })  : _iconSize = 18.0,
        _density = const VisualDensity(horizontal: 0, vertical: -1);

  final List<ButtonSegment<T>> segments;
  final Set<T> selected;
  final void Function(Set<T>)? onSelectionChanged;
  final bool multiSelectionEnabled;
  final bool emptySelectionAllowed;
  final EdgeInsets? expandedInsets;
  final ButtonStyle? style;
  final bool showSelectedIcon;
  final Widget? selectedIcon;
  final Axis direction;
  final double _iconSize;
  final VisualDensity _density;

  // Custom style overrides
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? selectedBackgroundColor;
  final Color? selectedForegroundColor;
  final Color? overlayColor;
  final Color? inactiveBorderColor;

  @override
  Widget build(BuildContext context) {
    // --- Styles & Tokens ---
    final borderRadius = BorderRadius.circular(16);

    // --- Color Resolution Logic ---
    final defaultSelectedBg = context.colors.sysSecondaryContainer;
    final defaultUnselectedBg = Colors.transparent;
    final defaultSelectedFg = context.colors.sysOnSecondaryContainer;
    final defaultUnselectedFg = context.colors.sysOnSurface;
    final defaultDisabledFg =
        context.colors.sysOnSurface.withValues(alpha: 0.38);

    // --- Default Overlay Color Logic ---
    final WidgetStateProperty<Color?> defaultOverlayColor =
        WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        if (states.contains(WidgetState.pressed)) {
          return context.colors.sysOnSecondaryContainer.withValues(alpha: 0.08);
        }
        if (states.contains(WidgetState.hovered)) {
          return context.colors.sysOnSecondaryContainer.withValues(alpha: 0.08);
        }
        if (states.contains(WidgetState.focused)) {
          return context.colors.sysOnSecondaryContainer.withValues(alpha: 0.12);
        }
      } else {
        if (states.contains(WidgetState.pressed)) {
          return context.colors.sysOnSurface.withValues(alpha: 0.08);
        }
        if (states.contains(WidgetState.hovered)) {
          return context.colors.sysOnSurface.withValues(alpha: 0.08);
        }
        if (states.contains(WidgetState.focused)) {
          return context.colors.sysOnSurface.withValues(alpha: 0.12);
        }
      }
      return null;
    });

    // --- Default Style Construction ---
    final ButtonStyle defaultStyle = SegmentedButton.styleFrom(
      visualDensity: _density,
      textStyle: context.texts.labelLarge,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minimumSize: Size.zero,
      iconSize: _iconSize,
    ).copyWith(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return selectedBackgroundColor ?? defaultSelectedBg;
        }
        return backgroundColor ?? defaultUnselectedBg;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return defaultDisabledFg;
        }
        if (states.contains(WidgetState.selected)) {
          return selectedForegroundColor ?? defaultSelectedFg;
        }
        return foregroundColor ?? defaultUnselectedFg;
      }),
      overlayColor: overlayColor != null
          ? WidgetStatePropertyAll(overlayColor)
          : defaultOverlayColor,
      side: WidgetStatePropertyAll(
        BorderSide(
          color: inactiveBorderColor ?? context.colors.sysOutline,
        ),
      ),
    );

    final effectiveStyle =
        style == null ? defaultStyle : style!.merge(defaultStyle);

    return SegmentedButton<T>(
      segments: segments,
      selected: selected,
      onSelectionChanged: onSelectionChanged,
      multiSelectionEnabled: multiSelectionEnabled,
      emptySelectionAllowed: emptySelectionAllowed,
      expandedInsets: expandedInsets,
      style: effectiveStyle,
      showSelectedIcon: showSelectedIcon,
      selectedIcon: selectedIcon,
      direction: direction,
    );
  }
}
