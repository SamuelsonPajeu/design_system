import 'package:flutter/material.dart';

class DSNavigationDrawerItem {
  const DSNavigationDrawerItem({
    required this.icon,
    required this.label,
    this.onTap,
    this.fill,
    this.sectionLabel,
    this.badgeLabel,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final double? fill;

  /// Legenda de grupo mostrada acima deste item (ex.: "Administração"),
  /// abrindo uma nova seção do menu. Não conta como item: os índices de
  /// `selectedIndex`/`onItemSelected` continuam os da lista de itens.
  final String? sectionLabel;

  /// Contador à direita do rótulo (ex.: "3" notificações não lidas). `null`
  /// ou vazio esconde.
  final String? badgeLabel;
}
