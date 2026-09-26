import 'package:design_system/core/components/organisms/variable_radio_list/model/ds_variable_radio_list_model.dart';
import 'package:design_system/core/components/organisms/variable_radio_list/view/ds_variable_radio_list.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';

class VariableRadioList extends StatefulWidget {
  const VariableRadioList({super.key});

  @override
  State<VariableRadioList> createState() => _VariableRadioListState();
}

class _VariableRadioListState extends State<VariableRadioList> {
  int selectedRadioTile = 0;

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      body: DSVariableRadioList(
        items: [
          DSVariableRadioListModel.fromJson({'text': 'Selecione...', 'id': 0}),
          DSVariableRadioListModel.fromJson({'text': 'Opção 1', 'id': 1}),
          DSVariableRadioListModel.fromJson({'text': 'Opção 2', 'id': 2}),
          DSVariableRadioListModel.fromJson({'text': 'Opção 3', 'id': 3}),
        ],
        selectedRadioTile: selectedRadioTile,
        setSelectedRadioTile: (obj) {
          setState(() {
            selectedRadioTile = obj?.id ?? 0;
          });
        },
      ),
    );
  }
}
