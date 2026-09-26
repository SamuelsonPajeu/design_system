import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/components/molecules/top_app_bar/ds_top_app_bar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/components/templates/dynamic_list/controller/ds_dynamic_list_controller.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_dynamic_list_chip.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_view_mode_filter_dynamic_list.dart';
import 'package:design_system/core/components/templates/dynamic_list/views/ds_dynamic_list_view.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system_exemplo/features/templates/dynamic_list/model/meu_item.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class DynamicListExample extends StatelessWidget {
  const DynamicListExample({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final viewMode = context.knobs.options<DSViewModeFilterDynamicList>(
      label: 'View Mode',
      initial: DSViewModeFilterDynamicList.tabs,
      options: const [
        Option(label: 'Tabs', value: DSViewModeFilterDynamicList.tabs),
        Option(label: 'Chips', value: DSViewModeFilterDynamicList.chips),
      ],
    );

    final showFilters = context.knobs.boolean(
      label: 'Show Filters',
      initial: true,
    );

    final showSearch = context.knobs.boolean(
      label: 'Show Search',
      initial: true,
    );

    final showCountList = context.knobs.boolean(
      label: 'Show Count List',
      initial: true,
    );

    final isSearchLocal = context.knobs.boolean(
      label: 'Is Search Local (Wait 1s if false)',
      initial: true,
    );

    final isFilterLocal = context.knobs.boolean(
      label: 'Is Filter Local (Wait 1s if false)',
      initial: true,
    );

    final usePadding = context.knobs.boolean(
      label: 'Use Padding',
      initial: false,
    );

    final useFilterPadding = context.knobs.boolean(
      label: 'Use Filter Padding',
      initial: false,
    );

    // Initialize controller using Knob states
    final controller = DSDynamicListController<MeuItem>(
      filters: <DSDynamicListChip>[
        DSDynamicListChip(label: 'Frutas', value: 'Frutas'),
        DSDynamicListChip(label: 'Legumes', value: 'Legumes'),
      ],
      searchMatcher: (item, search) =>
          item.nome.toLowerCase().contains(search.toLowerCase()),
      filterMatcher: (item, filter) => item.categoria == filter?.value,
      isSearchLocal: isSearchLocal,
      isFilterLocal: isFilterLocal,
      showFilters: showFilters,
      showSearch: showSearch,
      showCountList: showCountList,
      viewMode: viewMode,
    );

    // Trigger initial load so it's populated on screen start
    _loadData(controller, null, '', isFilterLocal, isSearchLocal);

    return DSScaffold(
      appBar: DSTopAppBar.centered(
        title: 'Dynamic List',
      ),
      body: DSDynamicListView<MeuItem>(
        controller: controller,
        itemBuilder: (BuildContext context, MeuItem item, int index) => DSCard(
          iconColor: Colors.white,
          bgIconColor: context.colors.sysPrimary,
          title: item.nome,
          subtitle: DateTime.now().toIso8601String(),
          popupMenuButton: PopupMenuButton<String>(
            icon: const Icon(Symbols.more_vert_rounded),
            onSelected: (String value) {
              debugPrint('Selecionado: $value');
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'editar',
                child: Text('Editar'),
              ),
              const PopupMenuItem<String>(
                value: 'excluir',
                child: Text('Excluir'),
              ),
              const PopupMenuItem<String>(
                value: 'detalhes',
                child: Text('Detalhes'),
              ),
            ],
          ),
          actionButtons: [
            DSButton.outlined(
              onTap: () async {},
              buttonText: 'Excluir',
              buttonIcon: Symbols.delete,
            ),
            DSButton.filled(
              onTap: () async {},
              buttonText: 'Ver Detalhes',
              buttonIcon: Symbols.subheader_sharp,
            ),
          ],
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: "Categoria: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: item.categoria),
                  ],
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Descricao: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          '${DateTime.now()} - ${item.categoria} - ${item.nome}'),
                ],
              ),
            ),
          ],
        ),
        textFilter: 'FILTRAR RESULTADOS',
        hintTextSearch: 'Faça sua pesquisa...',
        padding:
            usePadding ? const EdgeInsets.symmetric(horizontal: 16.0) : null,
        filterPadding: useFilterPadding
            ? const EdgeInsets.symmetric(horizontal: 16.0)
            : null,
        onRemoteFilterSelected: (filter, searchText) {
          _loadData(
              controller, filter, searchText, isFilterLocal, isSearchLocal);
        },
        onRemoteSearchChanged: (filter, searchText) {
          _loadData(
              controller, filter, searchText, isFilterLocal, isSearchLocal);
        },
      ),
    );
  }

  // --- API Simulation ---

  Future<void> _loadData(
    DSDynamicListController<MeuItem> controller,
    DSDynamicListChip? filter,
    String searchText,
    bool isFilterLocal,
    bool isSearchLocal,
  ) async {
    controller.setLoading(true);
    final newData =
        await _fetchFromApi(filter, searchText, isFilterLocal, isSearchLocal);
    controller.updateItems(newData);
  }

  Future<List<MeuItem>> _fetchFromApi(
    DSDynamicListChip? filter,
    String searchText,
    bool isFilterLocal,
    bool isSearchLocal,
  ) async {
    // Only delay if one of the configs is remote, to simulate API call overhead
    if (!isFilterLocal || !isSearchLocal) {
      await Future.delayed(const Duration(seconds: 1));
    }

    final allItems = [
      MeuItem(nome: 'Banana', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Maçã', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Cenoura', categoria: 'Legumes', icon: '0xf80b'),
      MeuItem(nome: 'Banana1', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Maçã1', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Cenoura1', categoria: 'Legumes', icon: '0xf80b'),
      MeuItem(nome: 'Banana2', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Maçã2', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Cenoura2', categoria: 'Legumes', icon: '0xf80b'),
      MeuItem(nome: 'Banana3', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Maçã3', categoria: 'Frutas', icon: '0xf80b'),
      MeuItem(nome: 'Cenoura3', categoria: 'Legumes', icon: '0xf80b'),
    ];

    var result = allItems;

    if (!isFilterLocal && filter != null) {
      result = result.where((item) => item.categoria == filter.value).toList();
    }

    if (!isSearchLocal && searchText.isNotEmpty) {
      result = result
          .where((item) =>
              item.nome.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }

    return result;
  }
}
