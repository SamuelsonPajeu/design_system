import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSTimeline extends StatelessWidget {
  const DSTimeline(
      {super.key,
      required this.items,
      this.physics,
      this.shrinkWrap = false,
      this.padding,
      this.controller,
      this.showScrollbars = true});

  /// The list of timeline items (DSTimelineItem).
  final List<Widget> items;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final bool showScrollbars;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior:
          ScrollConfiguration.of(context).copyWith(scrollbars: showScrollbars),
      child: ListView.builder(
        controller: controller,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final child = items[index];

          if (child is DSTimelineItem) {
            return DSTimelineItem(
              key: child.key,
              isLast: index == items.length - 1,
              icon: child.icon,
              iconColor: child.iconColor,
              lineColor: child.lineColor,
              child: child.child,
            );
          }

          return child;
        },
      ),
    );
  }
}

class DSTimelineItem extends StatelessWidget {
  const DSTimelineItem({
    super.key,
    required this.child,
    this.icon,
    this.isLast = false,
    this.iconColor,
    this.lineColor,
  });

  final Widget child;
  final Widget? icon;
  final bool isLast;
  final Color? iconColor;
  final Color? lineColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final effectiveIconColor = iconColor ?? colors.sysSecondary;
    final effectiveLineColor = lineColor ?? colors.sysOutlineVariant;

    const double iconSize = 32.0;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // --- Left Column: Timeline Line & Icon ---
          SizedBox(
            width: 32,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                if (!isLast)
                  Positioned(
                    top: 48,
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(width: 1, color: effectiveLineColor),
                    ),
                  ),
                Positioned(
                  child: Container(
                    width: iconSize,
                    height: iconSize,
                    decoration: BoxDecoration(
                      color: effectiveIconColor,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: icon ?? DSIcon.extraSmall(icon: Icons.circle),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          // --- Right Column: Content ---
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
