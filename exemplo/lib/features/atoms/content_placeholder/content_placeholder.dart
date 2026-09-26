import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ContentPlaceholder extends StatelessWidget {
  const ContentPlaceholder({
    super.key,
    this.variant = 0,
    this.size = DSSize.medium,
    this.iconSize,
  });
  final int variant;
  final DSSize size;
  final DSSize? iconSize;

  int get normalizedVariant => (variant) % 4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.containerBox(),
      height: size.containerBox(),
      child: Center(
        child: DSIcon.custom(
          icon: switch (normalizedVariant) {
            0 => Symbols.circle,
            1 => Symbols.square,
            2 => Symbols.diamond,
            3 => Symbols.pentagon,
            _ => Icons.error,
          },
          size: _getIconSize(iconSize ?? DSSize.small),
          color: context.colors.sysOnSurfaceVariant,
          fill: 1,
        ),
      ),
    );
  }

  double _getIconSize(DSSize avatarSize) {
    switch (avatarSize) {
      case DSSize.extraSmall:
        return 4.0;
      case DSSize.small:
        return 8.0;
      case DSSize.medium:
        return 16.0;
      case DSSize.large:
        return 24.0;
      case DSSize.extraLarge:
        return 32.0;
    }
  }
}
