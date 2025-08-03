import 'package:design_system/core/components/atoms/menu_item_base/ds_menu_item_base.dart';
import 'package:flutter/material.dart';

class DSMenuList extends StatelessWidget {
  const DSMenuList({
    super.key,
    required this.menuItems,
    this.spacing = 0,
  });
  final List<DSBaseMenuItem> menuItems;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return menuItems[index];
      },
      separatorBuilder: (context, index) => SizedBox(
        height: spacing,
      ),
    );
  }
}
