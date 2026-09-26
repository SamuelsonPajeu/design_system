import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Aviso curto exibido no canto de uma [DSPipSurface].
///
/// A janela de PiP é pequena demais para texto corrido: o aviso só existe para estados que o
/// usuário **não consegue deduzir olhando o vídeo** — microfone mudo, por exemplo. Se o estado é
/// visível na própria imagem, não crie um badge para ele.
class DSPipBadge {
  const DSPipBadge({
    required this.icon,
    this.label,
    this.isAlert = false,
  });

  /// Glifo do aviso. Use `material_symbols_icons`.
  final IconData icon;

  /// Texto do aviso. Só aparece quando a janela é larga o bastante; abaixo disso o badge encolhe
  /// para um círculo com o ícone.
  final String? label;

  /// Aviso de atenção. Pinta o ícone com `sysError` em vez de `sysOnSurface`.
  final bool isAlert;
}

/// Superfície de Picture-in-Picture em retrato 9:16.
///
/// Padroniza o conteúdo da janelinha flutuante de uma chamada, tanto a do sistema operacional
/// quanto uma janela desenhada pelo próprio app. A regra do componente é a mesma dos dois casos:
/// mostrar o vídeo e nada mais, até existir um estado que o usuário não consegue deduzir sozinho.
///
/// **Não coloque aqui** nome, cronômetro, self-view, qualidade de rede ou logo — em 135 dp de
/// largura nada disso é legível, e controles não caberiam num alvo de 48 dp.
///
/// No PiP do sistema a moldura (cantos e sombra) é desenhada pelo SO, então [borderRadius] fica em
/// zero. Numa janela flutuante dentro do app, quem desenha a moldura é você: passe um raio e
/// [hasShadow].
class DSPipSurface extends StatelessWidget {
  const DSPipSurface({
    super.key,
    this.video,
    this.placeholder,
    this.badge,
    this.isReconnecting = false,
    this.reconnectingLabel = 'Reconnecting',
    this.borderRadius = BorderRadius.zero,
    this.hasShadow = false,
    this.onTap,
  });

  /// Vídeo do participante remoto, já recortado em `cover` por quem monta.
  /// `null` cai no [placeholder].
  final Widget? video;

  /// O que exibir quando não há vídeo — normalmente um `DSAvatar` de 56 dp.
  /// Fica centralizado sobre `sysSurfaceContainer`.
  final Widget? placeholder;

  /// Aviso opcional no canto superior esquerdo.
  final DSPipBadge? badge;

  /// A chamada está tentando reconectar. Cobre tudo com scrim e mostra um indicador.
  final bool isReconnecting;

  /// Texto exibido junto do indicador de reconexão, quando há largura para ele.
  final String reconnectingLabel;

  /// Cantos da janela. Zero no PiP do sistema — lá a moldura é do SO.
  final BorderRadius borderRadius;

  /// Desenha sombra sob a janela. Só faz sentido em PiP dentro do app.
  final bool hasShadow;

  /// Toque na janela — normalmente volta para a chamada em tela cheia.
  final VoidCallback? onTap;

  /// Abaixo desta largura o badge vira só ícone e o texto de reconexão some.
  static const double _compactWidthThreshold = 160;

  /// Proporção retrato fixa. É a forma em que o app exibe a videochamada.
  static const double _aspectRatio = 9 / 16;
  static const double _fallbackWidth = 135;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _aspectRatio,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: hasShadow
              ? <BoxShadow>[
                  BoxShadow(
                    color: context.colors.sysShadow.withValues(alpha: 0.4),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ]
              : null,
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final bool isCompact =
                  constraints.maxWidth < _compactWidthThreshold;

              final Widget stack = Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  _buildContent(context),
                  if (badge != null && !isReconnecting)
                    _buildBadge(context, isCompact),
                  if (isReconnecting) _buildReconnecting(context, isCompact),
                  if (onTap != null)
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(onTap: onTap),
                      ),
                    ),
                ],
              );

              if (!constraints.hasBoundedWidth &&
                  !constraints.hasBoundedHeight) {
                return SizedBox(
                  width: _fallbackWidth,
                  height: _fallbackWidth / _aspectRatio,
                  child: stack,
                );
              }

              return stack;
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (video != null) return SizedBox.expand(child: video);
    return ColoredBox(
      color: context.colors.sysSurfaceContainer,
      child: Center(child: placeholder ?? const SizedBox.shrink()),
    );
  }

  Widget _buildBadge(BuildContext context, bool isCompact) {
    final double margin = isCompact ? 8.0 : 10.0;
    final double diameter = isCompact ? 26.0 : 28.0;
    final Color iconColor =
        badge!.isAlert ? context.colors.sysError : context.colors.black;
    final bool showLabel = !isCompact && badge!.label != null;

    return Positioned(
      left: margin,
      top: margin,
      child: Container(
        height: diameter,
        padding: showLabel
            ? EdgeInsets.symmetric(horizontal: DSSize.small.padding())
            : null,
        width: showLabel ? null : diameter,
        decoration: BoxDecoration(
          color: context.colors.white.withValues(alpha: 0.88),
          borderRadius: BorderRadius.circular(diameter / 2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(badge!.icon, size: 15, color: iconColor, fill: 1),
            if (showLabel) ...<Widget>[
              const SizedBox(width: 6),
              DSText(
                badge!.label!,
                autoSize: false,
                style: context.texts.labelSmall.copyWith(
                  fontWeight: FontWeight.w700,
                  color: context.colors.black,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildReconnecting(BuildContext context, bool isCompact) {
    final double indicatorSize = isCompact ? 26.0 : 28.0;

    return Positioned.fill(
      child: ColoredBox(
        color: context.colors.sysScrim.withValues(alpha: 0.66),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: indicatorSize,
                height: indicatorSize,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: context.colors.sysWarn,
                  backgroundColor:
                      context.colors.sysWarn.withValues(alpha: 0.28),
                ),
              ),
              if (!isCompact) ...<Widget>[
                SizedBox(height: DSSize.small.padding()),
                DSText(
                  reconnectingLabel,
                  autoSize: false,
                  style: context.texts.labelSmall.copyWith(
                    fontWeight: FontWeight.w700,
                    color: context.colors.sysWarn,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
