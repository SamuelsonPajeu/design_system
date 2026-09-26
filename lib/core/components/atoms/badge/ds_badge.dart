import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSBadge extends StatelessWidget {
  const DSBadge({
    super.key,
    this.child,
    this.label,
    this.isLabelVisible = true,
  });

  DSBadge.count(
    BuildContext context, {
    super.key,
    this.child,
    required int count,
    this.isLabelVisible = true,
  }) : label = DSText(
          count > 999 ? '999+' : '$count',
          autoSize: false,
        );

  final Widget? child;
  final DSText? label;
  final bool isLabelVisible;

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: label,
      isLabelVisible: isLabelVisible,
      backgroundColor: context.colors.sysError,
      child: child,
    );
  }
}
