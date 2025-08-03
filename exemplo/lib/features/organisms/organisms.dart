import 'package:design_system_exemplo/features/organisms/expansion_panel/expansion_panel.dart';
import 'package:design_system_exemplo/features/organisms/form/form.dart';
import 'package:design_system_exemplo/features/organisms/menu_list/menu_list.dart';
import 'package:design_system_exemplo/features/organisms/timeline/custom_timeline.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final List<Story> designSystemOrganismsStory = <Story>[
  Story(
    name: 'Organisms/Form',
    description: 'Form padão criado para Design System da Get',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: DesignSystemFormPage(),
    ),
  ),
  Story(
    name: 'Organisms/Menu List',
    description: 'Menu List padrão criado para Design System da Get',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: MenuList(),
    ),
  ),
  Story(
    name: 'Organisms/TimeLine',
    description: 'Timeline padrão criado para Design System da Get',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomTimeline(),
    ),
  ),
  Story(
    name: 'Organisms/ExpansionPanel',
    description: 'Expansion Panel padrão criado para Design System da Get',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomExpansionPanel(),
    ),
  ),
];
