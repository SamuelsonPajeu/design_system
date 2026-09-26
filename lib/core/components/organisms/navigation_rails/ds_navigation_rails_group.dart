import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_item.dart';

class DSNavigationRailsGroup {
  const DSNavigationRailsGroup({
    this.title,
    required this.items,
  });

  final String? title;
  final List<DSNavigationRailsItem> items;
}
