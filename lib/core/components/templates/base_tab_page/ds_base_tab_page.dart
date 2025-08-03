import 'package:design_system/core/components/molecules/tabs/ds_tabs.dart';
import 'package:flutter/material.dart';

class DSBaseTabPageModel {
  final List<DSTabModel> tabs;
  final DSTabsType tabsType;
  final List<Widget> children;

  DSBaseTabPageModel(
      {required this.tabs,
      this.tabsType = DSTabsType.title,
      required this.children});
}

class DSBaseTabPage extends StatefulWidget {
  const DSBaseTabPage({super.key, required this.baseTabPage});

  final DSBaseTabPageModel baseTabPage;

  @override
  State<DSBaseTabPage> createState() => _DSBaseTabPageState();
}

class _DSBaseTabPageState extends State<DSBaseTabPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: widget.baseTabPage.tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getTab(widget.baseTabPage.tabsType),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: widget.baseTabPage.children,
        ))
      ],
    );
  }

  DSTabs _getTab(DSTabsType tabsType) {
    switch (tabsType) {
      case DSTabsType.title:
        return DSTabs.title(
          tabs: widget.baseTabPage.tabs,
          tabController: _tabController,
        );
      case DSTabsType.bulletTop:
        return DSTabs.bulletTop(
          tabs: widget.baseTabPage.tabs,
          tabController: _tabController,
        );
      case DSTabsType.bulletLeft:
        return DSTabs.bulletLeft(
          tabs: widget.baseTabPage.tabs,
          tabController: _tabController,
        );
    }
  }
}
