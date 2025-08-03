import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:flutter/material.dart';

enum DSCardType {
  button,
  defaultType,
}

class DSCard extends StatelessWidget {
  final String? descricao;
  final String? status;
  final IconData? icon;
  final IconData? trailingIcon;
  final Color? iconColor;
  final Color? trailingIconColor;
  final Color? bgIconColor;
  final String? title;
  final List<DSButton>? actionButtons;
  final List<Widget>? children;
  final PopupMenuButton? popupMenuButton;
  final DSCardType _type;
  final VoidCallback? _onTap;
  final String? _onTapSemanticDescription;

  const DSCard({
    super.key,
    this.descricao,
    this.status,
    this.icon,
    this.trailingIcon,
    this.iconColor,
    this.bgIconColor,
    this.trailingIconColor,
    this.title,
    this.actionButtons,
    this.children,
    this.popupMenuButton,
  })  : _type = DSCardType.defaultType,
        _onTap = null,
        _onTapSemanticDescription = null;

  const DSCard.button({
    required this.title,
    required VoidCallback onTap,
    String? onTapSemanticDescription,
    super.key,
    this.descricao,
    this.status,
    this.icon,
    this.iconColor,
    this.bgIconColor,
    this.children,
    this.trailingIcon,
    this.trailingIconColor,
  })  : _type = DSCardType.button,
        _onTap = onTap,
        actionButtons = null,
        popupMenuButton = null,
        _onTapSemanticDescription = onTapSemanticDescription;

  String toSemanticLabel() {
    final List<String> parts = [];

    if (title?.trim().isNotEmpty == true) {
      parts.add(
          '${_type == DSCardType.button ? 'Botão: ' : 'Título: '} ${title!.trim()}');
    }

    if (descricao?.trim().isNotEmpty == true) {
      parts.add('Descrição: ${descricao!.trim()}');
    }

    if (status?.trim().isNotEmpty == true) {
      parts.add('Status: ${status!.trim()}');
    }

    if (_type == DSCardType.button) {
      parts.add(_onTapSemanticDescription ?? 'Toque duas vezes para ativar');
    }

    if (actionButtons?.isNotEmpty == true) {
      final count = actionButtons!.length;
      parts.add(
          '$count ${count == 1 ? 'ação disponível' : 'ações disponíveis'}');
    }

    return parts.join('. ');
  }

  @override
  Widget build(BuildContext context) {
    Widget cardContent = Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _onTap != null ? Colors.transparent : const Color(0xFFE7EFEF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (icon != null)
                Container(
                  width: 48,
                  height: 48,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: bgIconColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(icon, color: iconColor),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title?.isNotEmpty == true)
                      ExcludeSemantics(
                        excluding: true,
                        child: Padding(
                            padding: EdgeInsets.only(
                                right: status?.isNotEmpty == true ? 4 : 0),
                            child: DSText(
                              title ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                letterSpacing: 0.5,
                              ),
                            )),
                      ),
                    const SizedBox(height: 4),
                    if (descricao?.isNotEmpty == true)
                      ExcludeSemantics(
                        excluding: true,
                        child: DSText(
                          descricao ?? '',
                          style: const TextStyle(fontSize: 13),
                        ),
                      )
                  ],
                ),
              ),
              if (status?.isNotEmpty == true)
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF708B8C)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ExcludeSemantics(
                      excluding: true,
                      child: DSText(
                        status ?? '',
                        maxFontSize: 13,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    )),
              if (popupMenuButton != null) popupMenuButton!,
              if (_type == DSCardType.button || trailingIcon != null)
                Container(
                  width: 48,
                  height: 48,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: bgIconColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    trailingIcon ?? Icons.chevron_right_outlined,
                    color: trailingIconColor ?? iconColor,
                  ),
                ),
            ],
          ),
          if (children?.isNotEmpty == true)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children!,
              ),
            ),
          if (actionButtons?.isNotEmpty == true)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: SizedBox(
                height: 45,
                child: Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: actionButtons?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: actionButtons![index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );

    Widget card = _onTap != null
        ? Material(
            color: const Color(0xFFE7EFEF),
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: _onTap,
              borderRadius: BorderRadius.circular(16),
              child: cardContent,
            ),
          )
        : cardContent;

    return Semantics(
      label: toSemanticLabel(),
      container: true,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: card,
      ),
    );
  }
}
