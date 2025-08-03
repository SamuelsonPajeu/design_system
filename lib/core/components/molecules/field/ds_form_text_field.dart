import 'dart:async'; // Add timer for debounce

import 'package:design_system/core/components/atoms/field_mask_type/ds_field_mask_type.dart';
import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
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
    this.suffixIcon,
    this.suffixText,
    this.padding = 0,
    this.required = false,
    this.readOnly = false,
    this.validate = false,
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
    super.key,
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final double padding;
  final int? maxLenght;
  final DSFieldMaskType? maskType;
  final bool required;
  final bool readOnly;
  final bool validate;
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
    final appColorsExtension = Theme.of(context).colors;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: widget.padding),
        child: Semantics(
          label: '${widget.hintText} ',
          textField: true,
          enabled: !widget.readOnly,
          excludeSemantics: true,
          focused: widget.focusNode?.hasFocus ?? false,
          hint: widget.required
              ? "(campo obrigatório) $instructionMessage"
              : instructionMessage,
          value: widget.controller.text,
          onTapHint: widget.readOnly && widget.onTap != null
              ? "Toque para selecionar ${widget.hintText}"
              : null,
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
                suffixIcon: widget.suffixIcon,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                filled: true,
                fillColor: widget.readOnly && widget.onTap == null
                    ? appColorsExtension.refneutraln95
                    : widget.backgroundColor ??
                        appColorsExtension.sysSecondaryContainer,
                suffixText: widget.suffixText,
                labelText: showLabel ? null : widget.hintText,
                labelStyle: showLabel
                    ? null
                    : Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: appColorsExtension.sysSecondary,
                        ),
                hintText: widget.hintText,
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: appColorsExtension.sysSecondary,
                    ),
                semanticCounterText:
                    widget.required ? "Campo obrigatório" : null,
                // Adiciona um texto descritivo para suporte a acessibilidade
                // helperText: widget.obscureText ? "Campo de senha" : null,
                // Define se este campo é de senha ou não para os leitores de tela
                label: showLabel
                    ? RichText(
                        text: TextSpan(
                          text: widget.hintText,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: appColorsExtension.sysSecondary,
                                  ),
                          children: [
                            TextSpan(
                                text: ' *',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: appColorsExtension.sysError,
                                    )),
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
              }),
        ));
  }
}
