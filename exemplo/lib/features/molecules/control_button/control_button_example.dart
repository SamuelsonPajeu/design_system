import 'package:design_system/core/components/molecules/control_button/ds_control_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system_exemplo/ui/knobs_utils.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ControlButtonExample extends StatefulWidget {
  const ControlButtonExample({super.key});

  @override
  State<ControlButtonExample> createState() => _ControlButtonExampleState();
}

class _ControlButtonExampleState extends State<ControlButtonExample> {
  bool _micOn = true;
  bool _cameraOn = true;

  @override
  Widget build(BuildContext context) {
    final showLabel = context.knobs.boolean(
      label: 'Mostrar rótulo',
      initial: true,
    );
    final enabled = context.knobs.boolean(label: 'Habilitado', initial: true);
    final size = context.knobSliderDSSize(label: 'Size', initial: DSSize.large);

    return DSScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Interactive Demo', style: context.texts.titleMedium),
            const SizedBox(height: 8),
            Text(
              'O botão vive sobre mídia — o fundo simulado abaixo mostra o desfoque.',
              style: context.texts.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _mediaBackdrop(
              context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DSControlButton(
                    onTap: () => setState(() => _micOn = !_micOn),
                    icon: Symbols.mic,
                    inactiveIcon: Symbols.mic_off,
                    isActive: _micOn,
                    label: showLabel ? 'Microfone' : null,
                    size: size,
                    enabled: enabled,
                    semanticHint: 'Liga e desliga seu microfone',
                  ),
                  DSControlButton(
                    onTap: () => setState(() => _cameraOn = !_cameraOn),
                    icon: Symbols.videocam,
                    inactiveIcon: Symbols.videocam_off,
                    isActive: _cameraOn,
                    label: showLabel ? 'Câmera' : null,
                    size: size,
                    enabled: enabled,
                    semanticHint: 'Liga e desliga sua câmera',
                  ),
                  DSControlButton.destructive(
                    onTap: () {},
                    icon: Symbols.call_end,
                    label: showLabel ? 'Encerrar' : null,
                    size: size,
                    enabled: enabled,
                    semanticLabel: 'Encerrar a consulta',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Divider(color: context.colors.sysOutlineVariant),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.titleMedium),
            const SizedBox(height: 8),
            Text(
              'Ligado é translúcido; desligado inverte o preenchimento e troca o glifo.',
              style: context.texts.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _mediaBackdrop(
              context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DSControlButton(
                    onTap: () {},
                    icon: Symbols.mic,
                    inactiveIcon: Symbols.mic_off,
                    label: 'Ligado',
                  ),
                  DSControlButton(
                    onTap: () {},
                    icon: Symbols.mic,
                    inactiveIcon: Symbols.mic_off,
                    isActive: false,
                    label: 'Desligado',
                  ),
                  DSControlButton(
                    onTap: null,
                    icon: Symbols.flashlight_on,
                    label: 'Sem ação',
                  ),
                  DSControlButton(
                    onTap: () {},
                    icon: Symbols.volume_up,
                    enabled: false,
                    label: 'Desabilitado',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text('Escalas', style: context.texts.titleMedium),
            const SizedBox(height: 24),
            _mediaBackdrop(
              context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: DSSize.values
                    .map(
                      (DSSize item) => DSControlButton(
                        onTap: () {},
                        icon: Symbols.mic,
                        inactiveIcon: Symbols.mic_off,
                        size: item,
                        label: item.name,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Simula o vídeo atrás dos controles — sem isso o desfoque e o fundo translúcido não têm o que
  /// mostrar e a verificação visual fica enganosa.
  ///
  /// O scrim por cima do gradiente não é enfeite: o botão é fixo claro-sobre-escuro e só é legível
  /// porque a tela real desenha esse scrim sob a chrome. Sem ele aqui, o Storybook mostraria o
  /// componente numa condição que não existe em produção.
  Widget _mediaBackdrop(BuildContext context, {required Widget child}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(DSSize.medium.border()),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    context.colors.sysPrimaryContainer,
                    context.colors.sysTertiaryContainer,
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: ColoredBox(
              color: context.colors.sysScrim.withValues(alpha: 0.72),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
            child: SizedBox(width: double.infinity, child: child),
          ),
        ],
      ),
    );
  }
}
