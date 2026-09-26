import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Botão circular de controle para usar **sobre mídia** — vídeo de uma chamada, câmera, player.
///
/// Difere do `DSButton` em três pontos que justificam um componente separado: ele é sempre
/// circular, o rótulo fica **embaixo** do círculo (e não dentro), e ele tem um estado ligado/
/// desligado que inverte o preenchimento além de trocar o glifo — porque sobre vídeo a cor sozinha
/// não é sinal suficiente.
///
/// O fundo é translúcido, então o componente presume que há mídia atrás. Ele nunca desenha sombra:
/// quem dá a separação do vídeo é o próprio preenchimento mais o scrim da tela.
///
/// ## Este componente não segue o tema claro/escuro — e isso é proposital
///
/// O fundo dele não é uma superfície do app, é **vídeo**: uma imagem arbitrária que pode ser clara
/// ou escura independente do tema escolhido pelo usuário. Não existe token "on scrim" agnóstico de
/// tema — `sysInverseSurface` inverte junto com o tema, então no tema claro o botão desligado
/// virava um círculo escuro no meio de uma interface clara, com o rótulo em `sysOnSurfaceVariant`
/// ilegível sobre o scrim.
///
/// Por isso a paleta aqui é fixa clara-sobre-escuro (`white` / `black`, que continuam sendo tokens
/// do DS). Quem garante o contraste é o scrim que a tela desenha sob a chrome, não o tema. A única
/// cor que continua vindo do esquema é `sysError` da variante destrutiva — vermelho funciona nos
/// dois temas.
///
/// Se você precisa de um botão circular sobre uma **superfície** (e não sobre mídia), este não é o
/// componente.
class DSControlButton extends StatefulWidget {
  /// Controle que alterna entre ligado e desligado — microfone, câmera, viva-voz.
  ///
  /// Em [isActive] `true` o botão fica translúcido com o glifo [icon]; em `false` ele inverte para
  /// preenchimento sólido e passa a mostrar [inactiveIcon], deixando explícito que o recurso está
  /// desligado.
  const DSControlButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.inactiveIcon,
    this.isActive = true,
    this.label,
    this.size = DSSize.large,
    this.enabled = true,
    this.semanticLabel,
    this.semanticHint,
  })  : _isDestructive = false,
        assert(
          label == null || label.length > 0,
          'label vazio: passe null em vez de string vazia',
        );

  /// Variante destrutiva, para encerrar a chamada.
  ///
  /// Sempre sólida em `sysError` e sem estado alternado — encerrar não é um toggle. Deve ser o
  /// **único** uso de `sysError` na tela, senão perde o peso.
  const DSControlButton.destructive({
    super.key,
    required this.onTap,
    required this.icon,
    this.label,
    this.size = DSSize.large,
    this.enabled = true,
    this.semanticLabel,
    this.semanticHint,
  })  : _isDestructive = true,
        isActive = true,
        inactiveIcon = null;

  /// Ação do toque. `null` desabilita o botão.
  final VoidCallback? onTap;

  /// Glifo exibido no estado ativo. Use `material_symbols_icons`.
  final IconData icon;

  /// Glifo do estado inativo. Se omitido, mantém [icon] e a inversão fica só no preenchimento —
  /// menos acessível, prefira sempre informar o par (ex.: `Symbols.mic` / `Symbols.mic_off`).
  final IconData? inactiveIcon;

  /// Recurso ligado. Em `false` o botão inverte o preenchimento e troca o glifo.
  final bool isActive;

  /// Rótulo curto exibido abaixo do círculo. Opcional — em larguras apertadas, omita.
  final String? label;

  /// Diâmetro do círculo: `medium` = 56 dp, `large` = 64 dp.
  final DSSize size;

  /// Botão habilitado. Em `false` reduz a opacidade e ignora o toque.
  final bool enabled;

  /// Rótulo para leitores de tela. Por padrão usa [label].
  final String? semanticLabel;

  /// Dica de acessibilidade — o que acontece ao tocar.
  final String? semanticHint;

  final bool _isDestructive;

  @override
  State<DSControlButton> createState() => _DSControlButtonState();
}

class _DSControlButtonState extends State<DSControlButton> {
  bool _isPressed = false;

  bool get _isEnabled => widget.enabled && widget.onTap != null;

  @override
  Widget build(BuildContext context) {
    final diameter = _diameter();

    return Semantics(
      button: true,
      enabled: _isEnabled,
      toggled: widget._isDestructive ? null : widget.isActive,
      label: widget.semanticLabel ?? widget.label,
      hint: widget.semanticHint,
      child: ExcludeSemantics(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: _isEnabled ? _handleTap : null,
              onTapDown: _isEnabled ? (_) => _setPressed(true) : null,
              onTapUp: _isEnabled ? (_) => _setPressed(false) : null,
              onTapCancel: _isEnabled ? () => _setPressed(false) : null,
              child: AnimatedScale(
                scale: _isPressed ? 0.86 : 1,
                duration: const Duration(milliseconds: 120),
                curve: Curves.easeOut,
                child: _buildCircle(context, diameter),
              ),
            ),
            if (widget.label != null) ...<Widget>[
              SizedBox(height: DSSize.small.padding()),
              DSText(
                widget.label!,
                autoSize: false,
                textAlign: TextAlign.center,
                style: context.texts.labelSmall.copyWith(
                  fontWeight: FontWeight.w700,
                  color: _labelColor(context),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildCircle(BuildContext context, double diameter) {
    final background = _backgroundColor(context);
    final foreground = _foregroundColor(context);
    final isTranslucent = _isTranslucent;

    final Widget circle = AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOut,
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: background,
        shape: BoxShape.circle,
        border: isTranslucent
            ? Border.all(color: context.colors.white.withValues(alpha: 0.28))
            : null,
      ),
      alignment: Alignment.center,
      child: Icon(
        _effectiveIcon,
        size: _iconSize(diameter),
        color: foreground,
        fill: 1,
      ),
    );

    return Opacity(opacity: _isEnabled ? 1 : 0.38, child: circle);
  }

  void _handleTap() {
    // O háptico é o terceiro canal do feedback, junto de forma e cor — importa quando o usuário
    // está olhando o rosto do outro participante, não o botão.
    HapticFeedback.lightImpact();
    widget.onTap!.call();
  }

  void _setPressed(bool value) {
    if (_isPressed == value) return;
    setState(() => _isPressed = value);
  }

  IconData get _effectiveIcon {
    if (widget._isDestructive || widget.isActive) return widget.icon;
    return widget.inactiveIcon ?? widget.icon;
  }

  /// Translúcido é o estado de repouso. Ao desligar o recurso o botão vira sólido, para o estado
  /// desligado ser o que salta aos olhos.
  bool get _isTranslucent => !widget._isDestructive && widget.isActive;

  Color _backgroundColor(BuildContext context) {
    if (widget._isDestructive) return context.colors.sysError;
    // Ligado é o repouso: véu claro deixando a mídia passar. Desligado inverte para branco sólido,
    // que é o que salta aos olhos sobre um vídeo qualquer.
    if (widget.isActive) return context.colors.white.withValues(alpha: 0.30);
    return context.colors.white;
  }

  Color _foregroundColor(BuildContext context) {
    if (widget._isDestructive) return context.colors.sysOnError;
    if (widget.isActive) return context.colors.white;
    return context.colors.black;
  }

  /// O rótulo é sempre branco, inclusive no destrutivo: o vermelho já está no círculo, e
  /// `sysError` como texto de 11 pt sobre scrim não passa em contraste.
  Color _labelColor(BuildContext context) => context.colors.white;

  double _diameter() {
    switch (widget.size) {
      case DSSize.extraSmall:
        return 40;
      case DSSize.small:
        return 48;
      case DSSize.medium:
        return 56;
      case DSSize.large:
        return 64;
      case DSSize.extraLarge:
        return 72;
    }
  }

  double _iconSize(double diameter) => diameter * 0.44;
}
