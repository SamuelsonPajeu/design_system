import 'dart:math';

import 'package:design_system/core/components/atoms/badge/ds_badge.dart';
import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/components/molecules/search/ds_search_bar.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/symbols.dart';

enum DSTopAppBarType {
  home,
  centered,
  responsive,
  small,
  medium,
  large,
}

enum DSTopAppBarSearchBehavior {
  none,
  icon,
  persistent,
}

typedef DSTopAppBarTitleIconResolver = Widget? Function(
  BuildContext context,
  String? routeName,
);
typedef DSTopAppBarTitleTextResolver = String? Function(
  BuildContext context,
  String? routeName,
);

class DSTopAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Global resolver to provide a title icon based on context or current route.
  static DSTopAppBarTitleIconResolver? globalTitleIconResolver;

  /// Global resolver to provide fallback title text based on context or current route.
  static DSTopAppBarTitleTextResolver? globalTitleTextResolver;

  /// Home Variant: Avatar leading, Title/Subtitle, Search Bar in bottom slot.
  factory DSTopAppBar.home({
    Key? key,
    Widget? avatar,
    bool showAvatar = true,
    bool showReturnAction = false,
    required String title,
    String? subtitle,
    DSTopAppBarSearchBehavior searchBehavior =
        DSTopAppBarSearchBehavior.persistent,
    bool isSearchBarVisible = false,
    bool showNotificationAction = false,
    int notificationCount = 0,
    bool showSettingsAction = false,
    List<DSMenuItemButton>? menuItems,
    VoidCallback? onSearchTap,
    VoidCallback? onNotificationTap,
    VoidCallback? onSettingsTap,
    VoidCallback? leadingAction,
    SuggestionsBuilder? searchSuggestionsBuilder,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? scrolledSurfaceColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    ButtonStyle? iconButtonStyle,
    bool primary = true,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    TextStyle? subtitleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    Clip? clipBehavior,
    EdgeInsetsGeometry? actionsPadding,
    bool automaticallyImplyLeading = true,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
    bool animateColor = false,
    double? horizontalPadding,
    double? topPadding,
    double? bottomPadding,
    double? borderRadius,
    Color? curvatureColor,
    double? primaryBandHeight,
    bool showPrimaryBand = false,
    bool? isWeb,
  }) {
    return DSTopAppBar._(
      key: key,
      type: DSTopAppBarType.home,
      titleText: title,
      subtitleText: subtitle,
      showReturnAction: showReturnAction,
      leading: showAvatar
          ? Center(
              child: avatar ??
                  DSAvatar.image(
                    avatarSize: DSSize.small,
                    containerSize: DSSize.small,
                    child: DSIcon.small(icon: Symbols.person),
                  ),
            )
          : null,
      leadingAction: leadingAction,
      searchBehavior: searchBehavior,
      isSearchBarVisible: isSearchBarVisible,
      showNotificationAction: showNotificationAction,
      showSettingsAction: showSettingsAction,
      notificationCount: notificationCount,
      menuItems: menuItems,
      onSearchTap: onSearchTap,
      onNotificationTap: onNotificationTap,
      onSettingsTap: onSettingsTap,
      searchSuggestionsBuilder: searchSuggestionsBuilder,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      backgroundColor: backgroundColor,
      scrolledSurfaceColor: scrolledSurfaceColor,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      iconButtonStyle: iconButtonStyle,
      primary: primary,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      subtitleTextStyle: subtitleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
      forceMaterialTransparency: forceMaterialTransparency,
      clipBehavior: clipBehavior,
      actionsPadding: actionsPadding,
      automaticallyImplyLeading: automaticallyImplyLeading,
      notificationPredicate: notificationPredicate,
      animateColor: animateColor,
      horizontalPadding: horizontalPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      borderRadius: borderRadius,
      curvatureColor: curvatureColor,
      primaryBandHeight: primaryBandHeight,
      showPrimaryBand: showPrimaryBand,
      isWeb: isWeb,
    );
  }

  /// Centered Variant: Centered Title, Custom Leading/Actions.
  factory DSTopAppBar.centered({
    Key? key,
    required String title,
    Widget? titleIcon,
    bool showTitleIcon = true,
    Widget? leading,
    VoidCallback? leadingAction,
    List<Widget>? actions,
    DSTopAppBarSearchBehavior searchBehavior = DSTopAppBarSearchBehavior.none,
    bool isSearchBarVisible = false,
    bool showNotificationAction = false,
    int notificationCount = 0,
    bool showSettingsAction = false,
    List<DSMenuItemButton>? menuItems,
    VoidCallback? onSearchTap,
    VoidCallback? onNotificationTap,
    VoidCallback? onSettingsTap,
    SuggestionsBuilder? searchSuggestionsBuilder,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? scrolledSurfaceColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    ButtonStyle? iconButtonStyle,
    bool primary = true,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    Clip? clipBehavior,
    EdgeInsetsGeometry? actionsPadding,
    bool automaticallyImplyLeading = true,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
    bool animateColor = false,
    double? horizontalPadding,
    double? topPadding,
    double? bottomPadding,
    double? borderRadius,
    Color? curvatureColor,
    double? primaryBandHeight,
    bool showPrimaryBand = false,
    bool? isWeb,
  }) {
    return DSTopAppBar._(
      key: key,
      type: DSTopAppBarType.centered,
      titleText: title,
      titleIcon: titleIcon,
      showTitleIcon: showTitleIcon,
      leading: leading,
      leadingAction: leadingAction,
      actions: actions,
      centerTitle: true,
      searchBehavior: searchBehavior,
      isSearchBarVisible: isSearchBarVisible,
      showNotificationAction: showNotificationAction,
      notificationCount: notificationCount,
      showSettingsAction: showSettingsAction,
      menuItems: menuItems,
      onSearchTap: onSearchTap,
      onNotificationTap: onNotificationTap,
      onSettingsTap: onSettingsTap,
      searchSuggestionsBuilder: searchSuggestionsBuilder,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      backgroundColor: backgroundColor,
      scrolledSurfaceColor: scrolledSurfaceColor,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      iconButtonStyle: iconButtonStyle,
      primary: primary,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
      forceMaterialTransparency: forceMaterialTransparency,
      clipBehavior: clipBehavior,
      actionsPadding: actionsPadding,
      automaticallyImplyLeading: automaticallyImplyLeading,
      notificationPredicate: notificationPredicate,
      animateColor: animateColor,
      horizontalPadding: horizontalPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      borderRadius: borderRadius,
      curvatureColor: curvatureColor,
      primaryBandHeight: primaryBandHeight,
      showPrimaryBand: showPrimaryBand,
      isWeb: isWeb,
    );
  }

  /// Fixed Small Variant: Always Standard Height (Inline Title).
  factory DSTopAppBar.small({
    Key? key,
    required String title,
    Widget? titleIcon,
    bool showTitleIcon = true,
    Widget? leading,
    VoidCallback? leadingAction,
    List<Widget>? actions,
    DSTopAppBarSearchBehavior searchBehavior = DSTopAppBarSearchBehavior.none,
    bool isSearchBarVisible = false,
    bool showNotificationAction = false,
    int notificationCount = 0,
    bool showSettingsAction = false,
    List<DSMenuItemButton>? menuItems,
    VoidCallback? onSearchTap,
    VoidCallback? onNotificationTap,
    VoidCallback? onSettingsTap,
    SuggestionsBuilder? searchSuggestionsBuilder,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? scrolledSurfaceColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    ButtonStyle? iconButtonStyle,
    bool primary = true,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    Clip? clipBehavior,
    EdgeInsetsGeometry? actionsPadding,
    bool automaticallyImplyLeading = true,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
    bool animateColor = false,
    double? horizontalPadding,
    double? topPadding,
    double? bottomPadding,
    double? borderRadius,
    Color? curvatureColor,
    double? primaryBandHeight,
    bool showPrimaryBand = true,
    bool? isWeb,
  }) {
    return DSTopAppBar._(
      key: key,
      type: DSTopAppBarType.small,
      titleText: title,
      titleIcon: titleIcon,
      showTitleIcon: showTitleIcon,
      leading: leading,
      leadingAction: leadingAction,
      actions: actions,
      searchBehavior: searchBehavior,
      isSearchBarVisible: isSearchBarVisible,
      showNotificationAction: showNotificationAction,
      notificationCount: notificationCount,
      showSettingsAction: showSettingsAction,
      menuItems: menuItems,
      onSearchTap: onSearchTap,
      onNotificationTap: onNotificationTap,
      onSettingsTap: onSettingsTap,
      searchSuggestionsBuilder: searchSuggestionsBuilder,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      backgroundColor: backgroundColor,
      scrolledSurfaceColor: scrolledSurfaceColor,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      iconButtonStyle: iconButtonStyle,
      primary: primary,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
      forceMaterialTransparency: forceMaterialTransparency,
      clipBehavior: clipBehavior,
      actionsPadding: actionsPadding,
      automaticallyImplyLeading: automaticallyImplyLeading,
      notificationPredicate: notificationPredicate,
      animateColor: animateColor,
      horizontalPadding: horizontalPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      borderRadius: borderRadius,
      curvatureColor: curvatureColor,
      primaryBandHeight: primaryBandHeight,
      showPrimaryBand: showPrimaryBand,
      isWeb: isWeb,
    );
  }

  /// Fixed Medium Variant: Always Expanded Height (Title below toolbar).
  factory DSTopAppBar.medium({
    Key? key,
    required String title,
    Widget? titleIcon,
    bool showTitleIcon = true,
    Widget? leading,
    VoidCallback? leadingAction,
    List<Widget>? actions,
    DSTopAppBarSearchBehavior searchBehavior = DSTopAppBarSearchBehavior.none,
    bool isSearchBarVisible = false,
    bool showNotificationAction = false,
    int notificationCount = 0,
    bool showSettingsAction = false,
    List<DSMenuItemButton>? menuItems,
    VoidCallback? onSearchTap,
    VoidCallback? onNotificationTap,
    VoidCallback? onSettingsTap,
    SuggestionsBuilder? searchSuggestionsBuilder,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? scrolledSurfaceColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    ButtonStyle? iconButtonStyle,
    bool primary = true,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    Clip? clipBehavior,
    EdgeInsetsGeometry? actionsPadding,
    bool automaticallyImplyLeading = true,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
    bool animateColor = false,
    double? horizontalPadding,
    double? topPadding,
    double? bottomPadding,
    double? borderRadius,
    Color? curvatureColor,
    double? primaryBandHeight,
    bool showPrimaryBand = false,
    bool? isWeb,
  }) {
    return DSTopAppBar._(
      key: key,
      type: DSTopAppBarType.medium,
      titleText: title,
      titleIcon: titleIcon,
      showTitleIcon: showTitleIcon,
      leading: leading,
      leadingAction: leadingAction,
      actions: actions,
      searchBehavior: searchBehavior,
      isSearchBarVisible: isSearchBarVisible,
      showNotificationAction: showNotificationAction,
      notificationCount: notificationCount,
      showSettingsAction: showSettingsAction,
      menuItems: menuItems,
      onSearchTap: onSearchTap,
      onNotificationTap: onNotificationTap,
      onSettingsTap: onSettingsTap,
      searchSuggestionsBuilder: searchSuggestionsBuilder,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      backgroundColor: backgroundColor,
      scrolledSurfaceColor: scrolledSurfaceColor,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      iconButtonStyle: iconButtonStyle,
      primary: primary,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
      forceMaterialTransparency: forceMaterialTransparency,
      clipBehavior: clipBehavior,
      actionsPadding: actionsPadding,
      automaticallyImplyLeading: automaticallyImplyLeading,
      notificationPredicate: notificationPredicate,
      animateColor: animateColor,
      horizontalPadding: horizontalPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      borderRadius: borderRadius,
      curvatureColor: curvatureColor,
      primaryBandHeight: primaryBandHeight,
      showPrimaryBand: showPrimaryBand,
      isWeb: isWeb,
    );
  }

  /// Fixed Large Variant: Always Large Expanded Height.
  factory DSTopAppBar.large({
    Key? key,
    required String title,
    Widget? titleIcon,
    bool showTitleIcon = true,
    Widget? leading,
    VoidCallback? leadingAction,
    List<Widget>? actions,
    DSTopAppBarSearchBehavior searchBehavior = DSTopAppBarSearchBehavior.none,
    bool isSearchBarVisible = false,
    bool showNotificationAction = false,
    int notificationCount = 0,
    bool showSettingsAction = false,
    List<DSMenuItemButton>? menuItems,
    VoidCallback? onSearchTap,
    VoidCallback? onNotificationTap,
    VoidCallback? onSettingsTap,
    SuggestionsBuilder? searchSuggestionsBuilder,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? scrolledSurfaceColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    ButtonStyle? iconButtonStyle,
    bool primary = true,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    Clip? clipBehavior,
    EdgeInsetsGeometry? actionsPadding,
    bool automaticallyImplyLeading = true,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
    bool animateColor = false,
    double? horizontalPadding,
    double? topPadding,
    double? bottomPadding,
    double? borderRadius,
    Color? curvatureColor,
    double? primaryBandHeight,
    bool showPrimaryBand = false,
    bool? isWeb,
  }) {
    return DSTopAppBar._(
      key: key,
      type: DSTopAppBarType.large,
      titleText: title,
      titleIcon: titleIcon,
      showTitleIcon: showTitleIcon,
      leading: leading,
      leadingAction: leadingAction,
      actions: actions,
      searchBehavior: searchBehavior,
      isSearchBarVisible: isSearchBarVisible,
      showNotificationAction: showNotificationAction,
      notificationCount: notificationCount,
      showSettingsAction: showSettingsAction,
      menuItems: menuItems,
      onSearchTap: onSearchTap,
      onNotificationTap: onNotificationTap,
      onSettingsTap: onSettingsTap,
      searchSuggestionsBuilder: searchSuggestionsBuilder,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      backgroundColor: backgroundColor,
      scrolledSurfaceColor: scrolledSurfaceColor,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      iconButtonStyle: iconButtonStyle,
      primary: primary,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
      forceMaterialTransparency: forceMaterialTransparency,
      clipBehavior: clipBehavior,
      actionsPadding: actionsPadding,
      automaticallyImplyLeading: automaticallyImplyLeading,
      notificationPredicate: notificationPredicate,
      animateColor: animateColor,
      horizontalPadding: horizontalPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      borderRadius: borderRadius,
      curvatureColor: curvatureColor,
      primaryBandHeight: primaryBandHeight,
      showPrimaryBand: showPrimaryBand,
      isWeb: isWeb,
    );
  }

  /// Responsive Variant: Adapts layout based on screen size.
  /// Small (< 600): FixedSmall behavior (Inline title)
  /// Medium (600-840): FixedMedium behavior (Two-line title)
  /// Large (> 840): FixedLarge behavior (Two-line title expanded)
  factory DSTopAppBar.responsive({
    Key? key,
    required String title,
    Widget? titleIcon,
    bool showTitleIcon = true,
    Widget? leading,
    VoidCallback? leadingAction,
    List<Widget>? actions,
    DSTopAppBarSearchBehavior searchBehavior = DSTopAppBarSearchBehavior.none,
    bool isSearchBarVisible = false,
    bool showNotificationAction = false,
    int notificationCount = 0,
    bool showSettingsAction = false,
    List<DSMenuItemButton>? menuItems,
    VoidCallback? onSearchTap,
    VoidCallback? onNotificationTap,
    VoidCallback? onSettingsTap,
    SuggestionsBuilder? searchSuggestionsBuilder,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? scrolledSurfaceColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    ButtonStyle? iconButtonStyle,
    bool primary = true,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    Clip? clipBehavior,
    EdgeInsetsGeometry? actionsPadding,
    bool automaticallyImplyLeading = true,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
    bool animateColor = false,
    double? horizontalPadding,
    double? topPadding,
    double? bottomPadding,
    double? borderRadius,
    Color? curvatureColor,
    double? primaryBandHeight,
    bool showPrimaryBand = false,
    bool? isWeb,
  }) {
    return DSTopAppBar._(
      key: key,
      type: DSTopAppBarType.responsive,
      titleText: title,
      titleIcon: titleIcon,
      showTitleIcon: showTitleIcon,
      leading: leading,
      leadingAction: leadingAction,
      actions: actions,
      searchBehavior: searchBehavior,
      isSearchBarVisible: isSearchBarVisible,
      showNotificationAction: showNotificationAction,
      notificationCount: notificationCount,
      showSettingsAction: showSettingsAction,
      menuItems: menuItems,
      onSearchTap: onSearchTap,
      onNotificationTap: onNotificationTap,
      onSettingsTap: onSettingsTap,
      searchSuggestionsBuilder: searchSuggestionsBuilder,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      backgroundColor: backgroundColor,
      scrolledSurfaceColor: scrolledSurfaceColor,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      iconButtonStyle: iconButtonStyle,
      primary: primary,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
      forceMaterialTransparency: forceMaterialTransparency,
      clipBehavior: clipBehavior,
      actionsPadding: actionsPadding,
      automaticallyImplyLeading: automaticallyImplyLeading,
      notificationPredicate: notificationPredicate,
      animateColor: animateColor,
      horizontalPadding: horizontalPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      borderRadius: borderRadius,
      curvatureColor: curvatureColor,
      primaryBandHeight: primaryBandHeight,
      showPrimaryBand: showPrimaryBand,
      isWeb: isWeb,
    );
  }

  const DSTopAppBar._({
    super.key,
    required this.type,
    this.titleText,
    this.titleIcon,
    this.showTitleIcon = true,
    this.subtitleText,
    this.showReturnAction = false,
    this.leading,
    this.leadingAction,
    this.actions,
    this.centerTitle = false,
    this.searchBehavior = DSTopAppBarSearchBehavior.none,
    this.isSearchBarVisible = false,
    this.showNotificationAction = false,
    this.showSettingsAction = false,
    this.notificationCount = 0,
    this.menuItems,
    this.onSearchTap,
    this.onNotificationTap,
    this.onSettingsTap,
    this.searchSuggestionsBuilder,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.backgroundColor,
    this.scrolledSurfaceColor,
    this.foregroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.iconButtonStyle,
    this.primary = true,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.systemOverlayStyle,
    this.forceMaterialTransparency = false,
    this.clipBehavior,
    this.actionsPadding,
    this.automaticallyImplyLeading = true,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.animateColor = false,
    this.horizontalPadding,
    this.topPadding,
    this.bottomPadding,
    this.borderRadius,
    this.curvatureColor,
    this.primaryBandHeight,
    this.showPrimaryBand = false,
    this.isWeb,
  });

  final DSTopAppBarType type;
  final String? titleText;
  final Widget? titleIcon;
  final bool showTitleIcon;
  final String? subtitleText;
  final bool showReturnAction;
  final Widget? leading;
  final VoidCallback? leadingAction;
  final List<Widget>? actions;
  final bool centerTitle;
  final DSTopAppBarSearchBehavior searchBehavior;
  final bool isSearchBarVisible;
  final bool showNotificationAction;
  final bool showSettingsAction;
  final int notificationCount;
  final List<DSMenuItemButton>? menuItems;
  final VoidCallback? onSearchTap;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onSettingsTap;
  final SuggestionsBuilder? searchSuggestionsBuilder;

  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final double? scrolledUnderElevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Color? scrolledSurfaceColor;
  final Color? foregroundColor;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final ButtonStyle? iconButtonStyle;
  final bool primary;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final double? toolbarHeight;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final bool forceMaterialTransparency;
  final Clip? clipBehavior;
  final EdgeInsetsGeometry? actionsPadding;
  final bool automaticallyImplyLeading;
  final ScrollNotificationPredicate notificationPredicate;
  final bool animateColor;
  final double? horizontalPadding;
  final double? topPadding;
  final double? bottomPadding;

  /// Radius of the top curvature of the bar.
  /// Defaults to `DSSize.small.border()` (16). Use `0` to disable it.
  final double? borderRadius;

  /// Color of the band above the bar, also revealed behind the top
  /// curvature. Defaults to `context.colors.sysPrimary`.
  final Color? curvatureColor;

  /// Height of the [curvatureColor] band rendered above the bar.
  /// Defaults to [_kDefaultPrimaryBandHeight]. Ignored when
  /// [showPrimaryBand] is `false`.
  ///
  /// When the band is visible it also absorbs the system status bar
  /// inset, so the status bar area is painted with [curvatureColor]
  /// instead of the bar surface.
  final double? primaryBandHeight;

  /// Whether the [curvatureColor] band is rendered above the bar.
  /// Defaults to `true`, except on [DSTopAppBar.home] where the bar
  /// already sits below the app's own header.
  ///
  /// Turning it off only removes the band — the top curvature is still
  /// drawn, so [curvatureColor] keeps showing through the corners.
  /// Use `borderRadius: 0` to drop the curvature as well.
  final bool showPrimaryBand;

  /// Web layout: no band and no [curvatureColor] behind the corners, only
  /// the top curvature over the page background (there is no status bar to
  /// absorb, and a zero-height band left just colored corners).
  /// Defaults to [kIsWeb].
  final bool? isWeb;

  bool get _isWebLayout => isWeb ?? kIsWeb;

  static const double _kSmallScreenWidth = 600;
  static const double _kLargeScreenWidth = 840;

  // Heights & Spacers
  static const double _kDefaultToolbarHeight = 64.0;
  static const double _kSearchBarHeight = 56.0;

  /// Primary band above the bar (24 — spacing scale of the design system).
  static const double _kDefaultPrimaryBandHeight = 0.0;

  // Medium Spacers (Used when Responsive width is 600-840, or medium constructor)
  static const double _kMediumTopSpacer = 4.0;
  static const double _kMediumTitleHeight = 32.0;
  static const double _kMediumBottomSpacer = 24.0;

  // Large Spacers (Used when Responsive width >= 840, or large constructor)
  static const double _kLargeTopSpacer = 40.0;
  static const double _kLargeTitleHeight = 40.0;
  static const double _kLargeBottomSpacer = 28.0;

  @override
  Size get preferredSize {
    double height = toolbarHeight ?? _kDefaultToolbarHeight;
    double variantBottomHeight = 0;

    // Fixed Medium logic (Title below toolbar)
    if (type == DSTopAppBarType.medium) {
      height += _kMediumTopSpacer + _kMediumTitleHeight + _kMediumBottomSpacer;
    }
    // Fixed Large logic
    if (type == DSTopAppBarType.large) {
      height += _kLargeTopSpacer + _kLargeTitleHeight + _kLargeBottomSpacer;
    }

    // Home specific height addition
    final bool showSearchBar =
        searchBehavior == DSTopAppBarSearchBehavior.persistent ||
            (searchBehavior == DSTopAppBarSearchBehavior.icon &&
                isSearchBarVisible);

    // Counted once: `home` used to add it here and again below.
    if (showSearchBar && type != DSTopAppBarType.responsive) {
      variantBottomHeight += _kSearchBarHeight;
    }

    double userBottomHeight = bottom?.preferredSize.height ?? 0.0;

    double extraSpacing = (topPadding ?? 0.0) +
        (bottomPadding ?? 0.0) +
        (showPrimaryBand && !_isWebLayout
            ? (primaryBandHeight ?? _kDefaultPrimaryBandHeight)
            : 0.0);

    return Size.fromHeight(
        height + variantBottomHeight + userBottomHeight + extraSpacing);
  }

  static double getHeightForWidth({
    required double width,
    required DSTopAppBarType type,
    required bool isSearchVisible,
    required DSTopAppBarSearchBehavior searchBehavior,
    PreferredSizeWidget? bottom,
    double? toolbarHeight,
    double? topPadding,
    double? bottomPadding,
    double? primaryBandHeight,
    bool showPrimaryBand = false,
    bool? isWeb,
  }) {
    double height = toolbarHeight ?? _kDefaultToolbarHeight;

    if (type == DSTopAppBarType.responsive) {
      if (width < _kSmallScreenWidth) {
      } else if (width >= _kSmallScreenWidth && width < _kLargeScreenWidth) {
        height +=
            _kMediumTopSpacer + _kMediumTitleHeight + _kMediumBottomSpacer;
      } else if (width >= _kLargeScreenWidth) {
        height += _kLargeTopSpacer + _kLargeTitleHeight + _kLargeBottomSpacer;
      }
    } else if (type == DSTopAppBarType.medium) {
      height += _kMediumTopSpacer + _kMediumTitleHeight + _kMediumBottomSpacer;
    } else if (type == DSTopAppBarType.large) {
      height += _kLargeTopSpacer + _kLargeTitleHeight + _kLargeBottomSpacer;
    }

    final bool showSearchBar = searchBehavior ==
            DSTopAppBarSearchBehavior.persistent ||
        (searchBehavior == DSTopAppBarSearchBehavior.icon && isSearchVisible);

    if (showSearchBar) {
      height += _kSearchBarHeight;
    }

    if (bottom != null) {
      height += bottom.preferredSize.height;
    }

    height += (topPadding ?? 0.0) +
        (bottomPadding ?? 0.0) +
        (showPrimaryBand && !(isWeb ?? kIsWeb)
            ? (primaryBandHeight ?? _kDefaultPrimaryBandHeight)
            : 0.0);

    return height;
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;
    final Size size = MediaQuery.sizeOf(context);
    final double width = size.width;
    final double kHorizontalPadding = horizontalPadding ?? 16.0;

    final String? routeName = ModalRoute.of(context)?.settings.name;
    final Widget? effectiveTitleIcon = showTitleIcon
        ? (titleIcon ?? globalTitleIconResolver?.call(context, routeName))
        : null;
    final String? effectiveTitleText =
        (titleText != null && titleText!.isNotEmpty)
            ? titleText
            : (globalTitleTextResolver?.call(context, routeName) ?? titleText);

    bool isMediumLayout = false;
    bool isLargeLayout = false;

    if (type == DSTopAppBarType.responsive) {
      if (width >= _kSmallScreenWidth && width < _kLargeScreenWidth) {
        isMediumLayout = true;
      } else if (width >= _kLargeScreenWidth) {
        isLargeLayout = true;
      }
    } else if (type == DSTopAppBarType.medium) {
      isMediumLayout = true;
    } else if (type == DSTopAppBarType.large) {
      isLargeLayout = true;
    }

    final iconColor = colors.sysOnSurfaceVariant;
    const double kIconButtonRadius = 12.0;

    TextStyle? titleStyle;
    TextStyle? subtitleStyle;

    if (type == DSTopAppBarType.home) {
      titleStyle = texts.titleSmall.copyWith(color: colors.sysOnSurface);
      subtitleStyle = subtitleTextStyle ??
          texts.bodySmall.copyWith(color: colors.sysOnSurfaceVariant);
    } else if (type == DSTopAppBarType.centered) {
      titleStyle = texts.titleLarge.copyWith(color: colors.sysOnSurface);
    } else {
      if (isLargeLayout) {
        titleStyle = texts.headlineMedium.copyWith(color: colors.sysOnSurface);
      } else if (isMediumLayout) {
        titleStyle = texts.headlineSmall.copyWith(color: colors.sysOnSurface);
      } else {
        titleStyle = texts.titleLarge.copyWith(color: colors.sysOnSurface);
      }
    }

    if (titleTextStyle != null) {
      titleStyle = titleTextStyle;
    }

    // Standard Icon Button Style
    final ButtonStyle standardIconStyle = IconButton.styleFrom(
      foregroundColor: iconColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kIconButtonRadius),
      ),
    );

    // Merge User Style with Standard Style
    final ButtonStyle effectiveIconStyle =
        standardIconStyle.merge(iconButtonStyle);

    // Active Icon Button Style (Pressed background)
    final ButtonStyle activeIconStyle = effectiveIconStyle.copyWith(
      backgroundColor:
          WidgetStatePropertyAll(colors.sysSurfaceContainerHighest),
    );

    // --- Build Leading with Action Wrapper ---
    Widget? effectiveLeading = leading;

    if (type == DSTopAppBarType.home) {
      if (showReturnAction) {
        if (effectiveLeading != null) {
          effectiveLeading = Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const BackButton(),
              effectiveLeading,
            ],
          );
        } else {
          effectiveLeading = const BackButton();
        }
      } else if (effectiveLeading != null) {
        effectiveLeading = Padding(
          padding: EdgeInsets.only(left: kHorizontalPadding),
          child: effectiveLeading,
        );
      }
    }

    if (effectiveLeading != null && leadingAction != null) {
      effectiveLeading = GestureDetector(
        onTap: leadingAction,
        behavior: HitTestBehavior.opaque,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: effectiveLeading,
        ),
      );
    }

    // --- Build Actions ---
    List<Widget> effectiveActions = [];

    if (searchBehavior == DSTopAppBarSearchBehavior.icon) {
      effectiveActions.add(
        IconButton(
          style: isSearchBarVisible ? activeIconStyle : effectiveIconStyle,
          icon: DSIcon.small(icon: Symbols.search),
          onPressed: onSearchTap,
        ),
      );
    }

    if (showNotificationAction) {
      Widget notificationIcon = DSIcon.small(icon: Symbols.notifications);

      if (notificationCount > 0) {
        notificationIcon = ExcludeSemantics(
          child: DSBadge.count(
            context,
            count: notificationCount,
            child: notificationIcon,
          ),
        );
      }

      effectiveActions.add(
        IconButton(
          tooltip: notificationCount > 0
              ? 'Notificações: $notificationCount notificações não lidas'
              : 'Notificações',
          style: effectiveIconStyle,
          icon: notificationIcon,
          onPressed: onNotificationTap,
        ),
      );
    }

    if (showSettingsAction) {
      effectiveActions.add(
        IconButton(
          tooltip: 'Configurações',
          style: effectiveIconStyle,
          icon: DSIcon.small(icon: Symbols.settings),
          onPressed: onSettingsTap,
        ),
      );
    }

    if (actions != null) {
      effectiveActions.addAll(actions!);
    }

    if (menuItems != null && menuItems!.isNotEmpty) {
      effectiveActions.add(
        DSMenu.anchor(
          menuChildren: menuItems!,
          builder: (context, controller, child) {
            return IconButton(
              style: controller.isOpen ? activeIconStyle : effectiveIconStyle,
              icon: DSIcon.small(icon: Symbols.more_vert),
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
            );
          },
        ),
      );
    }

    Widget buildTitleWithIcon(TextStyle? style) {
      final Widget textWidget = Text(
        effectiveTitleText ?? '',
        style: style,
        overflow: TextOverflow.ellipsis,
      );

      if (effectiveTitleIcon != null) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 32.0,
                maxHeight: 32.0,
              ),
              child: effectiveTitleIcon,
            ),
            const SizedBox(width: 8.0),
            Flexible(child: textWidget),
          ],
        );
      }
      return textWidget;
    }

    Widget? effectiveToolbarTitle;

    if (type == DSTopAppBarType.home) {
      effectiveToolbarTitle = Semantics(
        button: true,
        label: '${effectiveTitleText ?? ''}. ${subtitleText ?? ''}',
        excludeSemantics: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(effectiveTitleText ?? '', style: titleStyle),
            if (subtitleText != null) Text(subtitleText!, style: subtitleStyle),
          ],
        ),
      );
    } else if (type == DSTopAppBarType.centered) {
      effectiveToolbarTitle = buildTitleWithIcon(titleStyle);
    } else {
      if (!isMediumLayout && !isLargeLayout) {
        effectiveToolbarTitle = buildTitleWithIcon(titleStyle);
      } else {
        effectiveToolbarTitle = null;
      }
    }

    List<Widget> internalBottomChildren = [];
    double internalBottomHeight = 0.0;

    if (isMediumLayout) {
      internalBottomChildren.add(const SizedBox(height: _kMediumTopSpacer));
      internalBottomChildren.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: buildTitleWithIcon(titleStyle),
          ),
        ),
      );
      internalBottomChildren.add(const SizedBox(height: _kMediumBottomSpacer));

      internalBottomHeight +=
          _kMediumTopSpacer + _kMediumTitleHeight + _kMediumBottomSpacer;
    } else if (isLargeLayout) {
      internalBottomChildren.add(const SizedBox(height: _kLargeTopSpacer));
      internalBottomChildren.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: buildTitleWithIcon(titleStyle),
          ),
        ),
      );
      internalBottomChildren.add(const SizedBox(height: _kLargeBottomSpacer));

      internalBottomHeight +=
          _kLargeTopSpacer + _kLargeTitleHeight + _kLargeBottomSpacer;
    }

    final bool showSearchBar =
        searchBehavior == DSTopAppBarSearchBehavior.persistent ||
            (searchBehavior == DSTopAppBarSearchBehavior.icon &&
                isSearchBarVisible);

    if (showSearchBar) {
      internalBottomChildren.add(
        SizedBox(
          height: _kSearchBarHeight,
          child: DSSearchAnchor.searchBar(
            barBackgroundColor:
                const WidgetStatePropertyAll(Colors.transparent),
            barShape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            ),
            suggestionsBuilder: searchSuggestionsBuilder ?? (_, __) => [],
            barHintText: 'Hinted search text',
            barElevation: const WidgetStatePropertyAll(0),
          ),
        ),
      );
      internalBottomChildren.add(const DSDivider(height: 0));
      internalBottomHeight += _kSearchBarHeight;
    }

    PreferredSizeWidget? effectiveBottomWidget;

    if (internalBottomChildren.isNotEmpty || bottom != null) {
      List<Widget> combinedChildren = [...internalBottomChildren];
      double totalHeight = internalBottomHeight;

      if (bottom != null) {
        combinedChildren.add(bottom!);
        totalHeight += bottom!.preferredSize.height;
      }

      effectiveBottomWidget = PreferredSize(
        preferredSize: Size.fromHeight(totalHeight),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: combinedChildren,
        ),
      );
    }

    final double rightPadding = max(0.0, kHorizontalPadding - 12.0);

    final bgColor = backgroundColor ?? colors.sysSurface;
    final double effectiveBorderRadius = borderRadius ?? DSSize.small.border();
    final Color effectiveCurvatureColor = curvatureColor ?? colors.sysPrimary;
    final double bandHeight = primaryBandHeight ?? _kDefaultPrimaryBandHeight;
    final bool isWebLayout = _isWebLayout;
    final bool hasBand = !isWebLayout && showPrimaryBand && bandHeight > 0;
    // The band takes over the status bar area so it is not painted with the
    // bar surface; the inner AppBar must not inset it a second time.
    final double topInset = primary ? MediaQuery.paddingOf(context).top : 0.0;

    final appBarWidget = IconButtonTheme(
      data: IconButtonThemeData(
        style: effectiveIconStyle,
      ),
      child: AppBar(
        backgroundColor: _ScrollAwareBackgroundColor(
          idleColor: bgColor,
          scrolledColor: scrolledSurfaceColor ?? colors.sysSurfaceContainer,
        ),
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: elevation ?? 0,
        leading: effectiveLeading,
        title: effectiveToolbarTitle,
        centerTitle: centerTitle,
        actions: effectiveActions,
        bottom: effectiveBottomWidget,
        foregroundColor: foregroundColor ?? colors.sysOnSurface,
        toolbarHeight: toolbarHeight ?? _kDefaultToolbarHeight,
        leadingWidth: type == DSTopAppBarType.home && effectiveLeading != null
            ? showReturnAction
                ? (leading != null ? 88.0 : leadingWidth)
                : kHorizontalPadding + 40.0
            : leadingWidth,
        titleSpacing: titleSpacing ??
            (effectiveLeading == null && !automaticallyImplyLeading
                ? kHorizontalPadding
                : 8.0),
        flexibleSpace: flexibleSpace,
        shadowColor: shadowColor,
        shape: shape,
        iconTheme: iconTheme,
        actionsIconTheme: actionsIconTheme,
        primary: hasBand ? false : primary,
        excludeHeaderSemantics: excludeHeaderSemantics,
        toolbarOpacity: toolbarOpacity,
        bottomOpacity: bottomOpacity,
        toolbarTextStyle: toolbarTextStyle,
        systemOverlayStyle: systemOverlayStyle,
        forceMaterialTransparency: forceMaterialTransparency,
        clipBehavior: clipBehavior,
        actionsPadding: actionsPadding ?? EdgeInsets.only(right: rightPadding),
        automaticallyImplyLeading: automaticallyImplyLeading,
        notificationPredicate: notificationPredicate,
        animateColor: animateColor,
      ),
    );

    final bool isStacked =
        hasBand || topPadding != null || bottomPadding != null;

    // Inside a Column the AppBar gets unbounded height constraints, which its
    // own flex layout cannot resolve — so give it its exact height.
    Widget surface = isStacked
        ? SizedBox(
            height: (toolbarHeight ?? _kDefaultToolbarHeight) +
                (effectiveBottomWidget?.preferredSize.height ?? 0.0) +
                (hasBand ? 0.0 : topInset),
            child: appBarWidget,
          )
        : appBarWidget;

    if (topPadding != null || bottomPadding != null) {
      // Wrap in a Container to apply background color to the spacers
      surface = Container(
        color: bgColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (topPadding != null) SizedBox(height: topPadding),
            surface,
            if (bottomPadding != null) SizedBox(height: bottomPadding),
          ],
        ),
      );
    }

    if (effectiveBorderRadius > 0) {
      // The surface is clipped on its top corners so the curvature color
      // (sysPrimary by default) shows through the rounded edges.
      surface = ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(effectiveBorderRadius),
        ),
        child: surface,
      );
    }

    if (!hasBand) {
      // Curvature only: no Column, so the AppBar keeps bounded constraints.
      // On web the corners show the page itself, not the curvature color.
      return effectiveBorderRadius > 0 && !isWebLayout
          ? Container(color: effectiveCurvatureColor, child: surface)
          : surface;
    }

    return Container(
      color: effectiveCurvatureColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: bandHeight + topInset),
          surface,
        ],
      ),
    );
  }
}

class _ScrollAwareBackgroundColor extends Color implements WidgetStateColor {
  final Color idleColor;
  final Color scrolledColor;

  _ScrollAwareBackgroundColor({
    required this.idleColor,
    required this.scrolledColor,
  }) : super(idleColor.toARGB32());

  @override
  Color resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.scrolledUnder)) {
      return scrolledColor;
    }
    return idleColor;
  }
}
