import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

enum TypeOfChip {
  input,
  assistive,
  filter,
  semantics,
}

enum SemanticStatus {
  error,
  warning,
  success,
}

enum ChipStyle {
  outlined,
  elevated,
}

class DSChip extends StatelessWidget {
  const DSChip.input({
    super.key,
    required this.label,
    required this.onPressed,
    this.selected,
    this.onDeleted,
    this.onSelected,
    this.useBackground = true,
    this.leadingIcon,
    this.avatar,
    this.selectedAvatar,
    this.textColor,
    this.background,
  })  : assert(avatar == null || leadingIcon == null,
            'Only avatar or leading showIcon can be used, not both'),
        typeOfChip = TypeOfChip.input,
        outlined = true,
        enable = true,
        trailingIcon = null,
        borderColor = null,
        chipStyle = null,
        status = null,
        menu = null,
        showIcon = null,
        filterSelectedColor = null,
        trailingWidget = null;

  const DSChip.assistive({
    super.key,
    required this.label,
    this.selected,
    this.leadingIcon,
    this.avatar,
    this.background,
    this.borderColor,
    this.chipStyle = ChipStyle.outlined,
    this.textColor,
  })  : assert(avatar == null || leadingIcon == null,
            'Only avatar or leading showIcon can be used, not both'),
        typeOfChip = TypeOfChip.assistive,
        trailingIcon = null,
        enable = true,
        onPressed = null,
        onDeleted = null,
        onSelected = null,
        selectedAvatar = null,
        outlined = true,
        status = null,
        showIcon = null,
        menu = null,
        useBackground = true,
        filterSelectedColor = null,
        trailingWidget = null;

  const DSChip.semantics({
    required this.status,
    required this.label,
    required this.showIcon,
    this.trailingIcon,
    this.textColor,
    this.background,
    super.key,
  })  : typeOfChip = TypeOfChip.semantics,
        chipStyle = ChipStyle.outlined,
        selected = true,
        outlined = true,
        useBackground = true,
        avatar = null,
        selectedAvatar = null,
        leadingIcon = null,
        enable = true,
        borderColor = null,
        onPressed = null,
        onDeleted = null,
        onSelected = null,
        menu = null,
        filterSelectedColor = null,
        trailingWidget = null;

  const DSChip.filter({
    super.key,
    required this.label,
    required this.onSelected,
    this.selected = false,
    this.leadingIcon,
    this.menu,
    this.chipStyle = ChipStyle.outlined,
    this.background,
    this.filterSelectedColor,
    this.trailingWidget,
    this.onDeleted,
    this.textColor,
  })  : typeOfChip = TypeOfChip.filter,
        trailingIcon = null,
        enable = true,
        borderColor = null,
        onPressed = null,
        selectedAvatar = null,
        outlined = true,
        status = null,
        showIcon = null,
        avatar = null,
        useBackground = true;

  final TypeOfChip typeOfChip;
  final ChipStyle? chipStyle;
  final SemanticStatus? status;
  final DSIcon? trailingIcon;
  final DSIcon? leadingIcon;
  final DSText label;
  final bool? selected;
  final DSAvatar? avatar;
  final DSAvatar? selectedAvatar;
  final Color? background;
  final Color? textColor;
  final Color? borderColor;
  final bool? enable;
  final bool? outlined;
  final bool? showIcon;
  final bool? useBackground;
  final Function()? onPressed;
  final Function()? onDeleted;
  final Function(bool)? onSelected;
  final DSMenu? menu;
  final Color? filterSelectedColor;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Focus(
      canRequestFocus: false,
      descendantsAreFocusable: false,
      child: _getChip(typeOfChip, context),
    );
  }

  Widget _getChip(TypeOfChip typeOfChip, BuildContext context) {
    final backgroundColor =
        useBackground == true ? _backgroundColor(context) : Colors.transparent;

    return Semantics(
      label:
          'Filtro: $label, ${selected == true ? "selecionado" : "não selecionado"}',
      button: true,
      child: ExcludeSemantics(
        excluding: true,
        child: Builder(builder: (context) {
          switch (typeOfChip) {
            case TypeOfChip.input:
              return InputChip(
                padding: padding,
                isEnabled: enable ?? true,
                backgroundColor: backgroundColor,
                selectedColor: context.colors.sysPrimaryContainer,
                selected: selected ?? false,
                avatar: _getLocalAvatar(context),
                label: _getFormattedLabel(context),
                showCheckmark: false,
                onPressed: onPressed,
                onDeleted: onDeleted,
                onSelected: onSelected,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: outlined == false || selected == true || enable == false
                      ? BorderSide.none
                      : BorderSide(
                          color: borderColor ?? context.colors.sysOutline,
                        ),
                ),
              );
            case TypeOfChip.assistive:
            case TypeOfChip.semantics:
              return Chip(
                padding: padding,
                backgroundColor: chipStyle == ChipStyle.outlined
                    ? backgroundColor
                    : context.colors.sysSurfaceContainerLow,
                avatar: _getLocalAvatar(context) ??
                    _getSemanticStatus(context, status, showIcon ?? false),
                label: _getFormattedLabel(context),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: _borderColor(context) ??
                        (chipStyle == ChipStyle.outlined
                            ? context.colors.sysOutline
                            : context.colors.sysSurfaceContainerLow),
                  ),
                ),
                shadowColor: Colors.black,
                elevation: chipStyle == ChipStyle.elevated ? 3.0 : 0.0,
              );
            case TypeOfChip.filter:
              return menu != null
                  ? menu!.copyWith(
                      builder: (context, controller, child) =>
                          _getFilterChip(context, controller),
                    )
                  : _getFilterChip(context, null);
          }
        }),
      ),
    );
  }

  FilterChip _getFilterChip(
    BuildContext context,
    MenuController? controller,
  ) {
    return FilterChip(
      label: _getFormattedLabel(context),
      onSelected: (onSelected != null || controller != null)
          ? (bool value) {
              if (controller != null) {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              }
              if (onSelected != null) {
                onSelected!(value);
              }
            }
          : null,
      selected: selected ?? false,
      padding: padding,
      backgroundColor: _filterChipBackgroundColor(context),
      selectedColor: filterSelectedColor ?? context.colors.sysPrimaryContainer,
      avatar: selected == true
          ? null
          : _getLocalAvatar(context) ??
              _getSemanticStatus(context, status, showIcon ?? false),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: selected == false
            ? BorderSide(
                color: _borderColor(context) ??
                    (chipStyle == ChipStyle.outlined
                        ? context.colors.sysOutline
                        : context.colors.sysSurfaceContainerLow),
              )
            : BorderSide.none,
      ),
      shadowColor: Colors.black,
      elevation: chipStyle == ChipStyle.elevated ? 3.0 : 0.0,
      onDeleted: trailingWidget != null
          ? () {
              if (onDeleted != null) {
                onDeleted!();
              } else if (onSelected != null) {
                onSelected!(!(selected ?? false));
              }
            }
          : (menu == null
              ? null
              : () {
                  if (controller == null) return;
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                }),
      deleteButtonTooltipMessage: '',
      deleteIcon: trailingWidget ??
          Icon(
            controller == null
                ? Symbols.arrow_drop_down
                : (controller.isOpen
                    ? Symbols.arrow_drop_up
                    : Symbols.arrow_drop_down),
            color: context.colors.sysOnSurfaceVariant,
          ),
    );
  }

  Color? _filterChipBackgroundColor(BuildContext context) {
    if (background != null) {
      return background;
    }
    return chipStyle == ChipStyle.outlined
        ? Colors.transparent
        : context.colors.sysSurfaceContainerLow;
  }

  Widget? _getLocalAvatar(BuildContext context) {
    if (avatar == null && leadingIcon == null) return null;

    if (leadingIcon != null) {
      return leadingIcon;
    }

    return selected == true
        ? selectedAvatar ??
            DSAvatar.medium
                .icon(
                  icon: Icons.check,
                  background: context.colors.sysOnPrimaryContainer,
                  widgetColor: context.colors.sysSecondaryContainer,
                )
                .copyWith(borderRadius: 10)
        : avatar;
  }

  Color? _textColor(BuildContext context) {
    if (enable == false) {
      return context.colors.sysOnSurfaceVariant;
    } else {
      if (typeOfChip == TypeOfChip.semantics) {
        switch (status!) {
          case SemanticStatus.error:
            return context.colors.sysOnErrorContainer;
          case SemanticStatus.warning:
            return context.colors.sysOnWarnContainer;
          case SemanticStatus.success:
            return context.colors.sysOnSuccessContainer;
        }
      }
      return textColor ?? context.colors.sysOnPrimaryContainer;
    }
  }

  Color? _backgroundColor(BuildContext context) {
    if (typeOfChip == TypeOfChip.semantics) {
      switch (status!) {
        case SemanticStatus.error:
          return context.colors.sysErrorContainer;
        case SemanticStatus.warning:
          return context.colors.sysWarnContainer;
        case SemanticStatus.success:
          return context.colors.sysSuccessContainer;
      }
    }
    return background;
  }

  Color? _borderColor(BuildContext context) {
    if (typeOfChip == TypeOfChip.semantics) {
      switch (status!) {
        case SemanticStatus.error:
          return context.colors.sysOnErrorContainer;
        case SemanticStatus.warning:
          return context.colors.sysOnWarnContainer;
        case SemanticStatus.success:
          return context.colors.sysOnSuccessContainer;
      }
    }
    return borderColor;
  }

  Widget _getFormattedLabel(
    BuildContext context,
  ) {
    return label.copyWith(
      autoSize: false,
      style: context.texts.labelLarge.copyWith(
        color: _textColor(context),
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget? _getSemanticStatus(
    BuildContext context,
    SemanticStatus? status,
    bool showIcon,
  ) {
    if (!showIcon) return null;

    switch (status) {
      case SemanticStatus.error:
        return DSIcon.extraSmall(
          icon: trailingIcon?.icon ?? Symbols.error,
          color: context.colors.sysOnErrorContainer,
        );
      case SemanticStatus.warning:
        return DSIcon.extraSmall(
          icon: trailingIcon?.icon ?? Symbols.warning,
          color: context.colors.sysOnWarnContainer,
        );
      case SemanticStatus.success:
        return DSIcon.extraSmall(
          icon: trailingIcon?.icon ?? Symbols.check,
          color: context.colors.sysOnSuccessContainer,
        );
      case null:
        return null;
    }
  }

  EdgeInsetsGeometry get padding {
    if (onDeleted != null) {
      if (avatar != null) {
        return const EdgeInsets.only(left: 3, right: 4, top: 4, bottom: 4);
      } else {
        return const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 6,
        );
      }
    } else {
      if (avatar != null) {
        return const EdgeInsets.only(left: 3, right: 4, top: 4, bottom: 4);
      } else {
        return const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 6,
        );
      }
    }
  }
}
