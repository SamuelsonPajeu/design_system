import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails.dart';
import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_group.dart';
import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_item.dart';
import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_types.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class NavigationRailsExample extends StatefulWidget {
  const NavigationRailsExample({super.key});

  @override
  State<NavigationRailsExample> createState() => _NavigationRailsExampleState();
}

class _NavigationRailsExampleState extends State<NavigationRailsExample> {
  int _selectedIndex = 0;
  bool _isDSExtended = false;

  @override
  Widget build(BuildContext context) {
    final selectionIndicator =
        context.knobs.options<DSNavigationRailsSelectedShape>(
      label: 'Formato da Seleção',
      initial: DSNavigationRailsSelectedShape.square,
      options: const [
        Option(label: 'Quadrada', value: DSNavigationRailsSelectedShape.square),
        Option(label: 'Circular', value: DSNavigationRailsSelectedShape.circle),
      ],
    );

    final badgeFormat = context.knobs.options<DSNavigationRailsBadgeType>(
      label: 'Formato da Badge',
      initial: DSNavigationRailsBadgeType.none,
      options: const [
        Option(label: 'Sem Badge', value: DSNavigationRailsBadgeType.none),
        Option(label: 'Pequena', value: DSNavigationRailsBadgeType.small),
        Option(label: 'Grande', value: DSNavigationRailsBadgeType.large),
      ],
    );

    final brandingIconExibition = context.knobs.options<BrandingIconExibition>(
      label: 'Exibição do Ícone de Marca',
      initial: BrandingIconExibition.always,
      options: const [
        Option(label: 'Sempre', value: BrandingIconExibition.always),
        Option(
            label: 'Apenas quando colapsado',
            value: BrandingIconExibition.whenCollapsed),
      ],
    );

    final trailingIconAlignment = context.knobs.options<TrailingIconAlignment>(
      label: 'Alinhamento do Ícone Trailing',
      initial: TrailingIconAlignment.bottom,
      options: const [
        Option(label: 'Rodapé', value: TrailingIconAlignment.bottom),
        Option(label: 'Abaixo dos Grupo', value: TrailingIconAlignment.after),
      ],
    );

    final showLabel = context.knobs.boolean(
      label: 'Exibir Títulos',
      initial: true,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Rails Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: DSNavigationRails(
          groups: [
            DSNavigationRailsGroup(
              title: 'Group 1',
              items: [
                DSNavigationRailsItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
              ],
            ),
            DSNavigationRailsGroup(
              title: 'Group 2',
              items: [
                DSNavigationRailsItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
                DSNavigationRailsItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                  badgeValue: '3',
                ),
                DSNavigationRailsItem(
                  icon: Icon(Icons.numbers),
                  label: 'PS Digital',
                  badgeValue: '0',
                ),
              ],
            ),
            DSNavigationRailsGroup(
              title: 'Group 3',
              items: [
                DSNavigationRailsItem(
                  icon: Icon(Icons.access_time),
                  label: 'Teste 1',
                  value: '100+',
                ),
                DSNavigationRailsItem(
                  icon: Icon(Icons.flag),
                  label: 'Teste 2',
                  value: '100+',
                ),
                DSNavigationRailsItem(
                  icon: Icon(Icons.flag),
                  label: 'Teste 3',
                  value: '200+',
                ),
              ],
            ),
          ],
          onDestinationSelected: (index) =>
              setState(() => _selectedIndex = index),
          onLeadingIconPressed: (isExtended) =>
              setState(() => _isDSExtended = isExtended),
          leadingIcon: Icon(Icons.menu),
          leadingComplement: Row(
            children: [
              Icon(Icons.logo_dev),
              SizedBox(width: 4),
              Text('Logomarca'),
            ],
          ),
          labelAlwaysVisible: showLabel,
          brandingIcon: Icon(Icons.logo_dev),
          trailingIcon: Icon(Icons.add),
          subHeaderItem: DSNavigationRailsItem(
            icon: Icon(Icons.check),
            label: 'Item Auxiliar',
          ),
          menuChildren: List.generate(10, (index) {
            return DSMenuItemButton(
              onPressed: () {},
              leadingIcon: const Icon(Icons.circle, size: 8),
              child: Text('Item ${index + 1}'),
            );
          }),
          menuLabel: 'Unidades',
          selectedIndex: _selectedIndex,
          extended: _isDSExtended,
          badgeType: badgeFormat,
          selectedShape: selectionIndicator,
          brandingIconExibition: brandingIconExibition,
          trailingIconAlignment: trailingIconAlignment,
          trailingComplement: Text('Nova página'),
        ),
      ),
    );
  }
}
