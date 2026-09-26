import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Níveis de qualidade de conexão de uma chamada de vídeo/áudio.
///
/// Espelha a escala de 0 a 5 usada pelos SDKs de vídeo (Twilio, Agora, LiveKit) mais o estado
/// `unknown`, emitido enquanto a medição ainda não chegou. O design system não depende de nenhum
/// SDK: converta o enum do seu provedor para este na camada de dados.
enum DSNetworkQualityLevel {
  /// Ainda não medido. Renderiza todas as barras apagadas.
  unknown,

  /// Conexão perdida ou inutilizável.
  zero,
  one,
  two,
  three,
  four,
  five;

  /// Quantas das 5 barras ficam acesas.
  int get filledBars {
    switch (this) {
      case DSNetworkQualityLevel.unknown:
      case DSNetworkQualityLevel.zero:
        return 0;
      case DSNetworkQualityLevel.one:
        return 1;
      case DSNetworkQualityLevel.two:
        return 2;
      case DSNetworkQualityLevel.three:
        return 3;
      case DSNetworkQualityLevel.four:
        return 4;
      case DSNetworkQualityLevel.five:
        return 5;
    }
  }

  /// Descrição curta em pt-BR, usada como rótulo de acessibilidade padrão.
  String get label {
    switch (this) {
      case DSNetworkQualityLevel.unknown:
        return 'Qualidade da conexão desconhecida';
      case DSNetworkQualityLevel.zero:
        return 'Sem conexão';
      case DSNetworkQualityLevel.one:
      case DSNetworkQualityLevel.two:
        return 'Conexão instável';
      case DSNetworkQualityLevel.three:
        return 'Conexão razoável';
      case DSNetworkQualityLevel.four:
      case DSNetworkQualityLevel.five:
        return 'Conexão estável';
    }
  }
}

/// Indicador de qualidade de conexão em 5 barras crescentes.
///
/// O mapeamento de cor é parte do componente, para que toda feature comunique qualidade da mesma
/// forma: 4–5 usa `sysPrimary`, 3 fica neutro em `sysOnSurfaceVariant`, 1–2 alerta em `sysWarn`,
/// e 0/desconhecido deixa tudo apagado em `sysOutlineVariant`.
///
/// Costuma aparecer sobre mídia (vídeo de uma chamada). Nesse caso passe [activeColor] e
/// [inactiveColor] vindos da superfície fosca em que o indicador está apoiado, para manter o
/// contraste — o componente nunca desenha fundo próprio.
class DSNetworkQuality extends StatelessWidget {
  const DSNetworkQuality({
    super.key,
    required this.level,
    this.size = DSSize.small,
    this.activeColor,
    this.inactiveColor,
    this.semanticLabel,
  });

  /// Nível atual da conexão.
  final DSNetworkQualityLevel level;

  /// Escala do indicador. Controla altura das barras, largura e espaçamento.
  final DSSize size;

  /// Sobrescreve a cor das barras acesas. Por padrão sai do mapeamento de [level].
  final Color? activeColor;

  /// Sobrescreve a cor das barras apagadas. Por padrão `sysOutlineVariant`.
  final Color? inactiveColor;

  /// Rótulo para leitores de tela. Por padrão usa [DSNetworkQualityLevel.label].
  final String? semanticLabel;

  static const int _totalBars = 5;

  @override
  Widget build(BuildContext context) {
    final active = activeColor ?? _defaultActiveColor(context);
    final inactive = inactiveColor ?? context.colors.sysOutlineVariant;
    final barWidth = _barWidth();
    final gap = _gap();
    final maxHeight = _maxHeight();

    return Semantics(
      label: semanticLabel ?? level.label,
      readOnly: true,
      child: SizedBox(
        height: maxHeight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List<Widget>.generate(_totalBars, (int index) {
            final isFilled = index < level.filledBars;
            return Padding(
              padding: EdgeInsets.only(
                right: index == _totalBars - 1 ? 0 : gap,
              ),
              child: Container(
                width: barWidth,
                height: _barHeight(index, maxHeight),
                decoration: BoxDecoration(
                  color: isFilled ? active : inactive,
                  borderRadius: BorderRadius.circular(barWidth / 2),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  /// A cor comunica a faixa, não o valor exato — por isso 4 e 5 compartilham a mesma cor,
  /// assim como 1 e 2. Quem lê a diferença fina é a quantidade de barras.
  Color _defaultActiveColor(BuildContext context) {
    switch (level) {
      case DSNetworkQualityLevel.four:
      case DSNetworkQualityLevel.five:
        return context.colors.sysPrimary;
      case DSNetworkQualityLevel.three:
        return context.colors.sysOnSurfaceVariant;
      case DSNetworkQualityLevel.one:
      case DSNetworkQualityLevel.two:
        return context.colors.sysWarn;
      case DSNetworkQualityLevel.zero:
      case DSNetworkQualityLevel.unknown:
        return context.colors.sysOutlineVariant;
    }
  }

  /// A menor barra tem 40% da altura da maior; as duas últimas empatam no topo, como num
  /// indicador de sinal de celular.
  double _barHeight(int index, double maxHeight) {
    const List<double> factors = <double>[0.4, 0.55, 0.75, 1, 1];
    return maxHeight * factors[index];
  }

  double _maxHeight() {
    switch (size) {
      case DSSize.extraSmall:
        return 10;
      case DSSize.small:
        return 14;
      case DSSize.medium:
        return 18;
      case DSSize.large:
        return 24;
      case DSSize.extraLarge:
        return 32;
    }
  }

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
