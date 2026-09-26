import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:flutter/material.dart';

enum DSIconType {
  custom,
  pattern,
}

class DSIconPreset {
  const DSIconPreset._(this.iconSize);

  final DSSize iconSize;

  DSIcon call({
    Key? key,
    required IconData icon,
    Color? color,
    String? semanticLabel,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
  }) {
    return DSIcon.pattern(
      key: key,
      icon: icon,
      color: color,
      dsSize: iconSize,
      semanticLabel: semanticLabel,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
    );
  }
}

class DSIcon extends StatelessWidget {
  static const DSIconPreset extraSmall = DSIconPreset._(DSSize.extraSmall);

  static const DSIconPreset small = DSIconPreset._(DSSize.small);

  static const DSIconPreset medium = DSIconPreset._(DSSize.medium);

  static const DSIconPreset large = DSIconPreset._(DSSize.large);

  static const DSIconPreset extraLarge = DSIconPreset._(DSSize.extraLarge);

  const DSIcon.custom({
    super.key,
    this.icon,
    this.color,
    this.size = 20,
    this.semanticLabel,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
  })  : type = DSIconType.custom,
        dsSize = null;

  const DSIcon.pattern({
    super.key,
    this.icon,
    this.color,
    this.dsSize,
    this.semanticLabel,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
  })  : type = DSIconType.pattern,
        size = null;

  final IconData? icon;
  final Color? color;
  final double? size;
  final DSSize? dsSize;
  final String? semanticLabel;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final DSIconType type;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: dsSize == null ? size : dsSize?.icon(),
      color: color,
      semanticLabel: semanticLabel,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
    );
  }
}
