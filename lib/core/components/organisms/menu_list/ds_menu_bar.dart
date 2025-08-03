import 'package:design_system/core/components/atoms/menu_item_base/ds_menu_item_base.dart';
import 'package:design_system/core/components/molecules/menu_items/menu_item/ds_submenu_item_button.dart';
import 'package:flutter/material.dart';

class DSMenuBar extends StatefulWidget {
  const DSMenuBar({
    super.key,
    required this.menuName,
    required this.menuItems,
  });
  final String menuName;
  final List<DSBaseMenuItem> menuItems;

  @override
  State<DSMenuBar> createState() => _DSMenuBarState();
}

class _DSMenuBarState extends State<DSMenuBar> {
  @override
  Widget build(BuildContext context) {
    return MenuBar(
      children: [
        DSSubmenuItemButton(
          buttonText: widget.menuName,
          children: widget.menuItems,
        ),
      ],
    );
  }
}
