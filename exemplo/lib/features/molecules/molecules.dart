import 'package:design_system_exemplo/features/molecules/app_bar/app_bar.dart';
import 'package:design_system_exemplo/features/molecules/bottom_sheet/bottom_sheet.dart';
import 'package:design_system_exemplo/features/molecules/button/button.dart';
import 'package:design_system_exemplo/features/molecules/card/example_card.dart';
import 'package:design_system_exemplo/features/molecules/carousel/carousel.dart';
import 'package:design_system_exemplo/features/molecules/chips/chips.dart';
import 'package:design_system_exemplo/features/molecules/fab/fab.dart';
import 'package:design_system_exemplo/features/molecules/listtile/listtile.dart';
import 'package:design_system_exemplo/features/molecules/menu/menu_items.dart';
import 'package:design_system_exemplo/features/molecules/sort_header/sort_header.dart';
import 'package:design_system_exemplo/features/molecules/stepper/stepper.dart';
import 'package:design_system_exemplo/features/molecules/tabs/tabs.dart';
import 'package:design_system_exemplo/features/molecules/tooltip/tooltip.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final List<Story> designSystemMoleculesStory = <Story>[
  Story(
    name: 'Molecules/Appbar',
    description: 'Appbar padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomAppbar(),
    ),
  ),
  Story(
    name: 'Molecules/Button',
    description: 'Button padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomButton(),
    ),
  ),
  Story(
    name: 'Molecules/Card',
    description: 'Card padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: ExampleCard(),
    ),
  ),
  Story(
    name: 'Molecules/MenuItems',
    description: 'MenuItem padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: MenuItems(),
    ),
  ),
  Story(
    name: 'Molecules/Carousel',
    description: 'Carousel padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: Carousel(),
    ),
  ),
  Story(
    name: 'Molecules/Stepper',
    description: 'Stepper padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomStepper(),
    ),
  ),
  Story(
    name: 'Molecules/DSSortHeader',
    description: 'Sort Header padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomSortHeader(),
    ),
  ),
  Story(
    name: 'Molecules/Chips',
    description: 'Chips padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomChips(),
    ),
  ),
  Story(
    name: 'Molecules/ListTiles',
    description: 'ListTiles padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomListTile(),
    ),
  ),
  Story(
    name: 'Molecules/BottomSheet',
    description: 'BottomSheet padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomBottomSheet(),
    ),
  ),
  Story(
    name: 'Molecules/Fab',
    description: 'Float Action Button padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomFab(),
    ),
  ),
  Story(
    name: 'Molecules/Tabs',
    description: 'Tabs padrão criado para Design System da Get',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TabComponente(),
    ),
  ),
  Story(
    name: 'Molecules/Tooltip',
    description: 'Tooltip padrão criado para Design System da Get',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomTooltip(),
    ),
  ),
];
