import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/components/templates/graph/models/ds_graph_data.dart';
import 'package:design_system/core/components/templates/graph/views/ds_graph.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class GraphExemplo extends StatefulWidget {
  const GraphExemplo({super.key});

  @override
  State<GraphExemplo> createState() => _GraphExemploState();
}

class _GraphExemploState extends State<GraphExemplo> {
  DSGraphDataSeries _buildPrimarySeries(int dataCount, double baseValue) {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return DSGraphDataSeries(
      name: 'Lorem',
      dataPoints: List.generate(
        dataCount,
        (index) => DSGraphDataPoint(
          label: months[index % months.length],
          value: baseValue + (index * 5) + ((index % 3) * 10),
        ),
      ),
    );
  }

  DSGraphDataSeries _buildSecondarySeries(int dataCount, double baseValue) {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return DSGraphDataSeries(
      name: 'Ipsum',
      dataPoints: List.generate(
        dataCount,
        (index) => DSGraphDataPoint(
          label: months[index % months.length],
          value: baseValue + (index * 3) + ((index % 2) * 15),
        ),
      ),
    );
  }

  DSGraphDataSeries _buildBarSeries(
      BuildContext context, int dataCount, double baseValue) {
    final colors = context.colors;
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return DSGraphDataSeries(
      name: 'Ipsum',
      dataPoints: List.generate(
        dataCount,
        (index) {
          final value = baseValue + ((index % 4) * 100) + (index * 20);
          Color? barColor;
          if (value < 500) {
            barColor = colors.sysPrimary;
          } else if (value < 700) {
            barColor = colors.sysSecondary;
          } else {
            barColor = colors.sysTertiary;
          }
          return DSGraphDataPoint(
            label: months[index % months.length],
            value: value,
            color: barColor,
          );
        },
      ),
    );
  }

  DSGraphDataSeries _buildLineSeries(int dataCount, double baseValue) {
    final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return DSGraphDataSeries(
      name: 'Ipsum',
      dataPoints: List.generate(
        dataCount,
        (index) => DSGraphDataPoint(
          label: days[index % days.length],
          value: baseValue + ((index % 3) * 1000) + (index * 200),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final texts = context.texts;

    final doubleLineDataCount = context.knobs.sliderInt(
      label: 'Double Line - Pontos',
      initial: 12,
      min: 3,
      max: 12,
      divisions: 9,
    );

    final barsDataCount = context.knobs.sliderInt(
      label: 'Barras - Pontos',
      initial: 12,
      min: 3,
      max: 12,
      divisions: 9,
    );

    final lineDataCount = context.knobs.sliderInt(
      label: 'Linha - Pontos',
      initial: 7,
      min: 3,
      max: 7,
      divisions: 4,
    );

    return DSScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DSGraph',
              style: texts.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Componente para exibição de gráficos com suporte a linhas duplas, barras e linha única.',
              style: texts.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              'Double Line',
              style: texts.titleMedium.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 280,
              child: DSGraph.doubleLine(
                title: 'Chart Text',
                primarySeries: _buildPrimarySeries(doubleLineDataCount, 30),
                secondarySeries: _buildSecondarySeries(doubleLineDataCount, 20),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Bars',
              style: texts.titleMedium.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 280,
              child: DSGraph.bars(
                title: 'Chart Text',
                series: _buildBarSeries(context, barsDataCount, 350),
                legends: [
                  DSGraphLegend(
                    name: 'Baixo',
                    color: context.colors.sysPrimary,
                  ),
                  DSGraphLegend(
                    name: 'Médio',
                    color: context.colors.sysSecondary,
                  ),
                  DSGraphLegend(
                    name: 'Alto',
                    color: context.colors.sysTertiary,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Line',
              style: texts.titleMedium.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 280,
              child: DSGraph.line(
                title: 'Chart Text',
                series: _buildLineSeries(lineDataCount, 1000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
