import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:flutter/material.dart';

//base_filter_chip.widget.dart
class DSFilterChip extends StatelessWidget {
  const DSFilterChip({
    super.key,
    required this.checked,
    required this.fontColor,
    required this.label,
    required this.backgroundColor,
    this.check = Icons.check,
  });

  final bool checked;
  final Color fontColor;
  final String label;
  final Color backgroundColor;
  final IconData check;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
          border: Border.all(color: fontColor, width: 1)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          checked
              ? Icon(
                  Icons.check,
                  size: (Theme.of(context).textTheme.bodySmall?.fontSize ?? 0) *
                      1.4,
                  color: fontColor,
                )
              : Container(),
          checked
              ? const SizedBox(
                  width: 10,
                )
              : Container(),
          DSText(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: fontColor,
                ),
          ),
        ],
      ),
    );
  }
}
