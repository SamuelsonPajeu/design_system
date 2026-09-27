import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer_item.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum _DSNavigationDrawerHeader { title, brand }

/// Menu lateral fixo (web/tablet) com os destinos principais do app.
///
/// - [DSNavigationDrawer]: título de seção no topo (ex.: "Menu").
/// - [DSNavigationDrawer.brand]: logo + nome do app no topo.
///
/// As duas variantes aceitam um [footer] fixo no rodapé, normalmente um
/// `DSNavigationDrawerAccount` com o usuário logado.
///
/// Grupos: um item com `sectionLabel` abre uma seção com legenda acima dele;
/// [pinnedBottomCount] fixa os últimos itens no rodapé (ex.: "Meu cadastro"
/// e "Sair"), fora da rolagem. Os índices de [selectedIndex] e
/// [onItemSelected] são sempre os da lista [items].
class DSNavigationDrawer extends StatelessWidget {
  const DSNavigationDrawer({
    super.key,
    required this.title,
    required this.items,
    required this.selectedIndex,
    this.onItemSelected,
    this.backgroundColor,
    this.width = 350,
    this.fill,
    this.footer,
    this.showDivider = false,
    this.pinnedBottomCount = 0,
  })  : assert(pinnedBottomCount >= 0),
        logo = null,
        _header = _DSNavigationDrawerHeader.title;

  /// Drawer com a marca do app no topo: [logo] ao lado do nome ([title]).
  const DSNavigationDrawer.brand({
    super.key,
    required this.title,
    required Widget this.logo,
    required this.items,
    required this.selectedIndex,
    this.onItemSelected,
    this.backgroundColor,
    this.width = 350,
    this.fill,
    this.footer,
    this.showDivider = false,
    this.pinnedBottomCount = 0,
  })  : assert(pinnedBottomCount >= 0),
        _header = _DSNavigationDrawerHeader.brand;

  /// Título de seção ou, em [DSNavigationDrawer.brand], o nome do app.
  final String title;
  final List<DSNavigationDrawerItem> items;
  final int selectedIndex;
  final ValueChanged<int>? onItemSelected;
  final Color? backgroundColor;
  final double width;
  final double? fill;

  /// Logo da marca, à esquerda do nome. Só em [DSNavigationDrawer.brand].
  final Widget? logo;

  /// Conteúdo fixo no rodapé, abaixo dos itens (ex.:
  /// `DSNavigationDrawerAccount`).
  final Widget? footer;

  /// Linha vertical no lado final, separando o drawer do conteúdo.
  final bool showDivider;

  /// Quantos itens do fim de [items] ficam fixos no rodapé (acima do
  /// [footer]), separados dos demais. `0` = todos na lista rolável.
  final int pinnedBottomCount;

  final _DSNavigationDrawerHeader _header;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? colors.sysSurfaceContainerLow,
        border: showDivider
            ? BorderDirectional(
                end: BorderSide(color: colors.sysOutlineVariant),
              )
            : null,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header == _DSNavigationDrawerHeader.brand
                ? _buildBrandHeader(context)
                : _buildTitleHeader(context),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: _scrollableCount,
                itemBuilder: (context, index) => _buildEntry(index),
              ),
            ),
            if (_scrollableCount < items.length)
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (var i = _scrollableCount; i < items.length; i++)
                      _buildEntry(i),
                  ],
                ),
              ),
            if (footer != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
                child: footer,
              ),
          ],
        ),
      ),
    );
  }

  /// Itens na lista rolável (o que passar de [items] em [pinnedBottomCount]
  /// é ignorado).
  int get _scrollableCount =>
      items.length - pinnedBottomCount.clamp(0, items.length);

  /// Item [index] com a legenda de seção, se houver, acima dele.
  Widget _buildEntry(int index) {
    final item = items[index];
    final tile = _DSNavigationDrawerTile(
      item: item,
      isSelected: index == selectedIndex,
      onTap: () {
        onItemSelected?.call(index);
        item.onTap?.call();
      },
      fill: fill,
    );
    final label = item.sectionLabel;
    if (label == null || label.trim().isEmpty) return tile;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _DSNavigationDrawerSectionLabel(label: label),
        tile,
      ],
    );
  }

  Widget _buildTitleHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 16, 32),
      child: DSText(
        title,
        style: context.texts.titleSmall.copyWith(
          fontWeight: FontWeight.w700,
          color: context.colors.sysOnSurface,
        ),
        autoSize: false,
      ),
    );
  }

  /// Logo alinhado com os ícones dos itens (12 da lista + 16 do item).
  Widget _buildBrandHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 32, 16, 24),
      child: Semantics(
        header: true,
        label: title,
        excludeSemantics: true,
        child: Row(
          children: [
            logo!,
            const SizedBox(width: 12),
            Expanded(
              child: DSText(
                title,
                style: context.texts.titleMedium.copyWith(
                  fontWeight: FontWeight.w700,
                  color: context.colors.sysPrimary,
                ),
                autoSize: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Legenda de um grupo de itens (ex.: "Administração").
class _DSNavigationDrawerSectionLabel extends StatelessWidget {
  const _DSNavigationDrawerSectionLabel({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Semantics(
        header: true,
        child: DSText(
          label,
          style: context.texts.labelMedium.copyWith(
            fontWeight: FontWeight.w700,
            color: context.colors.sysOnSurfaceVariant,
          ),
          autoSize: false,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class _DSNavigationDrawerTile extends StatelessWidget {
  const _DSNavigationDrawerTile({
    required this.item,
    required this.isSelected,
    required this.onTap,
    this.fill,
  });

  final DSNavigationDrawerItem item;
  final bool isSelected;
  final VoidCallback onTap;
  final double? fill;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final backgroundColor =
        isSelected ? colors.sysPrimaryContainer : Colors.transparent;
    final contentColor = isSelected
        ? colors.sysOnSecondaryContainer
        : colors.sysOnSurfaceVariant;

    return Padding(
      padding: EdgeInsets.zero,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  DSIcon.small(
                    icon: item.icon,
                    color: contentColor,
                    fill: (item.fill ?? fill) ?? (isSelected ? 1 : 0),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: DSText(
                      item.label,
                      style: texts.labelLarge.copyWith(
                        color: contentColor,
                        fontWeight: FontWeight.w700,
                      ),
                      autoSize: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (item.badgeLabel?.isNotEmpty ?? false) ...[
                    const SizedBox(width: 8),
                    _DSNavigationDrawerBadge(label: item.badgeLabel!),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Contador do item (pílula em primary).
class _DSNavigationDrawerBadge extends StatelessWidget {
  const _DSNavigationDrawerBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colors.sysPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DSText(
        label,
        style: context.texts.labelSmall.copyWith(
          color: colors.sysOnPrimary,
          fontWeight: FontWeight.w700,
        ),
        autoSize: false,
        maxLines: 1,
      ),
    );
  }
}
