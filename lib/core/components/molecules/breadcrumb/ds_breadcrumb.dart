import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Defines an item in the [DSBreadcrumb].
class DSBreadcrumbItem {
  const DSBreadcrumbItem({
    required this.label,
    this.icon,
    this.onTap,
  });

  /// The text label for the item.
  final String label;

  /// Optional icon for the item.
  final IconData? icon;

  /// Callback when the item is tapped.
  /// If null, the item is considered non-interactive (usually the current page).
  final VoidCallback? onTap;
}

enum DSBreadcrumbType {
  iconAndText,
  textOnly,
  iconOnly,
}

enum DSBreadcrumbOverflow {
  right, // Truncate end: Home > Page > ...
  left, // Truncate start: ... > Page > Leaf
  middle, // Truncate middle: Home > ... > Leaf
  none, // Show all (wrap if needed)
}

/// A Design System Breadcrumb widget for navigation.
class DSBreadcrumb extends StatelessWidget {
  const DSBreadcrumb({
    super.key,
    required this.items,
    this.type = DSBreadcrumbType.iconAndText,
    this.overflow = DSBreadcrumbOverflow.none,
    this.maxVisibleItems = 4,
  });

  /// The full list of breadcrumb items.
  final List<DSBreadcrumbItem> items;

  /// The visual style of the breadcrumb items.
  final DSBreadcrumbType type;

  /// How to handle the list if it exceeds [maxVisibleItems].
  final DSBreadcrumbOverflow overflow;

  /// The maximum number of items to show before collapsing.
  /// Used when [overflow] is not [DSBreadcrumbOverflow.none].
  final int maxVisibleItems;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return const SizedBox.shrink();

    final visibleItems = _getEffectiveItems();
    final separatorColor = context.colors.sysOnSurface.withValues(alpha: 0.38);

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 4,
      runSpacing: 4,
      children: List.generate(visibleItems.length * 2 - 1, (index) {
        // Even indices are items, odd indices are separators
        if (index.isEven) {
          final itemIndex = index ~/ 2;
          final item = visibleItems[itemIndex];

          final isActualLast = item == items.last;

          // Ellipsis check
          if (item is _DSEllipsisItem) {
            final isEllipsisActive = overflow == DSBreadcrumbOverflow.right;

            return Text(
              '...',
              style: context.texts.labelLarge.copyWith(
                color: isEllipsisActive
                    ? context.colors.hyperlinkActive
                    : context.colors.hyperlinkNormal,
              ),
            );
          }

          return _buildItemWidget(
              context, item as DSBreadcrumbItem, isActualLast);
        } else {
          return DSIcon.small(
            icon: Icons.chevron_right,
            color: separatorColor,
          );
        }
      }),
    );
  }

  Widget _buildItemWidget(
      BuildContext context, DSBreadcrumbItem item, bool isCurrent) {
    final color = isCurrent
        ? context.colors.hyperlinkActive
        : context.colors.hyperlinkNormal;

    final content = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (type != DSBreadcrumbType.textOnly && item.icon != null) ...[
          DSIcon.small(
            icon: item.icon!,
            color: color,
          ),
        ],
        if (type == DSBreadcrumbType.iconAndText) SizedBox(width: 4),
        if (type != DSBreadcrumbType.iconOnly)
          Text(
            item.label,
            style: context.texts.labelLarge.copyWith(
              color: color,
            ),
          ),
      ],
    );

    if (item.onTap != null && !isCurrent) {
      return InkWell(
        onTap: item.onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          child: content,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: content,
    );
  }

  List<Object> _getEffectiveItems() {
    if (overflow == DSBreadcrumbOverflow.none ||
        items.length <= maxVisibleItems) {
      return items;
    }

    final ellipsis = _DSEllipsisItem();
    final count = items.length;

    switch (overflow) {
      case DSBreadcrumbOverflow.left:
        // Ex: ... > Item(N-2) > Item(N-1) > Item(N)
        // Show last `maxVisibleItems - 1` items
        return [
          ellipsis,
          ...items.sublist(count - (maxVisibleItems - 1)),
        ];

      case DSBreadcrumbOverflow.right:
        // Ex: Item1 > Item2 > Item3 > ...
        // Show first `maxVisibleItems - 1` items
        return [
          ...items.sublist(0, maxVisibleItems - 1),
          ellipsis,
        ];

      case DSBreadcrumbOverflow.middle:
        // Ex: Item1 > ... > Item(N)
        // Usually shows Start + ... + End.
        // We divide the visible slots between start and end.

        // Items to show at start (always keep Root)
        const keepStart = 1;
        // Items to show at end (always keep Current)
        final keepEnd = maxVisibleItems - keepStart - 1; // -1 for ellipsis

        return [
          ...items.sublist(0, keepStart),
          ellipsis,
          ...items.sublist(count - keepEnd),
        ];

      case DSBreadcrumbOverflow.none:
        return items;
    }
  }
}

/// Internal marker class for ellipsis
class _DSEllipsisItem {}
