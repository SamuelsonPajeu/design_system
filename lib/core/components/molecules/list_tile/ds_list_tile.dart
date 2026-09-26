import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Defines the vertical density of the [DSListTile].
enum DSListTileDensity {
  /// Default density (0). Adds a bottom divider by default.
  standard,

  /// Reduced vertical padding (-2). No divider.
  compact,

  /// Minimal vertical padding (-4). No divider.
  ultraCompact,
}

/// A Design System List Tile wrapper around Flutter's [ListTile].
class DSListTile extends StatelessWidget {
  const DSListTile({
    super.key,
    // --- Design System Specific ---
    required this.title,
    required this.density,
    this.overline,
    this.supportingText,
    this.showDivider,

    // --- Standard ListTile Parameters ---
    this.leading,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.leadingAndTrailingTextStyle,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.onFocusChange,
    this.mouseCursor,
    this.selected = false,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.focusNode,
    this.autofocus = false,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.minTileHeight,
    this.titleAlignment,
    this.internalAddSemanticForOnTap = true,
    this.statesController,
  });

  /// The primary content of the list tile.
  final Widget title;

  /// The density of the list tile.
  final DSListTileDensity density;

  /// Text displayed above the title.
  final Widget? overline;

  /// Additional content displayed below the title.
  final Widget? supportingText;

  /// Whether to show the bottom divider.
  ///
  /// If null, defaults to `true` if [density] is [DSListTileDensity.standard],
  /// and `false` otherwise.
  final bool? showDivider;

  // --- Original ListTile Fields ---
  final Widget? leading;
  final Widget? trailing;
  final bool isThreeLine;
  final bool? dense;
  final VisualDensity? visualDensity;
  final ShapeBorder? shape;
  final ListTileStyle? style;
  final Color? selectedColor;
  final Color? iconColor;
  final Color? textColor;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final TextStyle? leadingAndTrailingTextStyle;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final ValueChanged<bool>? onFocusChange;
  final MouseCursor? mouseCursor;
  final bool selected;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;
  final FocusNode? focusNode;
  final bool autofocus;
  final Color? tileColor;
  final Color? selectedTileColor;
  final bool? enableFeedback;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  final double? minTileHeight;
  final ListTileTitleAlignment? titleAlignment;
  final bool internalAddSemanticForOnTap;
  final WidgetStatesController? statesController;

  @override
  Widget build(BuildContext context) {
    // --- Styles & Tokens ---
    final colors = context.colors;
    final texts = context.texts;

    // Resolve the default text color based on the passed parameter or default token
    final defaultTextColor = textColor ?? colors.sysOnSurface;

    // 1. Text Styles
    final effectiveTitleStyle = titleTextStyle ??
        texts.bodyLarge.copyWith(
          color: enabled
              ? defaultTextColor
              : defaultTextColor.withValues(alpha: 0.38),
        );

    final effectiveSubtitleStyle = subtitleTextStyle ??
        texts.bodyMedium.copyWith(
          color: enabled
              ? colors.sysOnSurfaceVariant
              : colors.sysOnSurfaceVariant.withValues(alpha: 0.38),
        );

    final effectiveOverlineStyle = texts.labelMedium.copyWith(
      color: enabled
          ? colors.sysOnSurfaceVariant
          : colors.sysOnSurfaceVariant.withValues(alpha: 0.38),
    );

    // 2. Default Colors
    final defaultIconColor = enabled
        ? colors.sysOnSurfaceVariant
        : colors.sysOnSurfaceVariant.withValues(alpha: 0.38);

    // 3. Density Logic
    VisualDensity effectiveVisualDensity;
    double effectiveMinVerticalPadding;
    bool shouldShowDivider;

    switch (density) {
      case DSListTileDensity.standard:
        effectiveVisualDensity = VisualDensity.standard;
        effectiveMinVerticalPadding = 8.0;
        shouldShowDivider = true;
        break;
      case DSListTileDensity.compact:
        effectiveVisualDensity =
            const VisualDensity(horizontal: 0, vertical: -2);
        effectiveMinVerticalPadding = 4.0;
        shouldShowDivider = false;
        break;
      case DSListTileDensity.ultraCompact:
        effectiveVisualDensity =
            const VisualDensity(horizontal: 0, vertical: -4);
        effectiveMinVerticalPadding = 2.0;
        shouldShowDivider = false;
        break;
    }

    if (showDivider != null) {
      shouldShowDivider = showDivider!;
    }

    // 4. Widget Construction
    Widget? titleWidget;
    if (overline != null) {
      titleWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          DefaultTextStyle(style: effectiveOverlineStyle, child: overline!),
          DefaultTextStyle(style: effectiveTitleStyle, child: title),
        ],
      );
    } else {
      titleWidget = DefaultTextStyle(style: effectiveTitleStyle, child: title);
    }

    Widget? subtitleWidget;
    if (supportingText != null) {
      subtitleWidget = DefaultTextStyle(
        style: effectiveSubtitleStyle,
        child: supportingText!,
      );
    }

    final effectiveIconThemeColor = iconColor ?? defaultIconColor;

    Widget? effectiveLeading = leading;
    if (leading is Icon || leading is DSIcon) {
      effectiveLeading = IconTheme(
        data: IconThemeData(color: effectiveIconThemeColor),
        child: leading!,
      );
    }

    Widget? effectiveTrailing = trailing;
    if (trailing is Icon || trailing is DSIcon) {
      effectiveTrailing = IconTheme(
        data: IconThemeData(color: effectiveIconThemeColor),
        child: trailing!,
      );
    }

    final effectiveContentPadding =
        contentPadding ?? const EdgeInsets.symmetric(horizontal: 16);
    final resolvedPadding =
        effectiveContentPadding.resolve(Directionality.of(context));

    Widget tile = ListTile(
      // Content
      leading: effectiveLeading,
      title: titleWidget,
      subtitle: subtitleWidget,
      trailing: effectiveTrailing,
      isThreeLine: isThreeLine,

      // Styling & Metrics
      dense: dense,
      visualDensity: visualDensity ?? effectiveVisualDensity,
      shape: shape,
      style: style,
      selectedColor: selectedColor ?? colors.sysPrimary,
      iconColor: effectiveIconThemeColor,
      textColor: defaultTextColor,
      contentPadding: effectiveContentPadding,
      tileColor: tileColor ?? Colors.transparent,
      selectedTileColor: selectedTileColor ??
          colors.sysPrimaryContainer.withValues(alpha: 0.12),
      focusColor: focusColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      horizontalTitleGap: horizontalTitleGap,
      minVerticalPadding: minVerticalPadding ?? effectiveMinVerticalPadding,
      minLeadingWidth: minLeadingWidth,
      minTileHeight: minTileHeight,
      internalAddSemanticForOnTap: internalAddSemanticForOnTap,
      titleAlignment: titleAlignment,

      // Text Styles
      titleTextStyle: effectiveTitleStyle,
      subtitleTextStyle: effectiveSubtitleStyle,
      leadingAndTrailingTextStyle: leadingAndTrailingTextStyle,

      // Interaction
      enabled: enabled,
      onTap: onTap,
      onLongPress: onLongPress,
      onFocusChange: onFocusChange,
      mouseCursor: mouseCursor,
      selected: selected,
      focusNode: focusNode,
      autofocus: autofocus,
      enableFeedback: enableFeedback,
      statesController: statesController,
    );

    if (shouldShowDivider) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          tile,
          DSDivider(
            height: 1,
            thickness: 1,
            color: colors.sysOutlineVariant,
            indent: resolvedPadding.left,
            endIndent: resolvedPadding.right,
          ),
        ],
      );
    }

    return tile;
  }
}
