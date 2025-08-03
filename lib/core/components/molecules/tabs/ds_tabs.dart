import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';

enum DSTabColor {
  primary,
  secondary,
  custom,
}

enum DSTabsType {
  title,
  bulletTop,
  bulletLeft,
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
  const DSTabs.title(
      {super.key,
      required this.tabs,
      required this.tabController,
      this.labelPadding,
      this.indicator,
      this.labelColor,
      this.unselectedLabelColor,
      this.labelStyle,
      this.onTap})
      : _dsTabsType = DSTabsType.title;

  const DSTabs.bulletTop(
      {super.key,
      required this.tabs,
      required this.tabController,
      this.labelPadding,
      this.indicator,
      this.labelColor,
      this.unselectedLabelColor,
      this.labelStyle,
      this.onTap})
      : _dsTabsType = DSTabsType.bulletTop;

  const DSTabs.bulletLeft(
      {super.key,
      required this.tabs,
      required this.tabController,
      this.labelPadding,
      this.indicator,
      this.labelColor,
      this.unselectedLabelColor,
      this.labelStyle,
      this.onTap})
      : _dsTabsType = DSTabsType.bulletLeft;

  final List<DSTabModel> tabs;

  final EdgeInsets? labelPadding;
  final TabController tabController;
  final UnderlineTabIndicator? indicator;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final TextStyle? labelStyle;
  final ValueChanged<int>? onTap;
  final DSTabsType _dsTabsType;

  @override
  State<DSTabs> createState() => _DSTabsState();
}

class _DSTabsState extends State<DSTabs> {
  late TabController _tabController;
  late UnderlineTabIndicator? _indicator;

  @override
  void initState() {
    super.initState();
    _tabController = widget.tabController;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Color _getLabelColor(DSTabModel tab) {
    if (tab.labelColor != null) {
      return tab.labelColor!;
    }
    switch (tab.color) {
      case DSTabColor.primary:
        return Theme.of(context).colors.sysPrimary;
      case DSTabColor.secondary:
        return Theme.of(context).colors.sysSecondary;
      case DSTabColor.custom:
        return widget.labelColor ?? Theme.of(context).colors.sysPrimary;
    }
  }

  Color _getUnselectedLabelColor(DSTabModel tab) {
    if (tab.unselectedLabelColor != null) {
      return tab.unselectedLabelColor!;
    }
    switch (tab.color) {
      case DSTabColor.primary:
        return Theme.of(context).colors.sysOnSurfaceVariant;
      case DSTabColor.secondary:
        return Theme.of(context).colors.sysOnSurfaceVariant;
      case DSTabColor.custom:
        return widget.unselectedLabelColor ??
            Theme.of(context).colors.sysOnSurfaceVariant;
    }
  }

  @override
  Widget build(BuildContext context) {
    final DSTabsType type = widget._dsTabsType;
    if (widget.indicator != null) {
      _indicator = widget.indicator;
    } else {
      _indicator = UnderlineTabIndicator(
        borderSide:
            BorderSide(width: 4, color: Theme.of(context).colors.sysPrimary),
        insets: const EdgeInsets.symmetric(horizontal: 16),
      );
    }
    return TabBar(
      controller: _tabController,
      labelPadding: widget.labelPadding,
      onTap: widget.onTap,
      tabs: widget.tabs.map((DSTabModel tab) {
        return _getTypeOfTab(type, tab);
      }).toList(),
      labelColor: _getLabelColor(widget.tabs.first),
      unselectedLabelColor: _getUnselectedLabelColor(widget.tabs.first),
      labelStyle: widget.labelStyle,
      indicator: _indicator,
    );
  }

  Tab _getTypeOfTab(DSTabsType dsTabsType, DSTabModel tab) {
    switch (dsTabsType) {
      case DSTabsType.title:
        return Tab(text: tab.title);
      case DSTabsType.bulletLeft:
        return Tab(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const SizedBox(
                width: 10,
              ),
              if (tab.icon != null) ...[
                DSIcon(
                  icon: tab.icon,
                  size: 16,
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
              if (tab.title != null) ...[
                Text(
                  tab.title!,
                  maxLines: 1,
                  style: tab.textStyle,
                ),
              ],
              const SizedBox(
                width: 10,
              )
            ]));
      case DSTabsType.bulletTop:
        return Tab(icon: DSIcon(icon: tab.icon, size: 16), text: tab.title);
    }
  }
}
