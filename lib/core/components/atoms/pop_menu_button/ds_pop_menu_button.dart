import 'package:flutter/material.dart';

abstract class IDSPopMenuButton {
  Widget build(BuildContext context);
  void addItemMenu(int id, IconData icon, String text, Function action);
}

class DSPopMenuButtonModel {
  final IconData? icon;
  final String? text;
  final Function? action;
  final int? id;

  DSPopMenuButtonModel({
    this.id,
    this.icon,
    this.text,
    this.action,
  });
}

class DSPopMenuButton implements IDSPopMenuButton {
  final _list = <DSPopMenuButtonModel>[];

  void _selectedItem(item) {
    if (_list[item].action != null) _list[item].action!();
  }

  Widget _getItemMenu(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(icon), Text(text)],
    );
  }

  List<PopupMenuItem<int>> _getMenuItems() {
    return _list
        .map((e) => PopupMenuItem<int>(
            value: e.id,
            child: _getItemMenu(
              e.icon ?? Icons.arrow_right,
              e.text ?? '',
            )))
        .toList();
  }

  bool _alreadyExists(int id) {
    final res = _list.where((e) => e.id == id);
    return res.isNotEmpty;
  }

  @override
  void addItemMenu(int id, IconData icon, String text, Function action) {
    if (!_alreadyExists(id)) {
      _list.add(DSPopMenuButtonModel(
        id: id,
        action: action,
        icon: icon,
        text: text,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
      ),
      itemBuilder: (context) => _getMenuItems(),
      onSelected: (item) => _selectedItem(item),
    );
  }
}
