import 'package:design_system/core/components/atoms/button_controller/ds_button_controller.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/loading/ds_loading.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:material_symbols_icons/symbols.dart';

enum DsButtonStyleType {
  elevated,
  text,
  filled,
  outlined,
  tonal,
}

class DSButton extends StatefulWidget {
  factory DSButton({
    required Future<void>? Function()? onTap,
    Key? key,
    AnimatedButtonController? controller,
    IconData? buttonIcon,
    String? buttonText,
    String? sucessText,
    TextStyle? textStyle,
    void Function()? callBack,
    bool invert = false,
    bool enabled = true,
    bool large = false,
    double spacing = 8,
    EdgeInsetsGeometry? padding,
    Duration timeout = const Duration(seconds: 2),
    bool success = false,
    Duration sucessDuration = const Duration(seconds: 1),
    ButtonStyle? buttonStyle,
    String? loadingSemanticMessage,
    String? successSemanticMessage,
    bool announceLoading = true,
    bool announceSuccess = true,
    FocusNode? focusNode,
    WidgetState? forcedState,
    DSSize? size,
  }) {
    return DSButton.elevated(
      onTap: onTap,
      key: key,
      controller: controller,
      buttonIcon: buttonIcon,
      buttonText: buttonText,
      sucessText: sucessText,
      textStyle: textStyle,
      callBack: callBack,
      invert: invert,
      enabled: enabled,
      size: size,
      spacing: spacing,
      padding: padding,
      timeout: timeout,
      success: success,
      sucessDuration: sucessDuration,
      buttonStyle: buttonStyle,
      loadingSemanticMessage: loadingSemanticMessage,
      successSemanticMessage: successSemanticMessage,
      announceLoading: announceLoading,
      announceSuccess: announceSuccess,
      focusNode: focusNode,
      forcedState: forcedState,
    );
  }

  const DSButton.elevated(
      {super.key,
      required this.onTap,
      this.controller,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.backgroundColor,
      this.iconColor,
      this.borderColor,
      this.invert = false,
      this.enabled = true,
      this.size,
      this.spacing = 8,
      this.padding,
      this.timeout = const Duration(seconds: 2),
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.announceLoading = true,
      this.announceSuccess = true,
      this.focusNode,
      this.forcedState})
      : showBorder = false,
        style = DsButtonStyleType.elevated,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  const DSButton.filled(
      {super.key,
      required this.onTap,
      this.controller,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.backgroundColor,
      this.iconColor,
      this.borderColor,
      this.invert = false,
      this.enabled = true,
      this.size,
      this.spacing = 8,
      this.padding,
      this.timeout = const Duration(seconds: 2),
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.announceLoading = true,
      this.announceSuccess = true,
      this.focusNode,
      this.forcedState})
      : showBorder = false,
        style = DsButtonStyleType.filled,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  const DSButton.outlined(
      {super.key,
      required this.onTap,
      this.controller,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.backgroundColor,
      this.iconColor,
      this.borderColor,
      this.invert = false,
      this.enabled = true,
      this.size,
      this.spacing = 8,
      this.padding,
      this.timeout = const Duration(seconds: 2),
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.announceLoading = true,
      this.announceSuccess = true,
      this.focusNode,
      this.forcedState})
      : showBorder = true,
        style = DsButtonStyleType.outlined,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  const DSButton.text(
      {super.key,
      required this.onTap,
      this.controller,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.backgroundColor,
      this.iconColor,
      this.borderColor,
      this.invert = false,
      this.enabled = true,
      this.size,
      this.spacing = 8,
      this.padding,
      this.timeout = const Duration(seconds: 2),
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.announceLoading = true,
      this.announceSuccess = true,
      this.focusNode,
      this.forcedState})
      : showBorder = false,
        style = DsButtonStyleType.text,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  const DSButton.tonal(
      {super.key,
      required this.onTap,
      this.controller,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.backgroundColor,
      this.iconColor,
      this.borderColor,
      this.invert = false,
      this.enabled = true,
      this.size,
      this.spacing = 8,
      this.padding,
      this.timeout = const Duration(seconds: 2),
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.announceLoading = true,
      this.announceSuccess = true,
      this.focusNode,
      this.forcedState})
      : showBorder = false,
        style = DsButtonStyleType.tonal,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  final AnimatedButtonController? controller;
  final IconData? buttonIcon;
  final String? buttonText;
  final String? sucessText;
  final TextStyle? textStyle;
  final void Function()? callBack;
  final Future<void>? Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? borderColor;
  final ButtonStyle? buttonStyle;
  final DsButtonStyleType style;
  final FocusNode? focusNode;

  /// Spacing between icon and text
  final double? spacing;

  /// Espaço interno. Padrão: 24 nas laterais e a altura de [size]. Menor
  /// quando o texto precisa caber (ex.: dois botões lado a lado no celular).
  final EdgeInsetsGeometry? padding;

  /// Invert the position of the text and the icon
  /// the defaut is the icon on the left and text on right
  final bool invert;

  final bool showBorder;

  final bool enabled;

  final DSSize? size;

  /// If show the success animation
  /// Default is false
  final bool success;
  final Duration sucessDuration;

  /// Defaut is 30 seconds
  final Duration timeout;

  /// Mensagem anunciada para leitores de tela quando o botão entra em estado de carregamento.
  /// Apenas funciona se:
  /// - [announceLoading] for true (padrão)
  /// - MediaQuery.of(context).accessibleNavigation estiver ativo
  ///
  /// Exemplo: 'Processando seus dados, aguarde'
  final String? loadingSemanticMessage;

  /// Mensagem anunciada para leitores de tela quando o carregamento é concluído.
  /// Apenas funciona se:
  /// - [announceSuccess] for true (padrão)
  /// - MediaQuery.of(context).accessibleNavigation estiver ativo
  ///
  /// Exemplo: 'Dados processados com sucesso'
  final String? successSemanticMessage;

  /// Se true, anuncia [loadingSemanticMessage] quando o botão entra em estado de loading.
  /// Anúncios só ocorrem se MediaQuery.of(context).accessibleNavigation estiver ativo.
  /// Padrão: true
  final bool announceLoading;

  /// Se true, anuncia [successSemanticMessage] quando o carregamento é concluído.
  /// Anúncios só ocorrem se MediaQuery.of(context).accessibleNavigation estiver ativo.
  /// Padrão: true
  final bool announceSuccess;

  final WidgetState? forcedState;

  @override
  State<DSButton> createState() => _DSButtonState();
}

class _DSButtonState extends State<DSButton> {
  ButtonState state = ButtonState.idle;

  @override
  void initState() {
    super.initState();

    if (widget.controller != null) {
      widget.controller!.getState = getButtonState;
      widget.controller!.setState = setButtonState;
    }
  }

  ButtonState getButtonState() => state;
  void setButtonState(ButtonState st) {
    final previousState = state;
    setState(() {
      state = st;
    });

    // Announce state changes for screen readers
    if (previousState != st) {
      _announceStateChange(st);
    }
  }

  void _announceStateChange(ButtonState newState) {
    // Só anuncia se a acessibilidade estiver ativa
    if (!MediaQuery.of(context).accessibleNavigation) return;

    switch (newState) {
      case ButtonState.loading:
        if (!widget.announceLoading) return;
        SemanticsService.sendAnnouncement(
          View.of(context),
          widget.loadingSemanticMessage ?? 'Carregando',
          TextDirection.ltr,
          assertiveness: Assertiveness.assertive,
        );
        break;
      case ButtonState.success:
        if (!widget.announceSuccess) return;
        SemanticsService.sendAnnouncement(
          View.of(context),
          widget.successSemanticMessage ?? 'Carregamento concluído',
          TextDirection.ltr,
          assertiveness: Assertiveness.assertive,
        );
        break;
      default:
        break;
    }
  }

  void onPressedFunction() {
    if (!widget.enabled) return;
    if (state != ButtonState.idle) return;
    if (widget.onTap == null) return;

    setState(() {
      state = ButtonState.loading;
    });

    _announceStateChange(ButtonState.loading);

    widget.onTap!.call()?.catchError((e) {
      throw (e);
    }).whenComplete(() {
      if (widget.callBack != null && !widget.success) {
        widget.callBack!.call();
      }
      // O onTap pode ter tirado o botão da tela (navegou, trocou o estado da
      // página): sem context nem setState depois de desmontado.
      if (!mounted) return;
      if (state == ButtonState.loading) {
        if (widget.success) {
          setState(() {
            state = ButtonState.success;
          });

          _announceStateChange(ButtonState.success);

          Future.delayed(widget.sucessDuration, () {
            if (!mounted) return;
            setState(() {
              state = ButtonState.idle;
            });
            if (widget.callBack != null) {
              widget.callBack!.call();
            }
          });
        } else {
          _announceStateChange(ButtonState.success);

          setState(() {
            state = ButtonState.idle;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: 'Botão: ${widget.buttonText}',
      hint:
          widget.enabled ? "Toque duas vezes para ativar" : 'Botão desativado',
      excludeSemantics: true,
      child: getButtonType(
        context,
        widget.style,
        child: returnCurrentButton(context),
      ),
    );
  }

  Widget returnCurrentButton(BuildContext context) {
    switch (state) {
      case ButtonState.loading:
        return Semantics(
          label: 'Carregando',
          value: 'Botão em processo de carregamento',
          child: DSLoading(
            color: widget.iconColor ?? getDefaultIconColor(context),
            size: DSSize.medium,
          ),
        );
      case ButtonState.success:
        return Semantics(
          label: 'Sucesso',
          value: 'Operação finalizada com sucesso',
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
                buttonBuilder(context, widget.sucessText, Symbols.check_circle),
          ),
        );
      case _:
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buttonBuilder(
            context,
            widget.buttonText,
            widget.buttonIcon,
          ),
        );
    }
  }

  DSIcon buttonIcon(IconData icon) {
    return DSIcon.custom(
      icon: icon,
      size: 20,
      color: widget.iconColor ?? getDefaultIconColor(context),
    );
  }

  Widget buttonText(String text) {
    return Flexible(
      child: DSText(
        text,
        style: widget.textStyle ?? getDefaultTextStyle(context),
        textAlign: TextAlign.center,
      ),
    );
  }

  TextStyle getDefaultTextStyle(BuildContext context) {
    final baseStyle = context.texts.labelLarge;
    final defaultColor = getDefaultTextColor(context);
    return baseStyle.copyWith(color: defaultColor);
  }

  Color getDefaultTextColor(BuildContext context) {
    switch (widget.style) {
      case DsButtonStyleType.outlined:
        return widget.enabled
            ? context.colors.sysPrimary
            : context.colors.sysOnSurface.withValues(alpha: 0.38);
      case DsButtonStyleType.tonal:
        return widget.enabled
            ? context.colors.sysOnPrimaryContainer
            : context.colors.sysOnSurface.withValues(alpha: 0.38);

      case DsButtonStyleType.text:
        return widget.enabled
            ? context.colors.sysPrimary
            : context.colors.sysOnSurface.withValues(alpha: 0.38);
      case DsButtonStyleType.filled:
        return widget.enabled
            ? context.colors.sysOnPrimary
            : context.colors.sysOnSurface.withValues(alpha: 0.38);
      case DsButtonStyleType.elevated:
        return widget.enabled
            ? context.colors.sysPrimary
            : context.colors.sysOnSurface.withValues(alpha: 0.38);
    }
  }

  Color getDefaultIconColor(BuildContext context) {
    return getDefaultTextColor(context);
  }

  List<Widget> showOnlyIcon(BuildContext context, IconData icon) {
    return [buttonIcon(icon)];
  }

  List<Widget> showOnlyText(BuildContext context, String text) {
    return [buttonText(text)];
  }

  List<Widget> showIconAndText(
      BuildContext context, String text, IconData icon) {
    return widget.invert
        ? [
            buttonText(text),
            SizedBox(width: widget.spacing),
            buttonIcon(icon),
          ]
        : [
            buttonIcon(icon),
            SizedBox(width: widget.spacing),
            buttonText(text),
          ];
  }

  List<Widget> buttonBuilder(
      BuildContext context, String? buttonText, IconData? buttonIcon) {
    if (buttonText == null && buttonIcon != null) {
      return showOnlyIcon(context, buttonIcon);
    } else if (buttonText != null && buttonIcon == null) {
      return showOnlyText(context, buttonText);
    } else {
      return showIconAndText(context, buttonText!, buttonIcon!);
    }
  }

  Widget getButtonType(
    BuildContext context,
    DsButtonStyleType style, {
    required Widget child,
  }) {
    switch (style) {
      case DsButtonStyleType.outlined:
        return OutlinedButton(
          focusNode: widget.focusNode,
          onPressed: widget.enabled ? onPressedFunction : null,
          style: widget.buttonStyle ?? getButtonStyle(context, widget.style),
          child: child,
        );
      case DsButtonStyleType.tonal:
        return FilledButton(
          focusNode: widget.focusNode,
          onPressed: widget.enabled ? onPressedFunction : null,
          style: widget.buttonStyle ?? getButtonStyle(context, widget.style),
          child: child,
        );
      case DsButtonStyleType.text:
        return TextButton(
          focusNode: widget.focusNode,
          onPressed: widget.enabled ? onPressedFunction : null,
          style: widget.buttonStyle ?? getButtonStyle(context, widget.style),
          child: child,
        );
      default:
        return ElevatedButton(
          focusNode: widget.focusNode,
          onPressed: widget.enabled ? onPressedFunction : null,
          style: widget.buttonStyle ?? getButtonStyle(context, widget.style),
          child: child,
        );
    }
  }

  Set<WidgetState> _applyForcedState(Set<WidgetState> states) {
    if (widget.forcedState != null) {
      return {widget.forcedState!};
    }
    return states;
  }

  ButtonStyle getButtonStyle(BuildContext context, DsButtonStyleType style) {
    final borderRadius = _getBorderRadius(
      widget.size ?? (kIsWeb ? DSSize.large : DSSize.medium),
    );
    final buttonPadding = widget.padding ??
        EdgeInsets.symmetric(
            horizontal: 24,
            vertical: _getButtonSize(
              widget.size ?? (kIsWeb ? DSSize.large : DSSize.medium),
            ));

    switch (style) {
      case DsButtonStyleType.outlined:
        final defaultBackgroundColor = Colors.transparent;
        return OutlinedButton.styleFrom(
          backgroundColor: widget.backgroundColor ?? defaultBackgroundColor,
          disabledBackgroundColor: defaultBackgroundColor,
          disabledForegroundColor: context.colors.sysOnSurface,
          surfaceTintColor: widget.backgroundColor ?? defaultBackgroundColor,
          padding: buttonPadding,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ).copyWith(
          foregroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              final effectiveStates = _applyForcedState(states);
              if (!widget.enabled ||
                  effectiveStates.contains(WidgetState.disabled)) {
                return context.colors.sysOnSurface.withValues(alpha: 0.38);
              }
              return context.colors.sysPrimary;
            },
          ),
          side: WidgetStateProperty.resolveWith<BorderSide>(
            (Set<WidgetState> states) {
              if (!widget.enabled || states.contains(WidgetState.disabled)) {
                return BorderSide(
                  color: context.colors.stateLayersOnSurfaceOpacity012,
                );
              }

              if (widget.borderColor != null) {
                return BorderSide(color: widget.borderColor!);
              }

              if (states.contains(WidgetState.focused)) {
                return BorderSide(color: context.colors.sysPrimary);
              }

              if (states.contains(WidgetState.hovered) ||
                  states.contains(WidgetState.pressed)) {
                return BorderSide(color: context.colors.sysOutlineVariant);
              }

              return BorderSide(color: context.colors.sysOutlineVariant);
            },
          ),
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              final effectiveStates = _applyForcedState(states);
              if (effectiveStates.contains(WidgetState.pressed)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.hovered)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.focused)) {
                return context.colors.stateLayersPrimaryOpacity012;
              }
              return null;
            },
          ),
        );
      case DsButtonStyleType.tonal:
        final defaultBackgroundColor = context.colors.sysPrimaryContainer;
        return FilledButton.styleFrom(
          backgroundColor: widget.backgroundColor ?? defaultBackgroundColor,
          disabledBackgroundColor:
              context.colors.stateLayersOnSurfaceOpacity012,
          disabledForegroundColor:
              context.colors.sysOnSurface.withValues(alpha: 0.38),
          surfaceTintColor: widget.backgroundColor ?? defaultBackgroundColor,
          padding: buttonPadding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              final effectiveStates = _applyForcedState(states);
              if (effectiveStates.contains(WidgetState.pressed)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.hovered)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.focused)) {
                return context.colors.stateLayersPrimaryOpacity012;
              }
              return null;
            },
          ),
        );
      case DsButtonStyleType.text:
        return TextButton.styleFrom(
          disabledForegroundColor:
              context.colors.sysPrimary.withValues(alpha: 0.38),
          padding: buttonPadding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              final effectiveStates = _applyForcedState(states);
              if (effectiveStates.contains(WidgetState.pressed)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.hovered)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.focused)) {
                return context.colors.stateLayersPrimaryOpacity012;
              }
              return null;
            },
          ),
        );
      case DsButtonStyleType.filled:
        final defaultBackgroundColor = context.colors.sysPrimary;
        return FilledButton.styleFrom(
          backgroundColor: widget.backgroundColor ?? defaultBackgroundColor,
          disabledBackgroundColor:
              context.colors.stateLayersOnSurfaceOpacity012,
          disabledForegroundColor:
              context.colors.sysOnSurface.withValues(alpha: 0.38),
          surfaceTintColor: widget.backgroundColor ?? defaultBackgroundColor,
          padding: buttonPadding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              final effectiveStates = _applyForcedState(states);
              if (effectiveStates.contains(WidgetState.pressed)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.hovered)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.focused)) {
                return context.colors.stateLayersPrimaryOpacity012;
              }
              return null;
            },
          ),
        );
      case DsButtonStyleType.elevated:
        final defaultBackgroundColor = context.colors.sysSurfaceContainerLow;
        final defaultForegroundColor = context.colors.sysPrimary;
        return ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor ?? defaultBackgroundColor,
          disabledBackgroundColor:
              context.colors.stateLayersOnSurfaceOpacity012,
          disabledForegroundColor:
              context.colors.sysOnSurface.withValues(alpha: 0.38),
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.black,
          elevation: widget.enabled ? 1 : 0,
          padding: buttonPadding,
          side: widget.showBorder
              ? BorderSide(
                  color: widget.enabled
                      ? (widget.borderColor ??
                          widget.iconColor ??
                          defaultForegroundColor)
                      : context.colors.stateLayersPrimaryContainerOpacity012,
                )
              : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ).copyWith(
          elevation: WidgetStateProperty.resolveWith<double?>(
            (Set<WidgetState> states) {
              final effectiveStates = _applyForcedState(states);
              if (effectiveStates.contains(WidgetState.disabled)) {
                return 0;
              }
              if (effectiveStates.contains(WidgetState.hovered)) {
                return 2;
              }
              return 1;
            },
          ),
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              final effectiveStates = _applyForcedState(states);
              if (effectiveStates.contains(WidgetState.pressed)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.hovered)) {
                return context.colors.stateLayersPrimaryOpacity008;
              }
              if (effectiveStates.contains(WidgetState.focused)) {
                return context.colors.stateLayersPrimaryOpacity012;
              }
              return null;
            },
          ),
        );
    }
  }

  double _getButtonSize(DSSize? buttonSize) {
    switch (buttonSize) {
      case DSSize.extraSmall:
        return 8.0;
      case DSSize.small:
        return 10.0;
      case DSSize.medium:
        return 17.0;
      case DSSize.large:
        return 20.0;
      case DSSize.extraLarge:
        return 28.0;
      case null:
        return 12.0;
    }
  }

  double _getBorderRadius(DSSize? buttonSize) {
    switch (buttonSize) {
      case DSSize.extraSmall:
        return 8.0;
      case DSSize.small:
        return 12.0;
      case DSSize.medium:
        return 16.0;
      case DSSize.large:
        return 16.0;
      case DSSize.extraLarge:
        return 18.0;
      case null:
        return 12.0;
    }
  }
}
