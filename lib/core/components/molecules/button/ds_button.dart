import 'package:design_system/core/components/atoms/button_controller/ds_button_controller.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/loading/ds_loading.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
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
  const DSButton(
      {required this.onTap,
      super.key,
      this.controller,
      this.buttonWidth,
      this.buttonHeight,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.backgroundColor,
      this.textAndIconColor,
      this.borderColor,
      this.invert = false,
      this.showBorder = false,
      this.enabled = true,
      this.spacing = 15,
      this.timeout = const Duration(seconds: 2),
      this.shrinkOnLoading = true,
      this.shrinkOnSuccess = true,
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.dsButtonStyleType = DsButtonStyleType.elevated,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.focusNode})
      : assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  DSButton.filled(
      {super.key,
      required BuildContext context,
      required this.onTap,
      this.controller,
      this.buttonWidth,
      this.buttonHeight,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.borderColor,
      this.invert = false,
      this.enabled = true,
      this.spacing = 15,
      this.timeout = const Duration(seconds: 2),
      this.shrinkOnLoading = true,
      this.shrinkOnSuccess = true,
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.focusNode})
      : backgroundColor = Theme.of(context).colors.sysPrimary,
        textAndIconColor = Theme.of(context).colors.sysOnPrimary,
        showBorder = false,
        dsButtonStyleType = DsButtonStyleType.filled,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  DSButton.outlined(
      {super.key,
      required BuildContext context,
      required this.onTap,
      this.controller,
      this.buttonWidth,
      this.buttonHeight,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.callBack,
      this.invert = false,
      this.enabled = true,
      this.spacing = 15,
      this.timeout = const Duration(seconds: 2),
      this.shrinkOnLoading = true,
      this.shrinkOnSuccess = true,
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.focusNode})
      : backgroundColor = Theme.of(context).colors.sysSurface,
        textAndIconColor = Theme.of(context).colors.sysPrimary,
        borderColor = Theme.of(context).colors.sysPrimary,
        showBorder = true,
        dsButtonStyleType = DsButtonStyleType.outlined,
        textStyle = null,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  DSButton.text(
      {super.key,
      required BuildContext context,
      required this.onTap,
      this.controller,
      this.buttonWidth,
      this.buttonHeight,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.invert = false,
      this.enabled = true,
      this.spacing = 15,
      this.timeout = const Duration(seconds: 2),
      this.shrinkOnLoading = true,
      this.shrinkOnSuccess = true,
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.focusNode})
      : backgroundColor = null,
        textAndIconColor = Theme.of(context).colors.sysPrimary,
        borderColor = null,
        showBorder = false,
        buttonStyle = null,
        dsButtonStyleType = DsButtonStyleType.text,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  DSButton.tonal(
      {super.key,
      required BuildContext context,
      required this.onTap,
      this.controller,
      this.buttonWidth,
      this.buttonHeight,
      this.buttonIcon,
      this.buttonText,
      this.sucessText,
      this.textStyle,
      this.callBack,
      this.borderColor,
      this.invert = false,
      this.enabled = true,
      this.spacing = 15,
      this.timeout = const Duration(seconds: 2),
      this.shrinkOnLoading = true,
      this.shrinkOnSuccess = true,
      this.success = false,
      this.sucessDuration = const Duration(seconds: 1),
      this.buttonStyle,
      this.loadingSemanticMessage,
      this.successSemanticMessage,
      this.focusNode})
      : backgroundColor = Theme.of(context).colors.sysTertiary,
        textAndIconColor = Theme.of(context).colors.sysOnPrimary,
        showBorder = false,
        dsButtonStyleType = DsButtonStyleType.tonal,
        assert(
          buttonIcon != null || buttonText != null,
          'ButtonIcon or ButtonText must be filled',
        );

  final AnimatedButtonController? controller;
  final double? buttonWidth;
  final double? buttonHeight;
  final IconData? buttonIcon;
  final String? buttonText;
  final String? sucessText;
  final TextStyle? textStyle;
  final void Function()? callBack;
  final Future<void>? Function()? onTap;
  final Color? backgroundColor;
  final Color? textAndIconColor;
  final Color? borderColor;
  final ButtonStyle? buttonStyle;
  final DsButtonStyleType dsButtonStyleType;
  final FocusNode? focusNode;

  /// Spacing between icon and text
  final double? spacing;

  /// Invert the position of the text and the icon
  /// the defaut is the icon on the left and text on right
  final bool invert;

  final bool showBorder;

  final bool enabled;

  /// If button shrinks while loading / on success
  /// Default is true
  final bool shrinkOnLoading;

  final bool shrinkOnSuccess;

  /// If show the success animation
  /// Default is false
  final bool success;
  final Duration sucessDuration;

  /// Defaut is 30 seconds
  final Duration timeout;

  // Semantics message
  final String? loadingSemanticMessage;
  final String? successSemanticMessage;

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
    switch (newState) {
      case ButtonState.loading:
        SemanticsService.announce(
          widget.loadingSemanticMessage ?? 'Carregando',
          TextDirection.ltr,
          assertiveness: Assertiveness.assertive,
        );
        break;
      case ButtonState.success:
        SemanticsService.announce(
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
      if (state == ButtonState.loading) {
        if (widget.success) {
          setState(() {
            state = ButtonState.success;
          });

          _announceStateChange(ButtonState.success);

          Future.delayed(widget.sucessDuration, () {
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
      child: AnimatedContainer(
        width: returnCurrentButtonSize(context),
        height: widget.buttonHeight ?? 50,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
        child: getButtonType(
          context,
          widget.dsButtonStyleType,
          child: FittedBox(
            child: returnCurrentButton(context),
          ),
        ),
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
            color: widget.textAndIconColor ?? Colors.white,
          ),
        );
      case ButtonState.success:
        return Semantics(
          label: 'Sucesso',
          value: 'Operação finalizada com sucesso',
          child: Row(
            children:
                buttonBuilder(context, widget.sucessText, Symbols.check_circle),
          ),
        );
      case _:
        return Row(
          children: buttonBuilder(
            context,
            widget.buttonText,
            widget.buttonIcon,
          ),
        );
    }
  }

  double? returnCurrentButtonSize(BuildContext context) {
    if (widget.shrinkOnLoading && state == ButtonState.loading ||
        widget.shrinkOnSuccess && state == ButtonState.success) {
      return 70;
    }

    return widget.buttonWidth ?? MediaQuery.of(context).size.width;
  }

  DSIcon buttonIcon(IconData icon) {
    return DSIcon(
      icon: icon,
      size: 20,
      color: widget.textAndIconColor,
    );
  }

  DSText buttonText(String text) {
    return DSText(
      text,
      style: widget.textStyle ??
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: widget.textAndIconColor ?? Colors.white,
          ),
    );
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
          onPressed: onPressedFunction,
          style: widget.buttonStyle ??
              getButtonStyle(context, widget.dsButtonStyleType),
          child: child,
        );
      case DsButtonStyleType.tonal:
        return FilledButton(
          focusNode: widget.focusNode,
          onPressed: onPressedFunction,
          style: widget.buttonStyle ??
              getButtonStyle(context, widget.dsButtonStyleType),
          child: child,
        );
      case DsButtonStyleType.text:
        return TextButton(
          focusNode: widget.focusNode,
          onPressed: onPressedFunction,
          style: widget.buttonStyle ??
              getButtonStyle(context, widget.dsButtonStyleType),
          child: child,
        );
      default:
        return ElevatedButton(
          focusNode: widget.focusNode,
          onPressed: onPressedFunction,
          style: widget.buttonStyle ??
              getButtonStyle(context, widget.dsButtonStyleType),
          child: child,
        );
    }
  }

  ButtonStyle getButtonStyle(BuildContext context, DsButtonStyleType style) {
    switch (style) {
      case DsButtonStyleType.outlined:
        return OutlinedButton.styleFrom(
          backgroundColor: widget.backgroundColor ??
              Theme.of(context).colors.sysOutlineVariant,
          side: BorderSide(
            color:
                widget.textAndIconColor ?? Theme.of(context).colors.sysPrimary,
          ),
          surfaceTintColor:
              widget.backgroundColor ?? Theme.of(context).colors.sysPrimary,
        );
      case DsButtonStyleType.tonal:
        return FilledButton.styleFrom(
          backgroundColor: widget.backgroundColor ??
              Theme.of(context).colors.sysOutlineVariant,
          side: BorderSide(
            color:
                widget.textAndIconColor ?? Theme.of(context).colors.sysPrimary,
          ),
          surfaceTintColor:
              widget.backgroundColor ?? Theme.of(context).colors.sysPrimary,
        );
      case DsButtonStyleType.text:
        return TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          overlayColor: Colors.transparent,
        );
      case _:
        return ElevatedButton.styleFrom(
          side: widget.showBorder
              ? BorderSide(
                  color: widget.borderColor ??
                      widget.textAndIconColor ??
                      Colors.white,
                )
              : null,
          surfaceTintColor: widget.enabled
              ? widget.backgroundColor ?? Colors.blue
              : Theme.of(context).colors.sysOutline,
          backgroundColor: widget.enabled
              ? widget.backgroundColor ?? Colors.blue
              : Theme.of(context).colors.sysOutline,
        );
    }
  }
}
