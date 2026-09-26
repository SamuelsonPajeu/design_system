import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/components/templates/pip_surface/ds_pip_surface.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class PipSurfaceExample extends StatelessWidget {
  const PipSurfaceExample({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.knobs.slider(
      label: 'Largura',
      description: 'Abaixo de 160 o badge vira só ícone',
      initial: 180,
      min: 110,
      max: 240,
    );
    final hasVideo = context.knobs.boolean(label: 'Com vídeo', initial: true);
    final isMuted = context.knobs.boolean(label: 'Microfone mudo', initial: true);
    final isReconnecting = context.knobs.boolean(
      label: 'Reconectando',
      initial: false,
    );

    return DSScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Interactive Demo', style: context.texts.titleMedium),
            const SizedBox(height: 24),
            SizedBox(
              width: width,
              child: DSPipSurface(
                video: hasVideo ? _fakeVideo(context) : null,
                placeholder: DSAvatar.medium.initial(initial: 'R'),
                badge: isMuted
                    ? const DSPipBadge(
                        icon: Symbols.mic_off,
                        label: 'Mudo',
                        isAlert: true,
                      )
                    : null,
                isReconnecting: isReconnecting,
                borderRadius: BorderRadius.circular(20),
                hasShadow: true,
                onTap: () {},
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '${width.round()} dp de largura',
              style: context.texts.bodySmall,
            ),
            const SizedBox(height: 32),
            Divider(color: context.colors.sysOutlineVariant),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.titleMedium),
            const SizedBox(height: 8),
            Text(
              'Tamanho mínimo (135 dp) e expandido (180 dp), nos quatro estados.',
              style: context.texts.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _stateRow(context, 135),
            const SizedBox(height: 32),
            _stateRow(context, 180),
          ],
        ),
      ),
    );
  }

  Widget _stateRow(BuildContext context, double width) {
    final states = <String, DSPipSurface>{
      'Normal': DSPipSurface(video: _fakeVideo(context)),
      'Mudo': DSPipSurface(
        video: _fakeVideo(context),
        badge: const DSPipBadge(
          icon: Symbols.mic_off,
          label: 'Mudo',
          isAlert: true,
        ),
      ),
      'Reconectando': DSPipSurface(
        video: _fakeVideo(context),
        isReconnecting: true,
      ),
      'Sem vídeo': DSPipSurface(
        placeholder: DSAvatar.medium.initial(initial: 'R'),
      ),
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('${width.round()} dp', style: context.texts.labelLarge),
        const SizedBox(height: 12),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: states.entries
              .map(
                (MapEntry<String, DSPipSurface> entry) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(width: width, child: entry.value),
                    const SizedBox(height: 8),
                    Text(entry.key, style: context.texts.labelSmall),
                  ],
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  /// Bloco neutro no lugar do feed de câmera — nenhum estado do componente depende do que há
  /// dentro do vídeo.
  Widget _fakeVideo(BuildContext context) {
    return Container(
      width: 90,
      height: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            context.colors.sysSurfaceContainerHighest,
            context.colors.sysSurfaceDim,
          ],
        ),
      ),
      alignment: Alignment.center,
      child: Icon(
        Symbols.person,
        size: DSSize.medium.icon(),
        color: context.colors.sysOnSurfaceVariant,
      ),
    );
  }
}
