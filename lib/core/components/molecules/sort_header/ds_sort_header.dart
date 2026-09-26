import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSSortHeader extends StatelessWidget {
  const DSSortHeader({
    super.key,
    this.icon,
    required this.title,
    this.divider = true,
    this.dividerWidth = 1,
  });

  final IconData? icon;
  final String title;
  final bool? divider;
  final double? dividerWidth;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
        child: Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            if (icon != null) ...[
              Icon(
                icon,
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
            ],
            Text(
              title,
              maxLines: 1,
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        if (divider == true) ...[
          Divider(
            color: context.colors.sysOnSurface,
            thickness: dividerWidth,
          ),
        ]
      ],
    ));
  }
}
