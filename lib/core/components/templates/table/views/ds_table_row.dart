import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSTableRow extends StatelessWidget {
  final List<Widget>? leading;
  final List<Widget> cells;
  final List<Widget>? trailing;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? hoverColor;
  final bool showDivider;
  final bool showCheckbox;
  final bool? checkboxValue;
  final ValueChanged<bool?>? onCheckboxChanged;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool enabled;
  final bool selected;
  final DSListTileDensity density;

  const DSTableRow({
    super.key,
    this.leading,
    required this.cells,
    this.trailing,
    this.padding,
    this.backgroundColor,
    this.hoverColor,
    this.showDivider = true,
    this.showCheckbox = false,
    this.checkboxValue,
    this.onCheckboxChanged,
    this.onTap,
    this.onLongPress,
    this.enabled = true,
    this.selected = false,
    this.density = DSListTileDensity.ultraCompact,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final List<Widget> rowChildren = [];

    if (showCheckbox) {
      rowChildren.add(
        SizedBox(
          width: 48,
          child: Center(
            child: DSCheckbox(
              value: checkboxValue ?? false,
              onChanged: enabled ? onCheckboxChanged : null,
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

    final effectiveBackgroundColor = selected
        ? colors.sysPrimaryContainer.withValues(alpha: 0.12)
        : backgroundColor ?? Colors.transparent;

    final rowContent = Container(
      color: effectiveBackgroundColor,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled ? onTap : null,
          onLongPress: enabled ? onLongPress : null,
          hoverColor: hoverColor ?? colors.sysSurfaceContainerHighest,
          child: Padding(
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: rowChildren,
            ),
          ),
        ),
      ),
    );

    if (showDivider) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          rowContent,
          DSDivider(
            height: 1,
            thickness: 1,
            color: colors.sysOutlineVariant,
          ),
        ],
      );
    }

    return rowContent;
  }
}

class DSTableCell extends StatelessWidget {
  final Widget child;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? padding;

  const DSTableCell({
    super.key,
    required this.child,
    this.textAlign,
    this.padding,
  });

  DSTableCell.text({
    super.key,
    required String text,
    TextStyle? style,
    this.textAlign,
    this.padding,
  }) : child = _DSTableCellText(text: text, style: style);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Align(
        alignment: _getAlignment(),
        child: child,
      ),
    );
  }

  Alignment _getAlignment() {
    switch (textAlign) {
      case TextAlign.center:
        return Alignment.center;
      case TextAlign.right:
      case TextAlign.end:
        return Alignment.centerRight;
      default:
        return Alignment.centerLeft;
    }
  }
}

class _DSTableCellText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const _DSTableCellText({
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final texts = context.texts;
    final colors = context.colors;

    return Text(
      text,
      style: style ??
          texts.bodyMedium.copyWith(
            color: colors.sysOnSurface,
          ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
