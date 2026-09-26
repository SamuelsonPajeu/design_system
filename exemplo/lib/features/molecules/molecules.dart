import 'package:design_system_exemplo/features/molecules/autocomplete/autocomplete_example.dart';
import 'package:design_system_exemplo/features/molecules/avatar/avatar_example.dart';
import 'package:design_system_exemplo/features/molecules/bottom_app_bar/bottom_app_bar_example.dart';
import 'package:design_system_exemplo/features/molecules/bottom_sheet/bottom_sheet.dart';
import 'package:design_system_exemplo/features/molecules/breadcrumb/breadcrumb_example.dart';
import 'package:design_system_exemplo/features/molecules/button/button.dart';
import 'package:design_system_exemplo/features/molecules/card/example_card.dart';
import 'package:design_system_exemplo/features/molecules/carousel/carousel.dart';
import 'package:design_system_exemplo/features/molecules/chips/chips.dart';
import 'package:design_system_exemplo/features/molecules/control_button/control_button_example.dart';
import 'package:design_system_exemplo/features/molecules/date_picker/date_picker_example.dart';
import 'package:design_system_exemplo/features/molecules/date_time_picker_example/date_time_picker_example.dart';
import 'package:design_system_exemplo/features/molecules/dialog/dialog.dart';
import 'package:design_system_exemplo/features/molecules/expansion_panel/expansion_panel_example.dart';
import 'package:design_system_exemplo/features/molecules/fab/fab.dart';
import 'package:design_system_exemplo/features/molecules/info_card/info_card_example.dart';
import 'package:design_system_exemplo/features/molecules/info_panel/info_panel_example.dart';
import 'package:design_system_exemplo/features/molecules/list_tile/list_tile_example.dart';
import 'package:design_system_exemplo/features/molecules/menu/menu_example.dart';
import 'package:design_system_exemplo/features/molecules/menu/menu_items.dart';
import 'package:design_system_exemplo/features/molecules/navigation_bar/navigation_bar_example.dart';
import 'package:design_system_exemplo/features/molecules/paginator/paginator_example.dart';
import 'package:design_system_exemplo/features/molecules/scaffold/scaffold.dart';
import 'package:design_system_exemplo/features/molecules/search_bar_example.dart';
import 'package:design_system_exemplo/features/molecules/segmented_button/segmented_button_example.dart';
import 'package:design_system_exemplo/features/molecules/select/select_example.dart';
import 'package:design_system_exemplo/features/molecules/side_sheet/side_sheet_example.dart';
import 'package:design_system_exemplo/features/molecules/snackbar/snackbar_example.dart';
import 'package:design_system_exemplo/features/molecules/sort_header/sort_header.dart';
import 'package:design_system_exemplo/features/molecules/stepper/stepper.dart';
import 'package:design_system_exemplo/features/molecules/tabs/tabs_example.dart';
import 'package:design_system_exemplo/features/molecules/text_field/text_field_example.dart';
import 'package:design_system_exemplo/features/molecules/time_picker/time_picker_example.dart';
import 'package:design_system_exemplo/features/molecules/tooltip/tooltip_example.dart';
import 'package:design_system_exemplo/features/molecules/top_app_bar/top_app_bar_example.dart';
import 'package:design_system_exemplo/features/molecules/tree_view/tree_view_example.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final List<Story> designSystemMoleculesStory = <Story>[
  Story(
    name: 'Molecules/ControlButton',
    description: 'Botão circular de controle sobre mídia.',
    builder: (context) => const ControlButtonExample(),
  ),
  Story(
    name: 'Molecules/Avatar',
    description: 'Avatar padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: AvatarExample(),
    ),
  ),
  Story(
    name: 'Molecules/TopAppBar',
    description: 'TopAppBar padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TopAppBarExample(),
    ),
  ),
  Story(
    name: 'Molecules/BottomAppBar',
    description: 'BottomAppBar padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: BottomAppBarExample(),
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
    name: 'Molecules/Dialog',
    description: 'Dialog padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomDialog(),
    ),
  ),
  Story(
    name: 'Molecules/TreeView',
    description: 'TreeView padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TreeViewExamplePage(),
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
    description: 'Tabs padrão criado para o Design System',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TabsExample(),
    ),
  ),
  Story(
    name: 'Molecules/Tooltip',
    description: 'Tooltip padrão criado para o Design System',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TooltipExample(),
    ),
  ),
  Story(
    name: 'Molecules/Scaffold',
    description: 'Scaffold padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomScaffold(),
    ),
  ),
  Story(
    name: 'Molecules/Navigation Bar',
    description: 'Navigation Bar padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: NavigationBarExample(),
    ),
  ),
  Story(
    name: 'Molecules/SegmentedButton',
    description: 'Segmented Button padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: SegmentedButtonExample(),
    ),
  ),
  Story(
    name: 'Molecules/TextField',
    description: 'TextField padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TextFieldExample(),
    ),
  ),
  Story(
    name: 'Molecules/Menu',
    description: 'Menu padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: MenuExample(),
    ),
  ),
  Story(
    name: 'Molecules/ListTile',
    description: 'ListTile padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: ListTileExample(),
    ),
  ),
  Story(
    name: 'Molecules/SearchBar',
    description: 'SearchBar padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: SearchBarExample(),
    ),
  ),
  Story(
    name: 'Molecules/DatePicker',
    description: 'DatePicker padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: DatePickerExample(),
    ),
  ),
  Story(
    name: 'Molecules/TimePicker',
    description: 'TimePicker padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: TimePickerExample(),
    ),
  ),
  Story(
    name: 'Molecules/DateTimePicker',
    description: 'DateTimePicker padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: DateTimePickerExample(),
    ),
  ),
  Story(
    name: 'Molecules/InfoPanel',
    description: 'InfoPanel padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: InfoPanelExample(),
    ),
  ),
  Story(
    name: 'Molecules/Snackbar',
    description: 'Snackbar padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: SnackbarExample(),
    ),
  ),
  Story(
    name: 'Molecules/Select',
    description: 'Select padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: SelectExample(),
    ),
  ),
  Story(
    name: 'Molecules/Breadcrumb',
    description: 'Breadcrumb padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: BreadcrumbExample(),
    ),
  ),
  Story(
    name: 'Molecules/Autocomplete',
    description: 'Autocomplete padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: AutocompleteExample(),
    ),
  ),
  Story(
    name: 'Molecules/Paginator',
    description: 'Paginator padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: PaginatorExample(),
    ),
  ),
  Story(
    name: 'Molecules/ExpansionPanel',
    description: 'ExpansionPanel padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: ExpansionPanelExample(),
    ),
  ),
  Story(
    name: 'Molecules/InfoCard',
    description: 'InfoCard padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: InfoCardExample(),
    ),
  ),
  Story(
    name: 'Molecules/SideSheet',
    description: 'SideSheet padrão do aplicativo.',
    builder: (context) => ColoredBox(
      color: Colors.white,
      child: SideSheetExample(),
    ),
  ),
];
