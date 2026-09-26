import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_input.dart';
import 'package:flutter/material.dart';

///Map criado para montar o formulário e recebe a lista de Inputs
class DSCustomFormMap {
  DSCustomFormMap(
      {this.formKey,
      required this.listDSCustomFormInput,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.spacing = 8,
      this.runSpacing = 8});
  final GlobalKey? formKey;
  final AutovalidateMode autovalidateMode;
  final List<DSCustomFormInput> listDSCustomFormInput;

  final double spacing;

  final double runSpacing;
}
