import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSSortDirection {
  ascending,
  descending,
}

class DSTableRowHeader extends StatelessWidget {
  final List<Widget>? leading;
  final List<Widget> cells;
  final List<Widget>? trailing;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final bool showDivider;
  final bool showCheckbox;
  final bool? checkboxValue;
  final bool checkboxTristate;
  final ValueChanged<bool?>? onCheckboxChanged;

  const DSTableRowHeader({
    super.key,
    this.leading,
    required this.cells,
    this.trailing,
    this.padding,
    this.backgroundColor,
    this.showDivider = true,
    this.showCheckbox = false,
    this.checkboxValue,
    this.checkboxTristate = false,
    this.onCheckboxChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final effectiveBackgroundColor = backgroundColor ?? colors.sysSurface;

    final List<Widget> rowChildren = [];

    if (showCheckbox) {
      rowChildren.add(
        SizedBox(
          width: 48,
          child: Center(
            child: DSCheckbox(
              value: checkboxValue,
              tristate: checkboxTristate,
              onChanged: onCheckboxChanged,
            ),
          ),
        ),
      );
    }

    if (leading != null) {
      for (final widget in leading!) {
        rowChildren.add(widget);
      }
    }

    for (final cell in cells) {
      rowChildren.add(Expanded(child: cell));
    }

    if (trailing != null) {
      for (final widget in trailing!) {
        rowChildren.add(widget);
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: effectiveBackgroundColor,
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: rowChildren,
          ),
        ),
        if (showDivider)
          DSDivider(
            height: 1,
            thickness: 1,
            color: colors.sysOutlineVariant,
          ),
      ],
    );
  }
}

class DSTableHeaderCell extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final VoidCallback? onTap;
  final bool isSorting;
  final DSSortDirection? sortDirection;

  const DSTableHeaderCell({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.onTap,
    this.isSorting = false,
    this.sortDirection,
  });

  @override
  Widget build(BuildContext context) {
    final texts = context.texts;
    final colors = context.colors;

    final textWidget = DSText(
      text,
      style: style ??
          texts.titleSmall.copyWith(
            color: colors.sysOnSurface,
            fontWeight: FontWeight.w600,
          ),
      textAlign: textAlign ?? TextAlign.start,
    );

    if (onTap == null) {
      return textWidget;
    }

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: textWidget),
            if (isSorting && sortDirection != null) ...[
              const SizedBox(width: 4),
              Icon(
                sortDirection == DSSortDirection.ascending
                    ? Icons.arrow_upward
                    : Icons.arrow_downward,
                size: 16,
                color: colors.sysOnSurface,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
