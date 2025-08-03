import 'package:design_system/core/components/molecules/app_bar/ds_app_bar.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/components/templates/dynamic_list/controller/ds_dynamic_list_controller.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_dynamic_list_chip.dart';
import 'package:design_system/core/components/templates/dynamic_list/model/ds_view_mode_filter_dynamic_list.dart';
import 'package:design_system/core/components/templates/dynamic_list/views/ds_dynamic_list_view.dart';
import 'package:design_system_exemplo/features/templates/dynamic_list/model/meu_item.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class DynamicListExemplo extends StatefulWidget {
  const DynamicListExemplo({super.key});

  @override
  State<DynamicListExemplo> createState() => _DynamicListExemploState();
}

class _DynamicListExemploState extends State<DynamicListExemplo> {
  late final DSDynamicListController<MeuItem> controller;

  @override
  void initState() {
    super.initState();

    // Obrigatorio criar o controller(DSDynamicListController) com seu model(Ex: MeuItem)
    controller = DSDynamicListController<MeuItem>(
      // Lista de chips que serão exibidas na tela.
      filters: <DSDynamicListChip>[
        DSDynamicListChip(label: 'Frutas', value: 'Frutas'),
        DSDynamicListChip(label: 'Legumes', value: 'Legumes'),
      ],
      // Seleciona qual item do seu model sera usado para a pesquisa no campo de search.
      searchMatcher: (item, search) =>
          item.nome.toLowerCase().contains(search.toLowerCase()),
      // Seleciona qual item do seu model sera usado para a filtragem dos chips.
      filterMatcher: (item, filter) => item.categoria == filter?.value,
      // Defina se a pesquisa é local(lista recebida) ou remota(busca na api)
      isSearchLocal: true,
      // Defina se o filtro é local(lista recebida) ou remota(busca na api)
      isFilterLocal: true,
      // Mostrar ou ocultar os chips de filtro
      showFilters: true,
      // Mostrar ou ocultar o campo de pesquisa
      showSearch: true,
      // Mostrar ou ocultar o campo de contar itens
      showCountList: true,
      // Define se o Filtro sera no modelo de Tabs ou Chips(Parametro não é obrigatório, padrão: DsViewModeFilterDynamicList.chips)
      viewMode: DsViewModeFilterDynamicList.tabs,
    );

    loadData(null, '');
  }

  // Carregar dados da API ou de uma fonte local
  Future<void> loadData(DSDynamicListChip? filter, String searchText) async {
    // Ativa o loading da lista
    controller.setLoading(true);
    // Busca o dado
    final newData = await fetchFromApi(filter, searchText);
    // Aciona o update da lista.
    controller.updateItems(newData);
  }

  // INICIAR: Usado somente para exemplo
  // Esta função simula a busca de dados de uma API ou de uma fonte local.
  // Em uma aplicação real, você substituiria isso pela sua lógica real de busca de dados.
  Future<List<MeuItem>> fetchFromApi(
      DSDynamicListChip? filter, String searchText) async {
    await Future.delayed(const Duration(seconds: 1));

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

    // Filtro por categoria (Simulando api)
    if (filter != null) {
      result = result.where((item) => item.categoria == filter.value).toList();
    }

    // Filtro por busca de texto(Simulando api)
    if (searchText.isNotEmpty) {
      result = result
          .where((item) =>
              item.nome.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }

    return result;
  }
  // END: Carregar dados da API ou de uma fonte local

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      appBar: DSAppBar(
        text: 'Dynamic List',
        context: context,
      ),
      // DSDynamicListView recebe o seu model configurado no controller. ex: MeuItem
      body: DSDynamicListView<MeuItem>(
        controller: controller,
        // O item Build recebe o context e o seu model, pode também ser configurado qualquer widget para exibição.
        itemBuilder: (BuildContext context, MeuItem item, int index) => DSCard(
          icon: Symbols.info,
          iconColor: Colors.white,
          bgIconColor: const Color(0xFF016864),
          title: item.nome,
          descricao: DateTime.now().toIso8601String(),
          status: 'Status ${item.nome}',
          popupMenuButton: PopupMenuButton<String>(
            icon: const Icon(Symbols.more_vert_rounded),
            onSelected: (String value) {
              // Lógica ao selecionar uma opção
              print('Selecionado: $value');
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
              buttonWidth: 120,
              context: context,
              onTap: () {
                return null;
              },
              buttonText: 'Excluir',
              buttonIcon: Symbols.delete,
            ),
            DSButton.filled(
              buttonWidth: 150,
              context: context,
              onTap: () {
                return null;
              },
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
        textFilter:
            'FILTRAR RESULTADOS', // Texto antes dos filtros.(campo não obrigátorio, se for null não exibe nada.)
        hintTextSearch:
            'Faça sua pesquisa...', // Texto do campo de pesquisa.(Campo não obrigátorio, existe um texto padrão 'Pesquisar...'.)
        onRemoteFilterSelected: (filter, searchText) {
          // Método que retorna o texto de pesquisa e filtro quando selecionado o chip.(Obrigatorio estar configurado para uso remoto no controller. isFilterLocal)
          loadData(filter, searchText);
        },
        onRemoteSearchChanged: (filter, searchText) {
          // Método que retorna o filtro e texto de pesquisa quando selecionado escrito no campo.(Obrigatorio estar configurado para uso remoto no controller. isSearchLocal)
          loadData(filter, searchText);
        },
      ),
    );
  }
}
