import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/date_picker/ds_date_picker.dart';
import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/components/molecules/segmented_button/ds_segmented_button.dart';
import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/components/templates/table/controller/ds_table_controller.dart';
import 'package:design_system/core/components/templates/table/views/ds_table.dart';
import 'package:design_system/core/components/templates/table/views/ds_table_row.dart';
import 'package:design_system/core/components/templates/table/views/ds_table_row_header.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TableExemplo extends StatefulWidget {
  const TableExemplo({super.key});

  @override
  State<TableExemplo> createState() => _TableExemploState();
}

class _TableExemploState extends State<TableExemplo> {
  late DSTableController<TableItemModel> _controller;
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _rangeDateController = TextEditingController();
  DateTimeRange? _selectedDateRange;
  List<TableItemModel> _originalItems = [];
  int? _sortColumnIndex;
  DSSortDirection? _sortDirection;

  Timer? _searchDebounce;

  @override
  void initState() {
    super.initState();
    _originalItems = _generateMockData(150);
    _controller = DSTableController<TableItemModel>(
      items: _originalItems,
      initialItemsPerPage: 100,
      loadingDelay: const Duration(milliseconds: 300),
      startWithLoading: true,
    );
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _controller.dispose();
    _searchController.dispose();
    super.dispose();
  }

  List<TableItemModel> _generateMockData(int count) {
    final random = Random();
    final fruits = [
      'Maçã',
      'Banana',
      'Laranja',
      'Uva',
      'Morango',
      'Abacaxi',
      'Manga',
      'Melancia',
      'Pêssego',
      'Kiwi'
    ];
    final colors = [
      'Vermelho',
      'Azul',
      'Verde',
      'Amarelo',
      'Roxo',
      'Laranja',
      'Rosa',
      'Marrom',
      'Preto',
      'Branco'
    ];
    final cities = [
      'São Paulo',
      'Rio de Janeiro',
      'Belo Horizonte',
      'Salvador',
      'Curitiba',
      'Fortaleza',
      'Recife',
      'Porto Alegre',
      'Brasília',
      'Manaus'
    ];
    final animals = [
      'Cachorro',
      'Gato',
      'Pássaro',
      'Peixe',
      'Coelho',
      'Hamster',
      'Tartaruga',
      'Cavalo',
      'Vaca',
      'Galinha'
    ];
    final countries = [
      'Brasil',
      'Argentina',
      'Chile',
      'Uruguai',
      'Paraguai',
      'Peru',
      'Colômbia',
      'Venezuela',
      'Equador',
      'Bolívia'
    ];
    final professions = [
      'Engenheiro',
      'Médico',
      'Advogado',
      'Professor',
      'Designer',
      'Programador',
      'Arquiteto',
      'Enfermeiro',
      'Contador',
      'Jornalista'
    ];
    final sports = [
      'Futebol',
      'Basquete',
      'Vôlei',
      'Tênis',
      'Natação',
      'Corrida',
      'Ciclismo',
      'Boxe',
      'Judô',
      'Surf'
    ];
    final foods = [
      'Pizza',
      'Hambúrguer',
      'Sushi',
      'Lasanha',
      'Salada',
      'Churrasco',
      'Feijoada',
      'Macarrão',
      'Risoto',
      'Tacos'
    ];
    final instruments = [
      'Violão',
      'Piano',
      'Bateria',
      'Flauta',
      'Violino',
      'Saxofone',
      'Trompete',
      'Guitarra',
      'Baixo',
      'Ukulele'
    ];

    return List.generate(
      count,
      (index) {
        final baseDate = DateTime(2020, 1, 1);
        final randomDays = random.nextInt(1825);
        final randomDate = baseDate.add(Duration(days: randomDays));

        return TableItemModel(
          id: 'item_$index',
          date: randomDate,
          column2: fruits[random.nextInt(fruits.length)],
          column3: colors[random.nextInt(colors.length)],
          column4: cities[random.nextInt(cities.length)],
          column5: animals[random.nextInt(animals.length)],
          column6: countries[random.nextInt(countries.length)],
          column7: professions[random.nextInt(professions.length)],
          column8: sports[random.nextInt(sports.length)],
          column9: foods[random.nextInt(foods.length)],
          column10: instruments[random.nextInt(instruments.length)],
        );
      },
    );
  }

  void _onSearch(String query) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 1000), () {
      if (!mounted) return;

      final normalized = query.trim().toLowerCase();
      if (normalized.isEmpty) {
        _controller.clearFilter();
        return;
      }

      _controller.filterBy(
        (item) =>
            _formatDate(item.date).toLowerCase().contains(normalized) ||
            item.searchField.toLowerCase().contains(normalized),
      );
    });
  }

  void _onSortColumn(int columnIndex) {
    setState(() {
      if (_sortColumnIndex == columnIndex) {
        if (_sortDirection == DSSortDirection.ascending) {
          _sortDirection = DSSortDirection.descending;
        } else {
          _sortColumnIndex = null;
          _sortDirection = null;
          _controller.setItems(List.from(_originalItems));
          _applyDateRangeFilter();
          return;
        }
      } else {
        _sortColumnIndex = columnIndex;
        _sortDirection = DSSortDirection.ascending;
      }

      _applySorting();
    });
  }

  void _applySorting() {
    if (_sortColumnIndex == null || _sortDirection == null) return;

    final sortedItems = List<TableItemModel>.from(_originalItems);

    if (_sortColumnIndex == 0) {
      sortedItems.sort((a, b) {
        final comparison = a.date.compareTo(b.date);
        return _sortDirection == DSSortDirection.ascending
            ? comparison
            : -comparison;
      });
    } else {
      sortedItems.sort((a, b) {
        final aValue = _getColumnValue(a, _sortColumnIndex!);
        final bValue = _getColumnValue(b, _sortColumnIndex!);
        final comparison = aValue.compareTo(bValue);
        return _sortDirection == DSSortDirection.ascending
            ? comparison
            : -comparison;
      });
    }

    _controller.setItems(sortedItems);
    _applyDateRangeFilter();
  }

  String _getColumnValue(TableItemModel item, int columnIndex) {
    switch (columnIndex) {
      case 1:
        return item.column2;
      case 2:
        return item.column3;
      case 3:
        return item.column4;
      case 4:
        return item.column5;
      case 5:
        return item.column6;
      case 6:
        return item.column7;
      case 7:
        return item.column8;
      case 8:
        return item.column9;
      case 9:
        return item.column10;
      default:
        return '';
    }
  }

  void _applyDateRangeFilter() {
    if (_selectedDateRange == null) return;

    _controller.filterBy((item) {
      return item.date.isAfter(
              _selectedDateRange!.start.subtract(const Duration(days: 1))) &&
          item.date
              .isBefore(_selectedDateRange!.end.add(const Duration(days: 1)));
    });
  }

  void _toggleSelectAll(bool? value) {
    _controller.toggleSelectAll();
  }

  void _toggleItemSelection(TableItemModel item, bool? selected) {
    _controller.toggleSelection(item);
  }

  @override
  Widget build(BuildContext context) {
    final showHeader =
        context.knobs.boolean(label: 'showHeader', initial: true);
    final showFooter =
        context.knobs.boolean(label: 'showFooter', initial: true);
    final showToolbar =
        context.knobs.boolean(label: 'showToolbar', initial: true);
    final showCheckboxes =
        context.knobs.boolean(label: 'showCheckboxes', initial: true);
    final embeded = context.knobs.boolean(label: 'embeded', initial: false);
    final fixedHeight =
        context.knobs.boolean(label: 'fixedHeight', initial: false);
    final enableSorting =
        context.knobs.boolean(label: 'enableSorting', initial: true);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DSTable',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Componente de tabela com suporte a paginação, filtros e seleção.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Divider(height: 32),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, _) {
                if (!_controller.hasSelection) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    '${_controller.selectedCount} item(ns) selecionado(s)',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                );
              },
            ),
            DSTable<TableItemModel>(
              controller: _controller,
              showHeader: showHeader,
              showFooter: showFooter,
              showToolbar: showToolbar,
              showBorder: !embeded,
              maxBodyHeight: fixedHeight ? 480 : null,
              toolbarWidgets: [
                SizedBox(
                  width: 250,
                  child: DSTextField.standard(
                    prefixIcon: const DSIcon.custom(icon: Symbols.search),
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Placeholder',
                      prefixIcon: const Icon(Symbols.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                    onChanged: _onSearch,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: DSTextField.standard(
                    controller: _rangeDateController,
                    labelText: 'Travel Dates',
                    hintText: 'Start - End',
                    readOnly: true,
                    onTap: () => _pickDateRange(context),
                    suffixIcon: IconButton(
                      icon: DSIcon.small(icon: Icons.date_range),
                      onPressed: () => _pickDateRange(context),
                    ),
                  ),
                ),
                DSAvatar.medium.icon(
                    icon: Symbols.settings,
                    background: context.colors.sysPrimary,
                    widgetColor: context.colors.sysOnPrimary),
                DSAvatar.medium.icon(
                    icon: Symbols.settings,
                    background: context.colors.sysPrimary,
                    widgetColor: context.colors.sysOnPrimary),
                DSAvatar.medium.icon(
                    icon: Symbols.settings,
                    background: context.colors.sysPrimary,
                    widgetColor: context.colors.sysOnPrimary),
                SizedBox(
                  width: 100,
                  child: DSButton.text(
                    onTap: () async {},
                    buttonText: 'Text',
                  ),
                ),
                DSMenu<String>.dropdown(
                  width: 130,
                  label: const Text('Label'),
                  dropdownMenuEntries: List.generate(4, (index) {
                    return DSDropdownMenuEntry(
                      value: 'Val $index',
                      label: 'Label',
                    );
                  }),
                ),
                DSSegmentedButton<int>.standard(
                  segments: [
                    ButtonSegment<int>(
                      value: 1,
                      label: const Text('Label'),
                    ),
                    ButtonSegment<int>(
                      value: 2,
                      label: const Text('Label'),
                    ),
                  ],
                  selected: const {1},
                  onSelectionChanged: (Set<int> newSelection) {},
                ),
              ],
              header: DSTableRowHeader(
                showCheckbox: showCheckboxes,
                checkboxValue: _controller.headerCheckboxValue,
                checkboxTristate: true,
                onCheckboxChanged: _toggleSelectAll,
                cells: [
                  DSTableHeaderCell(
                    text: 'Data',
                    onTap: enableSorting ? () => _onSortColumn(0) : null,
                    isSorting: _sortColumnIndex == 0,
                    sortDirection:
                        _sortColumnIndex == 0 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Fruta',
                    onTap: enableSorting ? () => _onSortColumn(1) : null,
                    isSorting: _sortColumnIndex == 1,
                    sortDirection:
                        _sortColumnIndex == 1 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Cor',
                    onTap: enableSorting ? () => _onSortColumn(2) : null,
                    isSorting: _sortColumnIndex == 2,
                    sortDirection:
                        _sortColumnIndex == 2 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Cidade',
                    onTap: enableSorting ? () => _onSortColumn(3) : null,
                    isSorting: _sortColumnIndex == 3,
                    sortDirection:
                        _sortColumnIndex == 3 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Animal',
                    onTap: enableSorting ? () => _onSortColumn(4) : null,
                    isSorting: _sortColumnIndex == 4,
                    sortDirection:
                        _sortColumnIndex == 4 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'País',
                    onTap: enableSorting ? () => _onSortColumn(5) : null,
                    isSorting: _sortColumnIndex == 5,
                    sortDirection:
                        _sortColumnIndex == 5 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Profissão',
                    onTap: enableSorting ? () => _onSortColumn(6) : null,
                    isSorting: _sortColumnIndex == 6,
                    sortDirection:
                        _sortColumnIndex == 6 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Esporte',
                    onTap: enableSorting ? () => _onSortColumn(7) : null,
                    isSorting: _sortColumnIndex == 7,
                    sortDirection:
                        _sortColumnIndex == 7 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Comida',
                    onTap: enableSorting ? () => _onSortColumn(8) : null,
                    isSorting: _sortColumnIndex == 8,
                    sortDirection:
                        _sortColumnIndex == 8 ? _sortDirection : null,
                  ),
                  DSTableHeaderCell(
                    text: 'Instrumento',
                    onTap: enableSorting ? () => _onSortColumn(9) : null,
                    isSorting: _sortColumnIndex == 9,
                    sortDirection:
                        _sortColumnIndex == 9 ? _sortDirection : null,
                  ),
                ],
                trailing: const [
                  SizedBox(width: 48),
                  SizedBox(width: 48),
                  SizedBox(width: 48),
                ],
              ),
              rowBuilder: (item, index) {
                final isSelected = _controller.isSelected(item);
                return DSTableRow(
                  showCheckbox: showCheckboxes,
                  checkboxValue: isSelected,
                  onCheckboxChanged: (value) =>
                      _toggleItemSelection(item, value),
                  selected: isSelected,
                  cells: [
                    DSTableCell.text(text: _formatDate(item.date)),
                    DSTableCell.text(text: item.column2),
                    DSTableCell.text(text: item.column3),
                    DSTableCell.text(text: item.column4),
                    DSTableCell.text(text: item.column5),
                    DSTableCell.text(text: item.column6),
                    DSTableCell.text(text: item.column7),
                    DSTableCell.text(text: item.column8),
                    DSTableCell.text(text: item.column9),
                    DSTableCell.text(text: item.column10),
                  ],
                  trailing: [
                    _buildRowActionButton(
                      context,
                      icon: Symbols.edit,
                      onPressed: () {},
                    ),
                    _buildRowActionButton(
                      context,
                      icon: Symbols.content_copy,
                      onPressed: () {},
                    ),
                    _buildRowActionButton(
                      context,
                      icon: Symbols.delete,
                      onPressed: () {
                        _controller.removeItem(item);
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowActionButton(
    BuildContext context, {
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 48,
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
        ),
      ),
    );
  }

  Future<void> _pickDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDSDateRangePicker(
      context: context,
      initialDateRange: _selectedDateRange,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      helpText: 'Selecione uma duração',
      switchToInputEntryModeIcon: Icon(
        Icons.edit_outlined,
        color: context.colors.sysOnSurfaceVariant,
      ),
      switchToCalendarEntryModeIcon: Icon(
        Icons.today_outlined,
        color: context.colors.sysOnSurfaceVariant,
      ),
    );

    if (picked != null) {
      setState(() {
        _selectedDateRange = picked;
        _rangeDateController.text =
            '${_formatDate(picked.start)} - ${_formatDate(picked.end)}';
      });
      _applyDateRangeFilter();
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}

class TableItemModel {
  final String id;
  final DateTime date;
  final String column2;
  final String column3;
  final String column4;
  final String column5;
  final String column6;
  final String column7;
  final String column8;
  final String column9;
  final String column10;
  late String searchField;

  TableItemModel({
    required this.id,
    required this.date,
    required this.column2,
    required this.column3,
    required this.column4,
    required this.column5,
    required this.column6,
    required this.column7,
    required this.column8,
    required this.column9,
    required this.column10,
  }) {
    searchField =
        '$id $column2 $column3 $column4 $column5 $column6 $column7 $column8 $column9 $column10'
            .toLowerCase();
  }
}
