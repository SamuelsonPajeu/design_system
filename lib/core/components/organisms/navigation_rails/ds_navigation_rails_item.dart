import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_types.dart';
import 'package:flutter/material.dart';

class DSNavigationRailsItem extends StatelessWidget {
  const DSNavigationRailsItem({
    super.key,
    this.selectedIcon,
    this.value,
    this.badgeValue,
    this.labelBehavior = DSNavigationRailsItemLabelBehavior.showsUnder,
    required this.icon,
    required this.label,
  });

  final Widget icon;
  final Widget? selectedIcon;
  final String label;
  final String? value;
  final String? badgeValue;
  final DSNavigationRailsItemLabelBehavior labelBehavior;

  @override
  Widget build(BuildContext context) {
    if (labelBehavior == DSNavigationRailsItemLabelBehavior.showsUnder) {
      return Column(
        children: [
          icon,
          Text(label),
        ],
      );
    }
    if (labelBehavior == DSNavigationRailsItemLabelBehavior.showsBeside) {
      return Row(
        children: [
          icon,
          Text(label),
        ],
      );
    }
    if (labelBehavior == DSNavigationRailsItemLabelBehavior.showsNone) {
      return icon;
    }
    return icon;
  }
}
