import 'package:design_system/core/components/molecules/floating_action_button/ds_floating_action_button.dart';
import 'package:design_system/core/components/molecules/listtile/ds_listtile.dart';
import 'package:design_system/core/components/molecules/tabs/ds_tabs.dart';
import 'package:design_system/core/components/templates/base_list/ds_base_list.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> with TickerProviderStateMixin {
  final ScrollController controllerList = ScrollController();
  final double appBarHeight = 200;

  List<DSListTile> itemsList = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 41; i++) {
      itemsList.add(DSListTile(
          typeOfListTile: TypeOfListTile.listItem, title: 'teste $i'));
    }
    final List<DSBaseListModelTabs> tabs = <DSBaseListModelTabs>[
      DSBaseListModelTabs(tab: DSTabModel(title: 'Tab1'), itemsList: itemsList),
      DSBaseListModelTabs(tab: DSTabModel(title: 'Tab2'), itemsList: itemsList),
      DSBaseListModelTabs(tab: DSTabModel(title: 'Tab3'), itemsList: itemsList)
    ];

    if (context.knobs.boolean(label: 'Tabs', initial: false) == true) {
      final TabController tabController =
          TabController(length: tabs.length, vsync: this);
      return DSBaseList.tabs(
          controllerList: controllerList,
          typeList: context.knobs.options(
              initial: DSBaseListType.pageMode,
              options: const <Option<DSBaseListType>>[
                Option(label: 'Page Mode', value: DSBaseListType.pageMode),
                Option(label: 'List Mode', value: DSBaseListType.listMode),
              ],
              label: 'Option List'),
          showFloatingActionButtonOnScroll: true,
          showFloatingActionButtonMaxScroll: 150,
          floatingActionButton: DSFloatingActionButton(
            onPressed: () => controllerList.animateTo(-(appBarHeight),
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn),
            floatingActionButtonStyle: DSFloatingActionButtonColor.primary,
            icon: Symbols.arrow_upward,
            iconColor: Theme.of(context).colors.sysOnTertiary,
          ),
          tabController: tabController,
          tabs: tabs);
    }
    return DSBaseList(
      controllerList: controllerList,
      typeList: context.knobs.options(
          initial: DSBaseListType.pageMode,
          options: const <Option<DSBaseListType>>[
            Option(label: 'Page Mode', value: DSBaseListType.pageMode),
            Option(label: 'List Mode', value: DSBaseListType.listMode),
            Option(
                label: 'Just SliverList', value: DSBaseListType.justSliverList),
          ],
          label: 'Option List'),
      showFloatingActionButtonOnScroll: true,
      showFloatingActionButtonMaxScroll: 150,
      floatingActionButton: DSFloatingActionButton(
        onPressed: () => controllerList.animateTo(-(appBarHeight),
            duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn),
        floatingActionButtonStyle: DSFloatingActionButtonColor.primary,
        icon: Symbols.arrow_upward,
        iconColor: Theme.of(context).colors.sysOnTertiary,
      ),
      itemsList: itemsList,
    );
  }
}
