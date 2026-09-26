import 'package:flutter/material.dart';

class DSNavigationDrawerItem {
  const DSNavigationDrawerItem({
    required this.icon,
    required this.label,
    this.onTap,
    this.fill,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final double? fill;
}
