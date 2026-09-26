import 'package:design_system/core/components/atoms/field_mask_type/ds_field_mask_type.dart';
import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_type_of_input.dart';
import 'package:flutter/material.dart';

///Parametros que os Inputs recebem, com base no TypeOfInput selecionado.
class DSCustomFormInput {
  DSCustomFormInput({
    required this.typeOfInput,
    required this.hintText,
    required this.controller,
    this.shakeKey,
    this.key,
    this.fieldKey,
    this.obscureText = false,
    this.focusNode,
    this.keyboardType,
    this.prefixIcon,
    this.sufixIcon,
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
    this.dropDownOptions,
    this.autovalidateMode = AutovalidateMode.onUnfocus,
    this.width,
    this.isRangePicker = false,
    this.timePickerEntryMode = TimePickerEntryMode.dial,
    this.datePickerEntryMode = DatePickerEntryMode.calendarOnly,
    this.firstDate,
    this.lastDate,
    this.use24hrs = true,
    this.suffixWidget,
    this.showCounter = true,
  });

  final Key? key;
  final DSTypeOfInput typeOfInput;
  final String hintText;
  final bool? obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final Icon? prefixIcon;
  final Widget? sufixIcon;
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
  final List<String>? dropDownOptions;
  final AutovalidateMode autovalidateMode;
  final double? width;
  final bool isRangePicker;
  final TimePickerEntryMode timePickerEntryMode;
  final DatePickerEntryMode datePickerEntryMode;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool use24hrs;
  final Widget? suffixWidget;

  final bool showCounter;
}
