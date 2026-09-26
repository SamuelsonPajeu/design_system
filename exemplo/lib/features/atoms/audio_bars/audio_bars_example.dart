import 'package:design_system/core/components/atoms/audio_bars/ds_audio_bars.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system_exemplo/ui/knobs_utils.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class AudioBarsExample extends StatelessWidget {
  const AudioBarsExample({super.key});

  @override
  Widget build(BuildContext context) {
    final isActive = context.knobs.boolean(
      label: 'Ativo',
      description: 'Em repouso as barras ficam no traço mínimo',
      initial: true,
    );
    final amplitude = context.knobs.slider(
      label: 'Amplitude',
      description: 'Intensidade normalizada do áudio',
      initial: 0.7,
      min: 0,
      max: 1,
    );
    final barCount = context.knobs.sliderInt(
      label: 'Barras',
      initial: 4,
      min: 2,
      max: 6,
      divisions: 4,
    );
    final size = context.knobSliderDSSize(label: 'Size', initial: DSSize.small);

    return DSScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Interactive Demo', style: context.texts.titleMedium),
            const SizedBox(height: 24),
            DSAudioBars(
              isActive: isActive,
              amplitude: amplitude,
              barCount: barCount,
              size: size,
            ),
            const SizedBox(height: 32),
            Divider(color: context.colors.sysOutlineVariant),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.titleMedium),
            const SizedBox(height: 8),
            Text(
              'A altura estável evita que o layout ao redor pule a cada sílaba.',
              style: context.texts.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _row(context, 'Repouso', const DSAudioBars(isActive: false)),
            _row(
              context,
              'Fala baixa',
              const DSAudioBars(isActive: true, amplitude: 0.25),
            ),
            _row(
              context,
              'Fala média',
              const DSAudioBars(isActive: true, amplitude: 0.6),
            ),
            _row(
              context,
              'Fala alta',
              const DSAudioBars(isActive: true, amplitude: 1),
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
                        DSAudioBars(
                          isActive: true,
                          amplitude: 0.8,
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

  Widget _row(BuildContext context, String label, Widget bars) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 160,
            child: Text(label, style: context.texts.bodySmall),
          ),
          bars,
        ],
      ),
    );
  }
}
