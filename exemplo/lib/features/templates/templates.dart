import 'package:design_system/core/components/templates/loader/presentation/views/ds_loader.dart';
import 'package:design_system_exemplo/features/templates/dynamic_list/view/dynamic_list_exemplo.dart';
import 'package:design_system_exemplo/features/templates/list/list.dart';
import 'package:design_system_exemplo/features/templates/tab_page/custom_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final List<Story> designSystemTemplatesStory = <Story>[
  Story(
    name: 'Templates/Lista Base',
    description: 'Base da lista padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomList(),
    ),
  ),
  Story(
    name: 'Templates/TabPage',
    description: 'Tab Page padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomTabPage(),
    ),
  ),
  Story(
    name: 'Templates/Dynamic List',
    description: 'Dynamic List padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: DynamicListExemplo(),
    ),
  ),
  Story(
    name: 'Templates/Loader',
    description: 'Loader padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: DSLoader.indicatorWithLogoAndAnimatedText(),
    ),
  ),
];
