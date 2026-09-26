import 'package:design_system_exemplo/features/molecules/navigation_rails/navigation_rails_example.dart';
import 'package:design_system_exemplo/features/organisms/button_card/button_card.dart';
import 'package:design_system_exemplo/features/organisms/form/form.dart';
import 'package:design_system_exemplo/features/organisms/menu_list/menu_list.dart';
import 'package:design_system_exemplo/features/organisms/navigation_drawer/navigation_drawer_example.dart';
import 'package:design_system_exemplo/features/organisms/timeline/timeline_example.dart';
import 'package:design_system_exemplo/features/organisms/variable_radio_list/variable_radio_list.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final List<Story> designSystemOrganismsStory = <Story>[
  Story(
    name: 'Organisms/Form',
    description: 'Form padão criado para o Design System',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: DesignSystemFormPage(),
    ),
  ),
  Story(
    name: 'Organisms/Button Card',
    description: 'Button Card padão criado para o Design System',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: ButtonCard(),
    ),
  ),
  Story(
    name: 'Organisms/Menu List',
    description: 'Menu List padrão criado para o Design System',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: MenuList(),
    ),
  ),
  Story(
    name: 'Organisms/Timeline',
    description: 'Timeline padrão criado para o Design System',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TimelineExample(),
    ),
  ),
  Story(
    name: 'Organisms/VariableRadioList',
    description: 'Variable Radio List padrão criado para o Design System',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: VariableRadioList(),
    ),
  ),
  Story(
    name: 'Organisms/NavigationRails',
    description: 'NavigationRails padrão do aplicativo',
    builder: (context) =>
        const ColoredBox(color: Colors.white, child: NavigationRailsExample()),
  ),
  Story(
    name: 'Organisms/NavigationDrawer',
    description: 'NavigationDrawer padrão do aplicativo',
    builder: (context) =>
        const ColoredBox(color: Colors.white, child: NavigationDrawerExample()),
  ),
];
