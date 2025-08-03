import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';

class DSDropDownButtonField extends StatefulWidget {
  const DSDropDownButtonField({
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.shakeKey,
    this.fieldKey,
    this.value,
    this.padding = 0,
    this.required = false,
    this.validate = false,
    this.validatorType,
    this.validationMessage,
    this.backgroundColor,
    this.autovalidateMode,
    this.prefixIcon,
    super.key,
  });

  final String hintText;
  final String? value;
  final List<String> items;
  final Function(String?) onChanged;
  final double padding;
  final bool? required;
  final bool? validate;
  final String? validationMessage;
  final DSValidatorType? validatorType;
  final GlobalKey<DSShakeErrorState>? shakeKey;
  final GlobalKey<FormFieldState>? fieldKey;
  final Color? backgroundColor;
  final AutovalidateMode? autovalidateMode;
  final Icon? prefixIcon;

  @override
  State<DSDropDownButtonField> createState() => _DSDropDownButtonFieldState();
}

class _DSDropDownButtonFieldState extends State<DSDropDownButtonField> {
  bool fieldIsEmpty = true;
  late bool showLabel;

  @override
  void initState() {
    super.initState();
    fieldIsEmpty = widget.value == null;
    showLabel = widget.required! && fieldIsEmpty;
  }

  @override
  void didUpdateWidget(DSDropDownButtonField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      setState(() {
        fieldIsEmpty = widget.value == null;
        showLabel = widget.required! && fieldIsEmpty;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColorsExtension = Theme.of(context).colors;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding),
      child: Semantics(
        label: 'Campo de seleção: ${widget.hintText}',
        hint: widget.required!
            ? "(campo obrigatório) Toque duas vezes para selecionar uma opção"
            : "Toque duas vezes para selecionar uma opção",
        value: widget.value ?? "Nenhuma opção selecionada",
        enabled: true,
        excludeSemantics: true,
        onTapHint: "Toque para selecionar uma opção",
        child: DropdownButtonFormField<String>(
          key: widget.fieldKey,
          autovalidateMode: widget.autovalidateMode,
          value: widget.value,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
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
            fillColor: widget.backgroundColor ??
                appColorsExtension.sysSecondaryContainer,
            labelText: widget.hintText,
            labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: appColorsExtension.sysSecondary,
                ),
            // hintText: widget.hintText,
            // hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            //       color: appColorsExtension.sysSecondary,
            //     ),
            semanticCounterText: widget.required! ? "Campo obrigatório" : null,
          ),
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: DSText(
                value,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: appColorsExtension.sysSecondary,
                    ),
              ),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              fieldIsEmpty = value == null;
              showLabel = widget.required! && fieldIsEmpty;
            });
            widget.onChanged(value);
          },
          validator: (value) {
            if (!widget.required! && fieldIsEmpty) {
              return null;
            }

            if (!widget.required! &&
                widget.validatorType == null &&
                widget.validate == false) {
              return null;
            }

            if (fieldIsEmpty || value == null) {
              widget.shakeKey?.currentState?.shake();
              return widget.validationMessage ?? 'Campo obrigatório';
            }

            if (widget.validatorType != null &&
                !DSValidateField.fromType(widget.validatorType!, value)) {
              widget.shakeKey?.currentState?.shake();
              return widget.validationMessage ?? 'Valor inválido';
            }

            return null;
          },
        ),
      ),
    );
  }
}
