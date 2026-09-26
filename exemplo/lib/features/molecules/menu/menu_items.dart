import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/menu_items/menu_item/ds_menu_item_button.dart';
import 'package:design_system/core/components/molecules/menu_items/menu_item/ds_submenu_item_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      backgroundColor: context.colors.sysSurface,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DSMenuItemButton(
              onPressed: context.knobs.nullable.options(
                label: 'Enabled',
                initial: () {},
              ),
              buttonText: context.knobs.text(
                label: 'Titulo - Menu',
                initial: 'Menu Item',
              ),
              leadingIcon: context.knobs.nullable.options(
                label: 'Leading Icon',
                initial: const DSIcon.custom(icon: Symbols.content_cut),
                enabled: true,
              ),
              trailingIcon: context.knobs.nullable.options(
                label: 'Trailing Icon',
                initial: const DSIcon.custom(icon: Symbols.more_vert),
                enabled: false,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DSSubmenuItemButton(
              buttonText: context.knobs.text(
                label: 'Titulo - Submenu',
                initial: 'SubMenu Item',
              ),
              leadingIcon: context.knobs.nullable.options(
                label: 'Leading Icon',
                initial: const DSIcon.custom(icon: Symbols.content_cut),
                enabled: true,
              ),
              trailingIcon: context.knobs.nullable.options(
                label: 'Trailing Icon',
                initial: const DSIcon.custom(icon: Symbols.more_vert),
                enabled: false,
              ),
              children: [
                DSMenuItemButton(
                  onPressed: () {},
                  buttonText: 'Item 1',
                  leadingIcon: const DSIcon.custom(icon: Symbols.content_cut),
                ),
                DSMenuItemButton(
                  onPressed: () {},
                  buttonText: 'Item 2',
                  trailingIcon: const DSIcon.custom(icon: Symbols.content_cut),
                ),
                DSMenuItemButton(
                  onPressed: () {},
                  buttonText: 'Item 3',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
