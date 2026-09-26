import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer_item.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSNavigationDrawer extends StatelessWidget {
  const DSNavigationDrawer({
    super.key,
    required this.title,
    required this.items,
    required this.selectedIndex,
    this.onItemSelected,
    this.backgroundColor,
    this.width = 350,
    this.fill,
  });

  final String title;
  final List<DSNavigationDrawerItem> items;
  final int selectedIndex;
  final ValueChanged<int>? onItemSelected;
  final Color? backgroundColor;
  final double width;
  final double? fill;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    return Container(
      width: width,
      color: backgroundColor ?? colors.sysSurfaceContainerLow,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 16, 32),
              child: DSText(
                title,
                style: texts.titleSmall.copyWith(
                  fontWeight: FontWeight.w700,
                  color: colors.sysOnSurface,
                ),
                autoSize: false,
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  final isSelected = index == selectedIndex;

                  return _DSNavigationDrawerTile(
                    item: item,
                    isSelected: isSelected,
                    onTap: () {
                      onItemSelected?.call(index);
                      item.onTap?.call();
                    },
                    fill: fill,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DSNavigationDrawerTile extends StatelessWidget {
  const _DSNavigationDrawerTile({
    required this.item,
    required this.isSelected,
    required this.onTap,
    this.fill,
  });

  final DSNavigationDrawerItem item;
  final bool isSelected;
  final VoidCallback onTap;
  final double? fill;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final backgroundColor =
        isSelected ? colors.sysPrimaryContainer : Colors.transparent;
    final contentColor = isSelected
        ? colors.sysOnSecondaryContainer
        : colors.sysOnSurfaceVariant;

    return Padding(
      padding: EdgeInsets.zero,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  DSIcon.small(
                    icon: item.icon,
                    color: contentColor,
                    fill: (item.fill ?? fill) ?? (isSelected ? 1 : 0),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: DSText(
                      item.label,
                      style: texts.labelLarge.copyWith(
                        color: contentColor,
                        fontWeight: FontWeight.w700,
                      ),
                      autoSize: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
