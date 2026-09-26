import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/menu_item_base/ds_menu_item_base.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSMenuItemButton extends DSBaseMenuItem {
  const DSMenuItemButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.onHover,
    this.requestFocusOnHover = true,
    this.onFocusChange,
    this.focusNode,
    this.shortcut,
    this.setSemantics = false,
    this.clipBehavior = Clip.none,
    this.leadingIcon,
    this.trailingIcon,
    this.closeOnActivate = true,
    this.overflowAxis = Axis.horizontal,
  });

  /// Texto exibido no menu
  final String buttonText;

  /// Chamado quando o botão é pressionado ou ativado de outra forma.
  ///
  /// Se este callback for null, o botão ficará desativado.
  final VoidCallback? onPressed;

  /// Chamado quando o ponteiro entra ou sai da área do botão.
  ///
  /// O valor passado para o callback é true se o ponteiro entrou na área do botão
  /// e false se o ponteiro saiu.
  final ValueChanged<bool>? onHover;

  /// Determina se pode solicitar foco ao passar o mouse por cima.
  ///
  /// O valor padrão é true.
  final bool requestFocusOnHover;

  /// Chamado quando o focus muda
  ///
  /// Chamado como true se o Node do Widget ganhar foco, e false se perder
  /// o foco.
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// Tecla de atalho opcional que chama esse [MenuItemButton].
  ///
  /// {@macro flutter.material.MenuBar.shortcuts_note}
  final MenuSerializableShortcut? shortcut;

  /// Se verdadeiro, seta o valor de semantica do Menu conforme valor inserido no [buttonText]
  ///
  /// Definir este rótulo substitui as propriedades de semântica de todo
  /// o Widget, incluindo seus filhos. Considere envolver este widget com
  /// [Semantics] se você quiser personalizar outras propriedades além
  /// apenas do rótulo.
  ///
  /// O valor padrão é falso
  final bool setSemantics;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Valor pardão é [Clip.none].
  final Clip clipBehavior;

  /// Um icone opcional para ser mostrado antes do [buttonText].
  final DSIcon? leadingIcon;

  /// Um icone opcional para ser mostrado depois do [buttonText].
  final DSIcon? trailingIcon;

  /// {@template flutter.material.menu_anchor.closeOnActivate}
  /// Determina se um menu é fechado ao apertar um [MenuItemButton]
  ///
  /// O valor padrão é true.
  /// {@endtemplate}
  final bool closeOnActivate;

  /// A direção no qual o meu vai expandir
  ///
  /// Se o menu decende de um [MenuAnchor] ou [MenuBar],
  /// essa propriedade é ignorada
  ///
  /// Se o [overflowAxis] é igual a [Axis.vertical], o menu vai expandir verticalmente.
  /// Se o [overflowAxis] é igual a [Axis.horizontal], o menu vai expandir horizontalmente
  ///
  /// Valor padrão é [Axis.horizontal].
  final Axis overflowAxis;

  /// Se o botão está ativo ou não
  ///
  /// Para habilitar o botão, defina a propriedade [onPressed] com um valor != null.
  bool get enabled => onPressed != null;

  @override
  Widget build(BuildContext context) {
    return MenuItemButton(
      onPressed: onPressed,
      onHover: onHover,
      requestFocusOnHover: requestFocusOnHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      shortcut: shortcut,
      semanticsLabel: setSemantics ? buttonText : null,
      clipBehavior: clipBehavior,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      closeOnActivate: closeOnActivate,
      overflowAxis: overflowAxis,
      style: context.theme.menuButtonTheme.style,
      child: Text(
        buttonText,
      ),
    );
  }
}
