import 'dart:math' as math;

import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Equalizador de barras que indica que alguém está falando.
///
/// Serve tanto para o próprio microfone (alimentado pela amplitude medida) quanto para indicar o
/// participante ativo de uma chamada. É a contraparte visível do áudio: quando a câmera está
/// desligada ou o vídeo não chegou, é ele que mostra que ainda há alguém do outro lado.
///
/// As barras nunca somem — em repouso ficam achatadas no traço mínimo. Isso mantém o componente com
/// altura estável e evita que o layout ao redor pule a cada sílaba.
///
/// Para um avatar que fala, prefira `DSAvatar.speaking`, que já compõe este átomo.
class DSAudioBars extends StatelessWidget {
  const DSAudioBars({
    super.key,
    required this.isActive,
    this.amplitude = 0,
    this.barCount = 4,
    this.size = DSSize.small,
    this.color,
    this.semanticLabel,
  })  : assert(barCount >= 2, 'barCount precisa de ao menos 2 barras'),
        assert(
          amplitude >= 0 && amplitude <= 1,
          'amplitude precisa estar entre 0 e 1',
        );

  /// Há áudio ativo. Em `false` as barras ficam no traço mínimo, sem animar.
  final bool isActive;

  /// Intensidade normalizada entre 0 e 1. Valores fora da faixa disparam `assert`.
  final double amplitude;

  /// Quantidade de barras. O design usa 3 ou 4; 5 também é comum em medidores de microfone.
  final int barCount;

  /// Escala do medidor. Controla altura máxima, largura da barra e espaçamento.
  final DSSize size;

  /// Sobrescreve a cor das barras. Por padrão `sysPrimary`.
  ///
  /// Sobre mídia, passe a cor da superfície fosca em que o medidor está apoiado — o componente
  /// nunca desenha fundo próprio.
  final Color? color;

  /// Rótulo para leitores de tela. Por padrão anuncia se há fala.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final barColor = color ?? context.colors.sysPrimary;
    final barWidth = _barWidth();
    final gap = _gap();
    final maxHeight = _maxHeight();
    final minHeight = _minHeight();

    return Semantics(
      label: semanticLabel ?? (isActive ? 'Falando' : 'Sem áudio'),
      readOnly: true,
      child: SizedBox(
        height: maxHeight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List<Widget>.generate(barCount, (int index) {
            return Padding(
              padding: EdgeInsets.only(
                right: index == barCount - 1 ? 0 : gap,
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeOut,
                width: barWidth,
                height: _heightFor(index, minHeight, maxHeight),
                decoration: BoxDecoration(
                  color: barColor,
                  borderRadius: BorderRadius.circular(barWidth / 2),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  /// As barras do meio reagem mais que as das pontas, o que dá a leitura de "onda" mesmo com
  /// poucas barras. Com uma barra só o fator seria 1.
  double _heightFor(int index, double minHeight, double maxHeight) {
    if (!isActive) return minHeight;

    final middle = (barCount - 1) / 2;
    final distanceFromMiddle = middle == 0 ? 0.0 : (index - middle).abs() / middle;
    final factor = 1 - (distanceFromMiddle * 0.5);
    final height = minHeight + ((maxHeight - minHeight) * amplitude * factor);
    return math.min(height, maxHeight);
  }

  double _maxHeight() {
    switch (size) {
      case DSSize.extraSmall:
        return 12;
      case DSSize.small:
        return 18;
      case DSSize.medium:
        return 24;
      case DSSize.large:
        return 32;
      case DSSize.extraLarge:
        return 40;
    }
  }

  double _minHeight() => _barWidth();

  double _barWidth() {
    switch (size) {
      case DSSize.extraSmall:
        return 2;
      case DSSize.small:
        return 3;
      case DSSize.medium:
        return 4;
      case DSSize.large:
        return 5;
      case DSSize.extraLarge:
        return 6;
    }
  }

  double _gap() {
    switch (size) {
      case DSSize.extraSmall:
      case DSSize.small:
        return 2;
      case DSSize.medium:
        return 3;
      case DSSize.large:
      case DSSize.extraLarge:
        return 4;
    }
  }
}
