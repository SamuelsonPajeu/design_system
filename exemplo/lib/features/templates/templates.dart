import 'package:design_system/core/components/templates/loader/presentation/views/ds_loader.dart';
import 'package:design_system_exemplo/features/templates/card_table/card_table_exemplo.dart';
import 'package:design_system_exemplo/features/templates/dynamic_list/view/dynamic_list_exemplo.dart';
import 'package:design_system_exemplo/features/templates/file_picker/file_picker_exemplo.dart';
import 'package:design_system_exemplo/features/templates/graph/graph_exemplo.dart';
import 'package:design_system_exemplo/features/templates/list/list.dart';
import 'package:design_system_exemplo/features/templates/pip_surface/pip_surface_example.dart';
import 'package:design_system_exemplo/features/templates/tab_page/custom_tab_page.dart';
import 'package:design_system_exemplo/features/templates/table/table_exemplo.dart';
import 'package:design_system_exemplo/features/templates/template_view/timeline_view_example.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final List<Story> designSystemTemplatesStory = <Story>[
  Story(
    name: 'Templates/PipSurface',
    description: 'Superfície de Picture-in-Picture em retrato 9:16.',
    builder: (context) => const PipSurfaceExample(),
  ),
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
      child: DynamicListExample(),
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
  Story(
    name: 'Templates/File Picker',
    description: 'File Picker com opções de layout Web/Mobile e upload.',
    builder: (context) => const FilePickerExemplo(),
  ),
  Story(
    name: 'Templates/TimelineView',
    description: 'TimelineView padrão do aplicativo.',
    builder: (context) =>
        ColoredBox(color: Colors.white, child: TimelineViewExample()),
  ),
  Story(
    name: 'Templates/Card Table',
    builder: (context) => const CardTableExemplo(),
  ),
  Story(
    name: 'Templates/Table',
    description: 'Tabela com paginação, filtros e seleção de itens.',
    builder: (context) => const TableExemplo(),
  ),
  Story(
    name: 'Templates/Graph',
    description: 'Gráficos com suporte a linhas duplas, barras e linha única.',
    builder: (context) => const GraphExemplo(),
  ),
];
