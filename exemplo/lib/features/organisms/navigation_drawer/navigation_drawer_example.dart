import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer_item.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class NavigationDrawerExample extends StatefulWidget {
  const NavigationDrawerExample({super.key});

  @override
  State<NavigationDrawerExample> createState() =>
      _NavigationDrawerExampleState();
}

class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      body: Row(
        children: [
          DSNavigationDrawer(
            title: 'Menu',
            selectedIndex: _selectedIndex,
            onItemSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const [
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
            ],
          ),
          Expanded(
            child: Center(
              child: Text('Conteúdo da página'),
            ),
          ),
        ],
      ),
    );
  }
}
