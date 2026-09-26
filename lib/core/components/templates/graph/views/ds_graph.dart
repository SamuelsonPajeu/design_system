import 'dart:math';

import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/templates/graph/models/ds_graph_data.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DSGraph extends StatelessWidget {
  final List<DSGraphDataSeries> _series;
  final _DSGraphType _type;
  final String? _title;
  final List<DSGraphLegend>? _legends;

  const DSGraph._({
    required List<DSGraphDataSeries> series,
    required _DSGraphType type,
    String? title,
    List<DSGraphLegend>? legends,
  })  : _series = series,
        _type = type,
        _title = title,
        _legends = legends;

  factory DSGraph.doubleLine({
    required DSGraphDataSeries primarySeries,
    required DSGraphDataSeries secondarySeries,
    String? title,
  }) {
    return DSGraph._(
      series: [primarySeries, secondarySeries],
      type: _DSGraphType.doubleLine,
      title: title,
    );
  }

  factory DSGraph.bars({
    required DSGraphDataSeries series,
    String? title,
    List<DSGraphLegend>? legends,
  }) {
    return DSGraph._(
      series: [series],
      type: _DSGraphType.bars,
      title: title,
      legends: legends,
    );
  }

  factory DSGraph.line({
    required DSGraphDataSeries series,
    String? title,
  }) {
    return DSGraph._(
      series: [series],
      type: _DSGraphType.line,
      title: title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_title != null || _series.isNotEmpty) _buildHeader(context),
        Expanded(
          child: switch (_type) {
            _DSGraphType.doubleLine => _buildDoubleLineChart(context),
            _DSGraphType.bars => _buildBarChart(context),
            _DSGraphType.line => _buildLineChart(context),
          },
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    // Para barras com legendas parametrizadas, usa as legendas
    // Caso contrário, usa as cores padrão baseadas no tipo
    final bool useLegends =
        _type == _DSGraphType.bars && _legends != null && _legends.isNotEmpty;

    final legendColors = switch (_type) {
      _DSGraphType.doubleLine => [colors.sysTertiary, colors.sysSecondary],
      _DSGraphType.bars => [colors.sysSecondary],
      _DSGraphType.line => [colors.sysSecondary],
    };

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_title != null)
            DSText(
              _title.toUpperCase(),
              style: texts.labelMedium.copyWith(
                color: colors.sysPrimary,
                fontWeight: FontWeight.w800,
                fontSize: 11,
              ),
            )
          else
            const SizedBox.shrink(),
          if (useLegends)
            Row(
              children: _legends.asMap().entries.map((entry) {
                final index = entry.key;
                final legend = entry.value;
                return Padding(
                  padding: EdgeInsets.only(left: index > 0 ? 16 : 0),
                  child: Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        color: legend.color,
                      ),
                      const SizedBox(width: 16),
                      DSText(
                        legend.name.toUpperCase(),
                        style: texts.labelSmall.copyWith(
                          color: colors.sysOutline,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            )
          else
            Row(
              children: _series.asMap().entries.map((entry) {
                final index = entry.key;
                final series = entry.value;
                return Padding(
                  padding: EdgeInsets.only(left: index > 0 ? 16 : 0),
                  child: Row(
                    children: [
                      switch (_type) {
                        _DSGraphType.doubleLine ||
                        _DSGraphType.line =>
                          Container(
                            width: 24,
                            height: 2,
                            color: legendColors[index],
                          ),
                        _DSGraphType.bars => Container(
                            width: 6,
                            height: 6,
                            color: legendColors[index],
                          ),
                      },
                      const SizedBox(width: 16),
                      DSText(
                        series.name.toUpperCase(),
                        style: texts.labelSmall.copyWith(
                          color: colors.sysOutline,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildDoubleLineChart(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final primarySeries = _series[0];
    final secondarySeries = _series[1];

    final allValues = [
      ...primarySeries.dataPoints.map((p) => p.value),
      ...secondarySeries.dataPoints.map((p) => p.value),
    ];
    final maxY = allValues.reduce(max);
    final minY = allValues.reduce(min);

    final primarySpots = primarySeries.dataPoints
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.value))
        .toList();

    final secondarySpots = secondarySeries.dataPoints
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.value))
        .toList();

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: LineChart(
        LineChartData(
          minY: minY - (maxY - minY) * 0.1,
          maxY: maxY + (maxY - minY) * 0.1,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(
            show: true,
            border: Border(
              bottom: BorderSide(color: colors.sysOutlineVariant, width: 1),
              left: BorderSide(color: colors.sysOutlineVariant, width: 1),
            ),
          ),
          titlesData: FlTitlesData(
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 48,
                getTitlesWidget: (value, meta) {
                  if (value == meta.min || value == meta.max) {
                    return const SizedBox.shrink();
                  }
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DSText(
                        value.toInt().toString(),
                        style:
                            texts.labelSmall.copyWith(color: colors.sysOutline),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 8,
                        height: 1,
                        color: colors.sysOutlineVariant,
                      ),
                    ],
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= primarySeries.dataPoints.length) {
                    return const SizedBox.shrink();
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 1,
                        height: 8,
                        color: colors.sysOutlineVariant,
                      ),
                      const SizedBox(height: 4),
                      DSText(
                        primarySeries.dataPoints[index].label,
                        style:
                            texts.labelSmall.copyWith(color: colors.sysOutline),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: primarySpots,
              isCurved: true,
              color: colors.sysTertiary,
              barWidth: 2,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
            LineChartBarData(
              spots: secondarySpots,
              isCurved: true,
              color: colors.sysSecondary,
              barWidth: 2,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => colors.sysSurfaceContainerHighest,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  final seriesName = spot.barIndex == 0
                      ? primarySeries.name
                      : secondarySeries.name;
                  return LineTooltipItem(
                    '$seriesName: ${spot.y.toStringAsFixed(1)}',
                    texts.labelSmall.copyWith(color: colors.sysOutline),
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBarChart(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final series = _series[0];

    final maxY = series.dataPoints.map((p) => p.value).reduce(max);
    final minY = series.dataPoints.map((p) => p.value).reduce(min);

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: BarChart(
        BarChartData(
          minY: minY - (maxY - minY) * 0.1,
          maxY: maxY + (maxY - minY) * 0.1,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(
            show: true,
            border: Border(
              bottom: BorderSide(color: colors.sysOutlineVariant, width: 1),
              left: BorderSide(color: colors.sysOutlineVariant, width: 1),
            ),
          ),
          titlesData: FlTitlesData(
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 48,
                getTitlesWidget: (value, meta) {
                  if (value == meta.min || value == meta.max) {
                    return const SizedBox.shrink();
                  }
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DSText(
                        value.toInt().toString(),
                        style:
                            texts.labelSmall.copyWith(color: colors.sysOutline),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 8,
                        height: 1,
                        color: colors.sysOutlineVariant,
                      ),
                    ],
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= series.dataPoints.length) {
                    return const SizedBox.shrink();
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 1,
                        height: 8,
                        color: colors.sysOutlineVariant,
                      ),
                      const SizedBox(height: 4),
                      DSText(
                        series.dataPoints[index].label,
                        style:
                            texts.labelSmall.copyWith(color: colors.sysOutline),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          barGroups: series.dataPoints.asMap().entries.map((entry) {
            return BarChartGroupData(
              x: entry.key,
              barRods: [
                BarChartRodData(
                  toY: entry.value.value,
                  color: entry.value.color ?? colors.sysSecondary,
                  width: 5,
                  borderRadius: BorderRadius.zero,
                ),
              ],
            );
          }).toList(),
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipColor: (_) => colors.sysSurfaceContainerHighest,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                return BarTooltipItem(
                  '${series.dataPoints[group.x].label}: ${rod.toY.toStringAsFixed(1)}',
                  texts.labelSmall.copyWith(color: colors.sysOutline),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLineChart(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final series = _series[0];

    final maxY = series.dataPoints.map((p) => p.value).reduce(max);
    final minY = series.dataPoints.map((p) => p.value).reduce(min);

    final spots = series.dataPoints
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.value))
        .toList();

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: LineChart(
        LineChartData(
          minY: minY - (maxY - minY) * 0.1,
          maxY: maxY + (maxY - minY) * 0.1,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(
            show: true,
            border: Border(
              bottom: BorderSide(color: colors.sysOutlineVariant, width: 1),
              left: BorderSide(color: colors.sysOutlineVariant, width: 1),
            ),
          ),
          titlesData: FlTitlesData(
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 56,
                getTitlesWidget: (value, meta) {
                  if (value == meta.min || value == meta.max) {
                    return const SizedBox.shrink();
                  }
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DSText(
                        value.toInt().toString(),
                        style:
                            texts.labelSmall.copyWith(color: colors.sysOutline),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 8,
                        height: 1,
                        color: colors.sysOutlineVariant,
                      ),
                    ],
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= series.dataPoints.length) {
                    return const SizedBox.shrink();
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 1,
                        height: 8,
                        color: colors.sysOutlineVariant,
                      ),
                      const SizedBox(height: 4),
                      DSText(
                        series.dataPoints[index].label,
                        style:
                            texts.labelSmall.copyWith(color: colors.sysOutline),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: false,
              color: colors.sysSecondary,
              barWidth: 2,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => colors.sysSurfaceContainerHighest,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  final index = spot.x.toInt();
                  return LineTooltipItem(
                    '${series.dataPoints[index].label}: ${spot.y.toStringAsFixed(1)}',
                    texts.labelSmall.copyWith(color: colors.sysOutline),
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum _DSGraphType {
  doubleLine,
  bars,
  line,
}
