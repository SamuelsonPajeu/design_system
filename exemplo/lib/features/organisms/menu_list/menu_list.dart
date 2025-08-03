import 'package:design_system/core/components/molecules/menu_items/menu_item/ds_menu_item_button.dart';
import 'package:design_system/core/components/molecules/menu_items/menu_item/ds_submenu_item_button.dart';
import 'package:design_system/core/components/organisms/menu_list/ds_menu_bar.dart';
import 'package:design_system/core/components/organisms/menu_list/ds_menu_list.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        DSMenuBar(
                          menuName: 'Main Menu',
                          menuItems: [
                            DSMenuItemButton(
                              buttonText: 'Menu Item',
                              onPressed: () {},
                            ),
                            const DSSubmenuItemButton(
                              buttonText: 'SubMenu Item',
                              children: [
                                DSMenuItemButton(buttonText: 'Item 1'),
                                DSMenuItemButton(buttonText: 'Item 2'),
                                DSMenuItemButton(buttonText: 'Item 3'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(
                    child: DSMenuList(
                      spacing: context.knobs.slider(
                        label: 'Spacing',
                        initial: 0,
                        min: 0,
                        max: 10,
                      ),
                      menuItems: List.generate(
                        25,
                        (index) {
                          return DSMenuItemButton(
                            buttonText: 'Item $index',
                            onPressed: () {},
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
