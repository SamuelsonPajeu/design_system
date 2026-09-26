import 'package:flutter/material.dart';

class DSGraphDataPoint {
  final String label;
  final double value;
  final Color? color;

  const DSGraphDataPoint({
    required this.label,
    required this.value,
    this.color,
  });
}

class DSGraphDataSeries {
  final String name;
  final List<DSGraphDataPoint> dataPoints;

  const DSGraphDataSeries({
    required this.name,
    required this.dataPoints,
  });
}

class DSGraphLegend {
  final String name;
  final Color color;

  const DSGraphLegend({
    required this.name,
    required this.color,
  });
}
