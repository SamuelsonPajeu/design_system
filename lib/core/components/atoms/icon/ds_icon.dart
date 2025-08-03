import 'package:flutter/material.dart';

class DSIcon extends StatelessWidget {
  const DSIcon({super.key, this.icon, this.color, this.size = 20, this.semanticLabel});
  final IconData? icon;
  final Color? color;
  final double size;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
      semanticLabel: semanticLabel,
    );
  }
}
