import 'package:design_system/core/components/molecules/filter/filter_chip/ds_filter_chip.dart';
import 'package:flutter/material.dart';

class FilterSearchItem extends StatefulWidget {
  const FilterSearchItem({
    super.key,
    required this.label,
    this.onChanged,
    this.isSelected = false,
  });

  final String label;
  final void Function(bool)? onChanged;
  final bool isSelected;

  @override
  State<FilterSearchItem> createState() => _FilterSearchItemState();
}

class _FilterSearchItemState extends State<FilterSearchItem> {
  bool checked = false;

  @override
  void initState() {
    checked = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final fontColor =
        checked ? Colors.white : Theme.of(context).colorScheme.onSurface;
    final backgroundColor = checked
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.surface;

    return GestureDetector(
      onTap: () {
        setState(() {
          checked = !checked;
          widget.onChanged?.call(checked);
        });
      },
      child: DSFilterChip(
        checked: checked,
        fontColor: fontColor,
        label: widget.label,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
