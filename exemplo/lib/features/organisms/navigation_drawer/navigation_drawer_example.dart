import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer_account.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer_item.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class NavigationDrawerExample extends StatefulWidget {
  const NavigationDrawerExample({super.key});

  @override
  State<NavigationDrawerExample> createState() =>
      _NavigationDrawerExampleState();
}

class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
  int _selectedIndex = 1;

  static const _items = [
    DSNavigationDrawerItem(
      icon: Symbols.home,
      label: 'Início',
    ),
    DSNavigationDrawerItem(
      icon: Symbols.add_box,
      label: 'Serviços',
    ),
    DSNavigationDrawerItem(
      icon: Symbols.calendar_month,
      label: 'Agenda',
    ),
    DSNavigationDrawerItem(
      icon: Symbols.emergency,
      label: 'Emergência',
    ),
  ];

  /// Os mesmos itens com um grupo ("Gestão") e dois fixos no rodapé.
  static const _groupedItems = [
    ..._items,
    DSNavigationDrawerItem(
      icon: Symbols.admin_panel_settings,
      label: 'Acessos',
      sectionLabel: 'Gestão',
    ),
    DSNavigationDrawerItem(
      icon: Symbols.apartment,
      label: 'Unidades',
    ),
    DSNavigationDrawerItem(
      icon: Symbols.badge,
      label: 'Meu cadastro',
    ),
    DSNavigationDrawerItem(
      icon: Symbols.logout,
      label: 'Voltar ao app',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final brand = context.knobs.boolean(
      label: 'Marca (logo + nome)',
      initial: true,
    );
    final showAccount = context.knobs.boolean(
      label: 'Conta no rodapé',
      initial: true,
    );
    final showDivider = context.knobs.boolean(
      label: 'Divisória lateral',
      initial: true,
    );
    final grouped = context.knobs.boolean(
      label: 'Grupo com legenda + itens fixos no rodapé',
      initial: false,
    );
    final items = grouped ? _groupedItems : _items;
    final pinnedBottomCount = grouped ? 2 : 0;

    final footer = showAccount
        ? DSNavigationDrawerAccount(
            name: 'Joana Lima',
            initials: 'JL',
            supportingText: 'Sair',
            onTap: () {},
          )
        : null;

    if (_selectedIndex >= items.length) _selectedIndex = 0;

    void onItemSelected(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return DSScaffold(
      body: Row(
        children: [
          brand
              ? DSNavigationDrawer.brand(
                  title: 'semtetPlayground',
                  logo: DSIcon.custom(
                    icon: Symbols.hexagon,
                    color: context.colors.sysPrimary,
                  ),
                  width: 240,
                  selectedIndex: _selectedIndex,
                  onItemSelected: onItemSelected,
                  footer: footer,
                  showDivider: showDivider,
                  pinnedBottomCount: pinnedBottomCount,
                  items: items,
                )
              : DSNavigationDrawer(
                  title: 'Menu',
                  selectedIndex: _selectedIndex,
                  onItemSelected: onItemSelected,
                  footer: footer,
                  showDivider: showDivider,
                  pinnedBottomCount: pinnedBottomCount,
                  items: items,
                ),
          const Expanded(
            child: Center(
              child: Text('Conteúdo da página'),
            ),
          ),
        ],
      ),
    );
  }
}
