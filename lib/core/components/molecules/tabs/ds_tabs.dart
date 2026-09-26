import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum DSTabColor {
  primary,
  custom,
}

enum DSTabsType {
  title,
  bulletTop,
  bulletLeft,
  bulletOnly,
  titleOnlyFullIndicator,
}

class DSTabModel {
  final String? title;
  final IconData? icon;
  final DSTabColor color;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final TextStyle? textStyle;

  DSTabModel({
    this.title,
    this.icon,
    this.color = DSTabColor.primary,
    this.labelColor,
    this.unselectedLabelColor,
    this.textStyle,
  });
}

class DSTabs extends StatefulWidget {
  // --- Constructors ---

  const DSTabs.title({
    super.key,
    required this.tabs,
    required this.tabController,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.onHover,
    this.onFocusChange,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.textScaler,
    this.indicatorAnimation,
  }) : _dsTabsType = DSTabsType.title;

  const DSTabs.bulletTop({
    super.key,
    required this.tabs,
    required this.tabController,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.onHover,
    this.onFocusChange,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.textScaler,
    this.indicatorAnimation,
  }) : _dsTabsType = DSTabsType.bulletTop;

  const DSTabs.bulletLeft({
    super.key,
    required this.tabs,
    required this.tabController,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.onHover,
    this.onFocusChange,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.textScaler,
    this.indicatorAnimation,
  }) : _dsTabsType = DSTabsType.bulletLeft;

  const DSTabs.bulletOnly({
    super.key,
    required this.tabs,
    required this.tabController,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.onHover,
    this.onFocusChange,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.textScaler,
    this.indicatorAnimation,
  }) : _dsTabsType = DSTabsType.bulletOnly;

  const DSTabs.titleOnlyFullIndicator({
    super.key,
    required this.tabs,
    required this.tabController,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.onHover,
    this.onFocusChange,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.textScaler,
    this.indicatorAnimation,
  }) : _dsTabsType = DSTabsType.titleOnlyFullIndicator;

  // --- Fields ---
  final List<DSTabModel> tabs;
  final TabController tabController;
  final bool isScrollable;
  final EdgeInsetsGeometry? padding;
  final Color? indicatorColor;
  final bool automaticIndicatorColorAdjustment;
  final double indicatorWeight;
  final EdgeInsetsGeometry indicatorPadding;
  final Decoration? indicator;
  final TabBarIndicatorSize? indicatorSize;
  final Color? dividerColor;
  final double? dividerHeight;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final Color? unselectedLabelColor;
  final TextStyle? unselectedLabelStyle;
  final DragStartBehavior dragStartBehavior;
  final WidgetStateProperty<Color?>? overlayColor;
  final MouseCursor? mouseCursor;
  final bool? enableFeedback;
  final ValueChanged<int>? onTap;
  final TabValueChanged<bool>? onHover;
  final TabValueChanged<bool>? onFocusChange;
  final ScrollPhysics? physics;
  final InteractiveInkFeatureFactory? splashFactory;
  final BorderRadius? splashBorderRadius;
  final TabAlignment? tabAlignment;
  final TextScaler? textScaler;
  final TabIndicatorAnimation? indicatorAnimation;
  final DSTabsType _dsTabsType;

  @override
  State<DSTabs> createState() => _DSTabsState();
}

class _DSTabsState extends State<DSTabs> {
  Color _getLabelColor(DSTabModel tab) {
    if (widget.labelColor != null) {
      return widget.labelColor!;
    }
    if (tab.labelColor != null) {
      return tab.labelColor!;
    }

    if (widget._dsTabsType == DSTabsType.titleOnlyFullIndicator) {
      return context.colors.sysOnSurface;
    }

    switch (tab.color) {
      case DSTabColor.primary:
        return context.colors.sysPrimary;
      case DSTabColor.custom:
        return context.colors.sysPrimary;
    }
  }

  Color _getUnselectedLabelColor(DSTabModel tab) {
    if (widget.unselectedLabelColor != null) {
      return widget.unselectedLabelColor!;
    }
    if (tab.unselectedLabelColor != null) {
      return tab.unselectedLabelColor!;
    }
    return context.colors.sysOnSurfaceVariant;
  }

  @override
  Widget build(BuildContext context) {
    final DSTabsType type = widget._dsTabsType;
    final firstTab = widget.tabs.isNotEmpty ? widget.tabs.first : DSTabModel();

    TabBarIndicatorSize? effectiveIndicatorSize = widget.indicatorSize;
    if (type == DSTabsType.titleOnlyFullIndicator) {
      effectiveIndicatorSize = TabBarIndicatorSize.tab;
    }

    return TabBar(
      controller: widget.tabController,
      tabs: widget.tabs.map((DSTabModel tab) {
        return _getTypeOfTab(type, tab);
      }).toList(),
      isScrollable: widget.isScrollable,
      padding: widget.padding,
      indicatorColor: widget.indicatorColor ?? context.colors.sysPrimary,
      automaticIndicatorColorAdjustment:
          widget.automaticIndicatorColorAdjustment,
      indicatorWeight: widget.indicatorWeight,
      indicatorPadding: widget.indicatorPadding,
      indicator: widget.indicator,
      indicatorSize: effectiveIndicatorSize,
      dividerColor: widget.dividerColor,
      dividerHeight: widget.dividerHeight,
      labelColor: _getLabelColor(firstTab),
      labelStyle: widget.labelStyle ?? context.texts.titleSmall,
      labelPadding: widget.labelPadding,
      unselectedLabelColor: _getUnselectedLabelColor(firstTab),
      unselectedLabelStyle: widget.unselectedLabelStyle,
      dragStartBehavior: widget.dragStartBehavior,
      overlayColor: widget.overlayColor,
      mouseCursor: widget.mouseCursor,
      enableFeedback: widget.enableFeedback,
      onTap: widget.onTap,
      onHover: widget.onHover,
      onFocusChange: widget.onFocusChange,
      physics: widget.physics,
      splashFactory: widget.splashFactory,
      splashBorderRadius: widget.splashBorderRadius,
      tabAlignment: widget.tabAlignment,
      textScaler: widget.textScaler,
      indicatorAnimation: widget.indicatorAnimation,
    );
  }

  Tab _getTypeOfTab(DSTabsType dsTabsType, DSTabModel tab) {
    switch (dsTabsType) {
      case DSTabsType.title:
      case DSTabsType.titleOnlyFullIndicator:
        return Tab(
          text: tab.title,
        );
      case DSTabsType.bulletLeft:
        return Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (tab.icon != null) ...[
                DSIcon.custom(
                    icon: tab.icon,
                    size: 16,
                    color: context.colors.sysOnSurfaceVariant),
                const SizedBox(width: 8),
              ],
              if (tab.title != null) ...[
                Text(
                  tab.title!,
                  style: tab.textStyle,
                ),
              ],
            ],
          ),
        );
      case DSTabsType.bulletTop:
        return Tab(
          iconMargin: const EdgeInsets.all(8),
          icon: tab.icon != null
              ? DSIcon.custom(
                  icon: tab.icon,
                  size: 16,
                  color: context.colors.sysOnSurfaceVariant)
              : null,
          text: tab.title,
        );
      case DSTabsType.bulletOnly:
        return Tab(
          icon: tab.icon != null
              ? DSIcon.custom(
                  icon: tab.icon,
                  size: 16,
                  color: context.colors.sysOnSurfaceVariant)
              : null,
          text: null,
        );
    }
  }
}
