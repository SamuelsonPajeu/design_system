import 'dart:async'; // Add timer for debounce

import 'package:design_system/core/components/atoms/field_mask_type/ds_field_mask_type.dart';
import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/molecules/field/ds_visibility_adapter.dart';
import 'package:design_system/core/components/molecules/keyboard/ds_keyboard_actions.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DSFormTextField extends StatefulWidget {
  const DSFormTextField({
    required this.hintText,
    required this.controller,
    this.shakeKey,
    this.fieldKey,
    this.obscureText = false,
    this.focusNode,
    this.keyboardType,
    this.maxLines = 1,
    this.prefixIcon,
    this.sufixIcon,
    this.sufixIconSemanticLabel,
    this.suffixText,
    this.padding = 0,
    this.required = false,
    this.readOnly = false,
    this.validate = false,
    this.visible = true,
    this.maskedValidation = false,
    this.onTap,
    this.onEditingComplete,
    this.onChanged,
    this.validatorType,
    this.validationMessage,
    this.equalValidationValue,
    this.equalValidationMessage,
    this.maxLenght,
    this.maskType,
    this.backgroundColor,
    this.blockList,
    this.autovalidateMode,
    this.onFieldSubmitted,
    this.multiLine = false,
    this.showCounter = true,
    super.key,
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Icon? prefixIcon;
  final Widget? sufixIcon;
  final String? sufixIconSemanticLabel;
  final double padding;
  final int? maxLenght;
  final DSFieldMaskType? maskType;
  final bool required;
  final bool readOnly;
  final bool validate;
  final bool visible;
  final String? suffixText;
  final String? equalValidationValue;
  final String? validationMessage;
  final String? equalValidationMessage;
  final DSValidatorType? validatorType;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;
  final GlobalKey<DSShakeErrorState>? shakeKey;
  final GlobalKey<FormFieldState>? fieldKey;
  final bool maskedValidation;
  final Color? backgroundColor;
  final List<String>? blockList;
  final AutovalidateMode? autovalidateMode;
  final Function(String)? onFieldSubmitted;
  final bool multiLine;

  final bool showCounter;

  @override
  State<DSFormTextField> createState() => _DSFormTextFieldState();
}

class _DSFormTextFieldState extends State<DSFormTextField> {
  bool fieldIsEmpty = true;

  late List<TextInputFormatter>? inputFormatters;
  late MaskTextInputFormatter? maskFormatter;
  late bool showLabel;
  Timer? _announcementTimer;

  late String instructionMessage;

  @override
  void initState() {
    final mask = DSFieldMask.fromType(widget.maskType);
    instructionMessage = defaultTargetPlatform == TargetPlatform.iOS
        ? widget.readOnly
            ? 'Campo desativado'
            : ''
        : widget.readOnly
            ? 'Campo desativado'
            : 'Toque duas vezes para editar';

    if (mask != null) {
      inputFormatters = mask.inputFormatter;
      maskFormatter = mask.mask;
      widget.controller.text = maskFormatter!.maskText(widget.controller.text);
    } else {
      inputFormatters = [];
      maskFormatter = null;
    }
    showLabel = widget.required && fieldIsEmpty;
    widget.controller.addListener(checkIfControllerIsEmpty);
    super.initState();
  }

  @override
  void dispose() {
    _announcementTimer?.cancel();
    super.dispose();
  }

  void checkIfControllerIsEmpty() {
    setState(() {
      showLabel = widget.required && fieldIsEmpty;
      fieldIsEmpty = widget.controller.text.isEmpty;
    });
  }

  void _handleTextChange(String value) {
    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }

    // Add debounced announcement for screen readers
    _announcementTimer?.cancel();
    _announcementTimer = Timer(const Duration(milliseconds: 500), () {
      if (value.isNotEmpty) {
        SemanticsService.announce(
          value,
          TextDirection.ltr,
          assertiveness: Assertiveness.polite,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appColorsExtension = context.colors;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding),
      child: ValueListenableBuilder<TextEditingValue>(
        valueListenable: widget.controller,
        builder: (context, textValue, child) {
          return Semantics(
            label: '${widget.hintText} ',
            textField: true,
            enabled: !widget.readOnly,
            excludeSemantics: true,
            focused: widget.focusNode?.hasFocus == true,
            hint: widget.required
                ? "(campo obrigatório) $instructionMessage"
                : instructionMessage,
            value: textValue.text,
            onTapHint: widget.readOnly && widget.onTap != null
                ? "Toque para selecionar ${widget.hintText}"
                : null,
            child: child!,
          );
        },
        child: DSKeyboardActionDoneWidget(
          focusNode: widget.focusNode,
          child: TextFormField(
            key: widget.fieldKey,
            autovalidateMode: widget.autovalidateMode,
            maxLines: widget.multiLine ? widget.maxLines : 1,
            readOnly: widget.readOnly,
            obscureText: widget.obscureText,
            controller: widget.controller,
            focusNode: widget.focusNode,
            onFieldSubmitted: widget.onFieldSubmitted,
            keyboardType: widget.keyboardType,
            maxLength: widget.maxLenght,
            onTap: widget.onTap,
            onEditingComplete: widget.onEditingComplete,
            onChanged: _handleTextChange,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.sufixIcon != null &&
                      widget.sufixIconSemanticLabel != null
                  ? Semantics(
                      label: widget.sufixIconSemanticLabel,
                      child: widget.sufixIcon,
                    )
                  : widget.sufixIcon,
              focusedBorder:
                  Theme.of(context).inputDecorationTheme.focusedBorder ??
                      OutlineInputBorder(
                        borderSide:
                            BorderSide(color: appColorsExtension.sysSurface),
                      ),
              counterText: widget.showCounter ? null : '',
              filled: true,
              fillColor: widget.readOnly && widget.onTap == null
                  ? appColorsExtension.sysSurfaceContainerHighest
                  : widget.backgroundColor ?? appColorsExtension.sysSurface,
              suffixText: widget.suffixText,
              labelText: showLabel ? null : widget.hintText,
              labelStyle: showLabel
                  ? null
                  : context.texts.bodyLarge.copyWith(
                      color: appColorsExtension.sysOutline,
                    ),
              hintText: widget.hintText,
              hintStyle: TextStyle(color: appColorsExtension.sysOutline),
              semanticCounterText: widget.required ? "Campo obrigatório" : null,
              // Adiciona um texto descritivo para suporte a acessibilidade
              helperText: widget.obscureText ? "Campo de senha" : null,
              // Define se este campo é de senha ou não para os leitores de tela
              label: showLabel
                  ? RichText(
                      text: TextSpan(
                        text: widget.hintText,
                        style: context.texts.bodyLarge.copyWith(
                          color: appColorsExtension.sysOutline,
                        ),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(
                              color: appColorsExtension.sysError,
                            ),
                          ),
                        ],
                      ),
                    )
                  : null,
            ),
            validator: (value) {
              if (!widget.required && fieldIsEmpty) {
                return null;
              }
              if (!widget.required &&
                  widget.validatorType == null &&
                  widget.validate == false &&
                  widget.equalValidationValue == null) {
                return null;
              }

              String val = value ?? '';

              if (maskFormatter != null &&
                  !widget.maskedValidation &&
                  maskFormatter!.isFill()) {
                maskFormatter!.maskText(val);
                val = maskFormatter!.getUnmaskedText();
              }

              if (!DSValidateField.fromType(widget.validatorType!, val,
                  blockList: widget.blockList)) {
                SemanticsService.announce(
                  widget.validationMessage ??
                      'Insira um valor válido no campo: ${widget.hintText}',
                  TextDirection.ltr,
                  assertiveness: Assertiveness.polite,
                );

                widget.shakeKey?.currentState?.shake();
                return widget.validationMessage ?? 'Campo obrigatório';
              }

              if (widget.equalValidationValue != null &&
                  val != widget.equalValidationValue) {
                SemanticsService.announce(
                  widget.validationMessage ??
                      'Insira um valor válido no campo: ${widget.hintText}',
                  TextDirection.ltr,
                  assertiveness: Assertiveness.polite,
                );
                widget.shakeKey?.currentState?.shake();
                return widget.equalValidationMessage ??
                    'Insira um valor válido';
              }

              return null;
            },
          ),
        ),
      ).visibilityAdapter(visible: widget.visible),
    );
  }
}
