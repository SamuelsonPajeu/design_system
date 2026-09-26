import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/tabs/ds_tabs.dart';
import 'package:design_system/core/components/molecules/top_app_bar/ds_top_app_bar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/components/templates/base_tab_page/ds_base_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomTabPage extends StatefulWidget {
  const CustomTabPage({super.key});

  @override
  State<CustomTabPage> createState() => _CustomTabPageState();
}

class _CustomTabPageState extends State<CustomTabPage> {
  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      appBar: DSTopAppBar.centered(
        title: 'Custom Tabs',
      ),
      body: DSBaseTabPage(
        baseTabPage: DSBaseTabPageModel(
          tabs: [
            DSTabModel(title: 'TAB1', icon: Symbols.abc),
            DSTabModel(title: 'TAB2', icon: Symbols.abc_rounded),
            DSTabModel(title: 'TAB3', icon: Symbols.abc_sharp),
          ],
          tabsType: DSTabsType.bulletLeft,
          children: [
            const Center(
              child: SizedBox(
                width: 150,
                child: DSText('Tab1'),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 150,
                child: DSText('Tab2'),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 150,
                child: DSText('Tab3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
