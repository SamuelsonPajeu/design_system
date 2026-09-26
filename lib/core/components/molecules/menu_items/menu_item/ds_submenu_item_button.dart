import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/menu_item_base/ds_menu_item_base.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSSubmenuItemButton extends DSBaseMenuItem {
  const DSSubmenuItemButton({
    super.key,
    required this.children,
    required this.buttonText,
    this.onHover,
    this.onFocusChange,
    this.focusNode,
    this.clipBehavior = Clip.none,
    this.leadingIcon,
    this.trailingIcon,
  });

  /// Texto exibido no menu
  final String buttonText;

  /// Lista dos submenus
  final List<DSBaseMenuItem> children;

  /// Chamado quando o ponteiro entra ou sai da área do botão.
  ///
  /// O valor passado para o callback é true se o ponteiro entrou na área do botão
  /// e false se o ponteiro saiu.
  final ValueChanged<bool>? onHover;

  /// Chamado quando o focus muda
  ///
  /// Chamado como true se o Node do Widget ganhar foco, e false se perder
  /// o foco.
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Valor pardão é [Clip.none].
  final Clip clipBehavior;

  /// Um icone opcional para ser mostrado antes do [buttonText].
  final DSIcon? leadingIcon;

  /// Um icone opcional para ser mostrado depois do [buttonText].
  final DSIcon? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return SubmenuButton(
      menuChildren: children,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      clipBehavior: clipBehavior,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      style: context.theme.menuButtonTheme.style,
      child: Text(
        buttonText,
        maxLines: 1,
      ),
    );
  }
}
