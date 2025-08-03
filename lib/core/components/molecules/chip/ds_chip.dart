import 'package:flutter/material.dart';

enum TypeOfChip {
  labelOnly,
  labelAndTralingIcon,
  labelAndLeadingIcon,
  labelAndAvatarAndIcon,
  labelAndAvatar,
  labelAvatarAndIcon,
}

class DSChip extends StatelessWidget {
  const DSChip({
    super.key,
    required this.typeOfChip,
    required this.label,
    this.selected = false,
    this.avatar,
    this.onPressed,
  });
  final TypeOfChip typeOfChip;
  final String label;
  final bool selected;
  final Widget? avatar;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: [getChip(typeOfChip)],
    );
  }

  Widget getChip(TypeOfChip typeOfChip) {
    Widget? finalAvatar;

    switch (typeOfChip) {
      case TypeOfChip.labelOnly:
        finalAvatar = null;
        break;
      case TypeOfChip.labelAndTralingIcon:
      case TypeOfChip.labelAndLeadingIcon:
      case TypeOfChip.labelAndAvatarAndIcon:
        finalAvatar = avatar;
        break;
      case TypeOfChip.labelAndAvatar:
      case TypeOfChip.labelAvatarAndIcon:
        finalAvatar = CircleAvatar(child: avatar);
        break;
    }

    return Semantics(
      label: 'Filtro: $label, ${selected ? "selecionado" : "não selecionado"}',
      button: true,
      selected: selected,
      child: ExcludeSemantics(
        excluding: true,
        child: InputChip(
          avatar: finalAvatar,
          label: Text(label, maxLines: 1),
          selected: selected,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
