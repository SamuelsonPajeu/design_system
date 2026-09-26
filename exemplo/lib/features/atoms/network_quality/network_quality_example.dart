import 'package:design_system/core/components/atoms/network_quality/ds_network_quality.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system_exemplo/ui/knobs_utils.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class NetworkQualityExample extends StatelessWidget {
  const NetworkQualityExample({super.key});

  @override
  Widget build(BuildContext context) {
    final levelIndex = context.knobs.sliderInt(
      label: 'Nível',
      description: '0 = desconhecido, 1 = sem conexão, 6 = excelente',
      initial: 5,
      min: 0,
      max: DSNetworkQualityLevel.values.length - 1,
      divisions: DSNetworkQualityLevel.values.length - 1,
    );
    final level = DSNetworkQualityLevel.values[levelIndex];
    final size = context.knobSliderDSSize(label: 'Size', initial: DSSize.small);

    return DSScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Interactive Demo', style: context.texts.titleMedium),
            const SizedBox(height: 24),
            DSNetworkQuality(level: level, size: size),
            const SizedBox(height: 12),
            Text(level.label, style: context.texts.bodySmall),
            const SizedBox(height: 32),
            Divider(color: context.colors.sysOutlineVariant),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.titleMedium),
            const SizedBox(height: 8),
            Text(
              'Todos os níveis, com o mapeamento de cor embutido.',
              style: context.texts.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ...DSNetworkQualityLevel.values.map(
              (DSNetworkQualityLevel item) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 220,
                      child: Text(
                        '${item.name} — ${item.label}',
                        style: context.texts.bodySmall,
                      ),
                    ),
                    DSNetworkQuality(level: item, size: DSSize.medium),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Divider(color: context.colors.sysOutlineVariant),
            const SizedBox(height: 24),
            Text('Escalas', style: context.texts.titleMedium),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: DSSize.values
                  .map(
                    (DSSize item) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        DSNetworkQuality(
                          level: DSNetworkQualityLevel.four,
                          size: item,
                        ),
                        const SizedBox(height: 8),
                        Text(item.name, style: context.texts.labelSmall),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
