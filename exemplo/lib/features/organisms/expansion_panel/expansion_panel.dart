import 'package:design_system/core/components/molecules/app_bar/ds_app_bar.dart';
import 'package:design_system/core/components/organisms/expansion_panel/ds_expansion_panel.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CustomExpansionPanel extends StatefulWidget {
  const CustomExpansionPanel({super.key});

  @override
  State<CustomExpansionPanel> createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> {
  bool allSelect = false;

  final List<ItemDSExpansionPanel> _data = [
    ItemDSExpansionPanel(
      header: 'Expansion panel text',
      isExpanded: false,
      isChecked: false,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
      ],
    ),
    ItemDSExpansionPanel(
      header: 'Expansion panel text',
      isExpanded: false,
      isChecked: false,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
      ],
    ),
  ];

  void _addNewItem() {
    setState(() {
      _data.add(ItemDSExpansionPanel(
          header: 'Expansion panel text',
          isExpanded: false,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ]));
      allSelect = _data.every((item) => item.isChecked);
    });
  }

  void _removeItem() {
    setState(() {
      _data.removeLast();
      allSelect = _data.every((item) => item.isChecked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      appBar: DSAppBar(text: 'Expansion Panel', context: context),
      body: Column(
        children: [
          DSExpansionPanel(
            showHeader:
                context.knobs.boolean(label: 'Show Header', initial: true),
            showCheckBox:
                context.knobs.boolean(label: 'Show CheckBox', initial: true),
            titlePanel: 'EXPANSION PANEL TITLE',
            allSelect: allSelect,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () => _addNewItem(),
                  child: const Text('+ Adicionar novo',
                      style: TextStyle(color: Colors.blue)),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () => _removeItem(),
                  icon: const Icon(Icons.delete_outline),
                ),
              ],
            ),
            items: _data,
            child: const Column(
              children: [
                Divider(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
