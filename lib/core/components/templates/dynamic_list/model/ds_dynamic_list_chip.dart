import 'package:flutter/material.dart';

class DSDynamicListChip {
  final String label;
  final dynamic value;
  final bool isDefault;
  final Color? backgroundColor;
  final Color? selectedColor;

  DSDynamicListChip({
    required this.label,
    required this.value,
    this.isDefault = false,
    this.backgroundColor,
    this.selectedColor,
  });
}
