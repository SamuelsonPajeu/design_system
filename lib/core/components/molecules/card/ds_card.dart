import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSCardType {
  retracted,
  defaultType,
  table,
}

enum DSCardStyle {
  outlined,
  elevated,
  enabled,
  tinted,
}

class DSCard extends StatelessWidget {
  final String? subtitle;
  final DSChip? status;
  final DSAvatar? avatar;
  final Widget? trailingIcon;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? paddingChildren;
  final EdgeInsetsGeometry? paddingAvatar;
  final EdgeInsetsGeometry? paddingTitle;
  final EdgeInsetsGeometry? paddingSubtitle;
  final EdgeInsetsGeometry? paddingSubheader;
  final EdgeInsetsGeometry? paddingStatus;
  final EdgeInsetsGeometry? paddingTrailingIcon;
  final EdgeInsetsGeometry? paddingActionButtons;
  final CrossAxisAlignment? headerCrossAxisAlignment;
  final CrossAxisAlignment? titleCrossAxisAlignment;

  final Color? iconColor;
  final Color? trailingIconColor;
  final Color? bgIconColor;
  final Color? backgroundColor;
  final String? title;
  final List<DSButton>? actionButtons;
  final List<Widget>? children;
  final PopupMenuButton? popupMenuButton;
  final double borderRadius;
  final DSCardType _type;
  final VoidCallback? _onTap;
  final String? _onTapSemanticDescription;
  final bool? showTrailingIcon;
  final bool numericalTitle;
  final Widget? subheader;
  final DSCardStyle style;
  final TextStyle? titleStyle;

  const DSCard({
    super.key,
    this.subtitle,
    this.status,
    this.avatar,
    this.trailingIcon,
    this.paddingChildren,
    this.paddingAvatar,
    this.paddingTitle,
    this.paddingSubtitle,
    this.paddingSubheader,
    this.paddingStatus,
    this.paddingTrailingIcon,
    this.paddingActionButtons,
    this.iconColor,
    this.bgIconColor,
    this.trailingIconColor,
    this.title,
    this.actionButtons,
    this.children,
    this.popupMenuButton,
    this.borderRadius = 12,
    this.showTrailingIcon = false,
    this.subheader,
    this.padding,
    this.backgroundColor,
    this.numericalTitle = false,
    this.style = DSCardStyle.outlined,
    this.headerCrossAxisAlignment = CrossAxisAlignment.start,
    this.titleCrossAxisAlignment = CrossAxisAlignment.center,
    this.titleStyle,
  })  : _type = DSCardType.defaultType,
        _onTap = null,
        _onTapSemanticDescription = null;

  const DSCard.button({
    required this.title,
    VoidCallback? onTap,
    String? onTapSemanticDescription,
    super.key,
    this.subtitle,
    this.padding,
    this.paddingChildren,
    this.paddingAvatar,
    this.paddingTitle,
    this.paddingSubtitle,
    this.paddingSubheader,
    this.paddingStatus,
    this.paddingTrailingIcon,
    this.paddingActionButtons,
    this.status,
    this.avatar,
    this.iconColor,
    this.bgIconColor,
    this.children,
    this.trailingIcon,
    this.trailingIconColor,
    this.borderRadius = 12,
    this.showTrailingIcon = true,
    this.backgroundColor,
    this.numericalTitle = false,
    this.subheader,
    this.style = DSCardStyle.outlined,
    this.headerCrossAxisAlignment = CrossAxisAlignment.start,
    this.titleCrossAxisAlignment = CrossAxisAlignment.center,
    this.titleStyle,
  })  : _type = DSCardType.retracted,
        _onTap = onTap,
        actionButtons = null,
        popupMenuButton = null,
        _onTapSemanticDescription = onTapSemanticDescription;

  DSCard.table({
    super.key,
    this.subtitle,
    this.status,
    this.avatar,
    this.trailingIcon,
    this.paddingChildren,
    this.paddingAvatar = const EdgeInsets.only(left: 16, top: 16, bottom: 16),
    this.paddingTitle = const EdgeInsets.only(top: 16),
    this.paddingSubtitle = const EdgeInsets.only(bottom: 16),
    this.paddingStatus,
    this.paddingTrailingIcon = const EdgeInsets.only(top: 8, right: 16),
    this.paddingActionButtons = const EdgeInsets.only(bottom: 16, right: 8),
    this.iconColor,
    this.bgIconColor,
    this.trailingIconColor,
    this.title,
    this.actionButtons,
    required List<DSListTile> children,
    this.popupMenuButton,
    this.borderRadius = 12,
    this.showTrailingIcon = false,
    this.padding = EdgeInsets.zero,
    this.backgroundColor,
    this.numericalTitle = false,
    this.subheader,
    this.style = DSCardStyle.outlined,
    this.headerCrossAxisAlignment = CrossAxisAlignment.center,
    this.titleCrossAxisAlignment = CrossAxisAlignment.center,
    this.titleStyle,
  })  : children = List<Widget>.from(children),
        _type = DSCardType.table,
        _onTap = null,
        _onTapSemanticDescription = null,
        paddingSubheader = null;

  String toSemanticLabel() {
    final List<String> parts = [];

    if (title?.trim().isNotEmpty == true) {
      parts.add(
          '${_type == DSCardType.retracted ? 'Botão: ' : 'Título: '} ${title!.trim()}');
    }

    if (subtitle?.trim().isNotEmpty == true) {
      parts.add('Descrição: ${subtitle!.trim()}');
    }

    if (status != null) {
      parts.add('Status: ${status!.label}');
    }

    if (_type == DSCardType.retracted) {
      parts.add(_onTapSemanticDescription ?? 'Toque duas vezes para ativar');
    }

    if (actionButtons?.isNotEmpty == true) {
      final count = actionButtons!.length;
      parts.add(
          '$count ${count == 1 ? 'ação disponível' : 'ações disponíveis'}');
    }

    return parts.join('. ');
  }

  Color _getBackgroundColor(BuildContext context) {
    switch (style) {
      case DSCardStyle.outlined:
        return context.colors.sysSurface;
      case DSCardStyle.elevated:
        return context.colors.sysSurfaceContainerHigh;
      case DSCardStyle.enabled:
        return context.colors.sysSurface;
      case DSCardStyle.tinted:
        return backgroundColor ?? context.colors.sysSurfaceTinted;
    }
  }

  Border? _getBorder(BuildContext context) {
    switch (style) {
      case DSCardStyle.outlined:
        return Border.all(color: context.colors.sysOutline);
      case DSCardStyle.elevated:
      case DSCardStyle.enabled:
      case DSCardStyle.tinted:
        return null;
    }
  }

  List<BoxShadow>? _getBoxShadow() {
    switch (style) {
      case DSCardStyle.outlined:
        return [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 1,
            offset: const Offset(0, 0.5),
          ),
        ];
      case DSCardStyle.elevated:
        return [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ];
      case DSCardStyle.enabled:
      case DSCardStyle.tinted:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget cardContent = Padding(
      padding: padding ?? const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment:
                titleCrossAxisAlignment ?? CrossAxisAlignment.center,
            children: [
              if (avatar != null) ...[
                Padding(
                  padding: paddingAvatar ?? EdgeInsets.zero,
                  child: avatar!,
                ),
                const SizedBox(width: 8),
              ],
              Expanded(
                child: Row(
                  crossAxisAlignment:
                      headerCrossAxisAlignment ?? CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (title?.isNotEmpty == true) ...[
                            ExcludeSemantics(
                              excluding: true,
                              child: Padding(
                                padding: paddingTitle ??
                                    EdgeInsets.only(
                                        right: status != null ? 4 : 0),
                                child: DSText(
                                  title ?? '',
                                  autoSize: false,
                                  style: numericalTitle
                                      ? context.texts.headlineMedium.copyWith(
                                          fontWeight: FontWeight.w500,
                                        )
                                      : titleStyle ??
                                          context.texts.titleMedium.copyWith(
                                            fontWeight: FontWeight.w700,
                                          ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                          ],
                          if (subtitle?.isNotEmpty == true)
                            ExcludeSemantics(
                              excluding: true,
                              child: Padding(
                                padding: paddingSubtitle ?? EdgeInsets.zero,
                                child: DSText(
                                  subtitle ?? '',
                                  autoSize: false,
                                  style: context.texts.bodyMedium,
                                ),
                              ),
                            ),
                          if (subheader != null)
                            Padding(
                              padding: paddingSubheader ??
                                  const EdgeInsets.only(top: 4),
                              child: subheader!,
                            ),
                        ],
                      ),
                    ),
                    if (status != null)
                      Padding(
                        padding:
                            paddingStatus ?? const EdgeInsets.only(left: 8),
                        child: status!,
                      ),
                    if (popupMenuButton != null) popupMenuButton!,
                    if (showTrailingIcon == true || trailingIcon != null)
                      Padding(
                        padding: paddingTrailingIcon ?? EdgeInsets.zero,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(borderRadius),
                            bottomRight: Radius.circular(borderRadius),
                          ),
                          child: trailingIcon ??
                              Container(
                                width: 48,
                                height: 48,
                                margin: const EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                  color: bgIconColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Icon(
                                  Icons.chevron_right_outlined,
                                  color: trailingIconColor ?? iconColor,
                                ),
                              ),
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
          if (children?.isNotEmpty == true)
            Padding(
              padding: paddingChildren ?? const EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children!,
              ),
            ),
          if (actionButtons?.isNotEmpty == true)
            Padding(
              padding: paddingActionButtons ?? const EdgeInsets.only(top: 12),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.end,
                  spacing: 8,
                  runSpacing: 8,
                  children: actionButtons!,
                ),
              ),
            ),
        ],
      ),
    );

    Widget card = Container(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: style == DSCardStyle.elevated ? Clip.none : Clip.antiAlias,
      decoration: BoxDecoration(
        color: _getBackgroundColor(context),
        border: _getBorder(context),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: _getBoxShadow(),
      ),
      child: _onTap != null
          ? Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _onTap,
                borderRadius: BorderRadius.circular(borderRadius),
                child: cardContent,
              ),
            )
          : cardContent,
    );

    return Semantics(
      label: toSemanticLabel(),
      container: true,
      child: card,
    );
  }
}
