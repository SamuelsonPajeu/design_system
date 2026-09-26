import 'package:design_system/core/components/atoms/badge/ds_badge.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Material 3 Navigation Bar component tailored for the Design System.
///
/// Navigation bars offer a persistent and convenient way to switch between
/// primary destinations in an app.
///
/// This widget holds a collection of destinations (usually [DSNavigationDestination]s).
///
/// This wrapper ensures that the [NavigationBar] adheres to the application's
/// theme tokens defined in [ThemeExtensions].
class DSNavigationBar extends StatelessWidget {
  /// Creates a Design System Navigation Bar component.
  ///
  /// The value of [destinations] must be a list of two or more
  /// [DSNavigationDestination] values.
  const DSNavigationBar({
    super.key,
    this.animationDuration,
    this.selectedIndex = 0,
    required this.destinations,
    this.onDestinationSelected,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.indicatorColor,
    this.indicatorShape,
    this.height,
    this.labelBehavior,
    this.overlayColor,
    this.labelTextStyle,
    this.labelPadding,
    this.maintainBottomViewPadding = false,
    this.contentMaxWidth,
  });

  /// Optional maximum width for the navigation items.
  final double? contentMaxWidth;

  /// Determines the transition time for each destination as it goes between
  /// selected and unselected.
  final Duration? animationDuration;

  /// Determines which one of the [destinations] is currently selected.
  ///
  /// When this is updated, the destination (from [destinations]) at
  /// [selectedIndex] goes from unselected to selected.
  final int selectedIndex;

  /// The list of destinations (usually [DSNavigationDestination]s) in this
  /// [NavigationBar].
  ///
  /// When [selectedIndex] is updated, the destination from this list at
  /// [selectedIndex] will animate from 0 (unselected) to 1.0 (selected).
  final List<Widget> destinations;

  /// Called when one of the [destinations] is selected.
  ///
  /// This callback usually updates the int passed to [selectedIndex].
  ///
  /// Upon updating [selectedIndex], the [NavigationBar] will be rebuilt.
  final ValueChanged<int>? onDestinationSelected;

  /// The color of the [NavigationBar] itself.
  ///
  /// If null, defaults to [context.colors.sysSurfaceContainerLow].
  final Color? backgroundColor;

  /// The elevation of the [NavigationBar] itself.
  ///
  /// If null, defaults to 3.0.
  final double? elevation;

  /// The color used for the drop shadow to indicate elevation.
  final Color? shadowColor;

  /// The color used as an overlay on [backgroundColor] to indicate elevation.
  ///
  /// If null, defaults to [Colors.transparent].
  final Color? surfaceTintColor;

  /// The color of the [indicatorShape] when this destination is selected.
  ///
  /// If null, defaults to [context.colors.sysSecondaryContainer].
  final Color? indicatorColor;

  /// The shape of the selected indicator.
  ///
  /// If null, defaults to [RoundedRectangleBorder] with borderRadius 12.
  final ShapeBorder? indicatorShape;

  /// The height of the [NavigationBar] itself.
  ///
  /// If null, defaults to 80.
  final double? height;

  /// Defines how the [destinations]' labels will be laid out and when they'll
  /// be displayed.
  ///
  /// Can be used to show all labels, show only the selected label, or hide all
  /// labels.
  final NavigationDestinationLabelBehavior? labelBehavior;

  /// The highlight color that's typically used to indicate that
  /// the [NavigationDestination] is focused, hovered, or pressed.
  final WidgetStateProperty<Color?>? overlayColor;

  /// The text style of the label.
  ///
  /// If null, defaults to [context.texts.labelMedium] with:
  /// - Selected: [sysOnSurface]
  /// - Unselected: [sysOnSurfaceVariant]
  final WidgetStateProperty<TextStyle?>? labelTextStyle;

  /// The padding around the [NavigationDestination.label] widget.
  final EdgeInsetsGeometry? labelPadding;

  /// Specifies whether the underlying [SafeArea] should maintain the bottom
  /// [MediaQueryData.viewPadding] instead of the bottom [MediaQueryData.padding].
  ///
  /// When true, this will prevent the [NavigationBar] from shifting when opening a
  /// software keyboard due to the change in the padding value, especially when the
  /// app uses [SystemUiMode.edgeToEdge], which renders the system bars over the
  /// application instead of outside it.
  ///
  /// Defaults to false.
  final bool maintainBottomViewPadding;

  @override
  Widget build(BuildContext context) {
    final defaultBackgroundColor = context.colors.sysSurfaceContainerLow;
    final defaultIndicatorColor = context.colors.sysSecondaryContainer;
    final defaultSurfaceTintColor = Colors.transparent;
    final defaultIndicatorShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    );

    final defaultLabelTextStyle = WidgetStateProperty.resolveWith((states) {
      final style = context.texts.labelMedium;
      if (states.contains(WidgetState.selected)) {
        return style.copyWith(color: context.colors.sysOnSurface);
      }
      return style.copyWith(color: context.colors.sysOnSurfaceVariant);
    });

    final effectiveBackgroundColor = contentMaxWidth != null
        ? Colors.transparent
        : (backgroundColor ?? defaultBackgroundColor);

    final effectiveElevation =
        contentMaxWidth != null ? 0.0 : (elevation ?? 3.0);

    final navigationBar = NavigationBar(
      animationDuration: animationDuration,
      selectedIndex: selectedIndex,
      destinations: destinations,
      onDestinationSelected: onDestinationSelected,
      backgroundColor: effectiveBackgroundColor,
      elevation: effectiveElevation,
      shadowColor: shadowColor,
      surfaceTintColor:
          contentMaxWidth != null ? Colors.transparent : surfaceTintColor,
      indicatorColor: indicatorColor ?? defaultIndicatorColor,
      indicatorShape: indicatorShape ?? defaultIndicatorShape,
      height: height ?? 80.0,
      labelBehavior: labelBehavior,
      overlayColor: overlayColor,
      labelTextStyle: labelTextStyle ?? defaultLabelTextStyle,
      labelPadding: labelPadding,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );

    if (contentMaxWidth == null) {
      return navigationBar;
    }

    return Material(
      color: backgroundColor ?? defaultBackgroundColor,
      elevation: elevation ?? 3.0,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor ?? defaultSurfaceTintColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: contentMaxWidth!),
              child: navigationBar,
            ),
          ),
        ],
      ),
    );
  }
}

/// A Design System [NavigationBar] destination.
///
/// Displays a label below an icon. Use with [DSNavigationBar.destinations].
///
/// This widget automatically applies the Design System color tokens to the icons
/// and supports an optional Badge (Dot or Label).
class DSNavigationDestination extends StatelessWidget {
  /// Creates a navigation bar destination with an icon and a label, to be used
  /// in the [DSNavigationBar.destinations].
  const DSNavigationDestination({
    super.key,
    required this.icon,
    this.selectedIcon,
    required this.label,
    this.tooltip,
    this.enabled = true,
    this.showBadge = false,
    this.badgeLabel,
  });

  /// The [Widget] (usually an [Icon]) that's displayed for this
  /// [NavigationDestination].
  ///
  /// The icon will be automatically wrapped in an [IconTheme] using
  /// [context.colors.sysOnSurface].
  final Widget icon;

  /// The optional [Widget] (usually an [Icon]) that's displayed when this
  /// [NavigationDestination] is selected.
  ///
  /// If [selectedIcon] is non-null, the destination will fade from
  /// [icon] to [selectedIcon] when this destination goes from unselected to
  /// selected.
  ///
  /// The icon will be automatically wrapped in an [IconTheme] using
  /// [context.colors.sysOnSecondaryContainer].
  final Widget? selectedIcon;

  /// The text label that appears below the icon of this
  /// [NavigationDestination].
  final String label;

  /// The text to display in the tooltip for this [NavigationDestination], when
  /// the user long presses the destination.
  ///
  /// If [tooltip] is an empty string, no tooltip will be used.
  ///
  /// Defaults to null, in which case the [label] text will be used.
  final String? tooltip;

  /// Indicates that this destination is selectable.
  ///
  /// Defaults to true.
  final bool enabled;

  /// If true, displays a badge over the icon.
  ///
  /// Defaults to false.
  final bool showBadge;

  /// The content of the badge (e.g., "3").
  ///
  /// If [showBadge] is true and this is null, a small dot (without text) is
  /// displayed.
  final String? badgeLabel;

  @override
  Widget build(BuildContext context) {
    Widget wrapWithBadge(Widget iconWidget) {
      if (!showBadge) return iconWidget;

      return DSBadge(
        label: badgeLabel != null
            ? DSText(
                badgeLabel!,
                autoSize: false,
              )
            : null,
        child: iconWidget,
      );
    }

    return NavigationDestination(
      icon: wrapWithBadge(
        IconTheme(
          data: IconThemeData(
            color: context.colors.sysOnSurface,
          ),
          child: icon,
        ),
      ),
      selectedIcon: wrapWithBadge(
        IconTheme(
          data: IconThemeData(
            color: context.colors.sysOnSecondaryContainer,
          ),
          child: selectedIcon ?? icon,
        ),
      ),
      label: label,
      tooltip: tooltip,
      enabled: enabled,
    );
  }
}
