import 'dart:math';

import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/date_picker/ds_date_picker.dart';
import 'package:design_system/core/components/molecules/select/ds_select.dart';
import 'package:design_system/core/components/organisms/timeline/ds_timeline.dart';
import 'package:design_system/core/components/organisms/timeline/ds_timeline_sidebar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/components/templates/timeline_view/ds_timeline_view.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TimelineEntry {
  final String id;
  final String title;
  final String category;
  final DateTime date;
  final String description;

  TimelineEntry({
    required this.id,
    required this.title,
    required this.category,
    required this.date,
    required this.description,
  });
}

class TimelineViewExample extends StatefulWidget {
  const TimelineViewExample({super.key});

  @override
  State<TimelineViewExample> createState() => _TimelineViewExampleState();
}

class _TimelineViewExampleState extends State<TimelineViewExample> {
  String _selectedFilter = 'Todos';
  DateTime? _startDate;
  DateTime? _endDate;
  String? _selectedSearchId;
  String _searchQuery = '';

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  List<TimelineEntry> _allEntries = [];

  final List<String> _filterCategories = [
    'Todos',
    'Atendimento',
    'Agendamento',
    'Cadastro',
    'Biomedida',
  ];

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('pt_BR', null);
    _generateMockData(100);
  }

  @override
  void dispose() {
    _startDateController.dispose();
    _endDateController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _generateMockData(int count) {
    final Random random = Random();
    final DateTime now = DateTime.now();

    _allEntries = List.generate(count, (index) {
      final int daysBack = index * 10;
      final DateTime date = now.subtract(Duration(days: daysBack));

      final String category =
          _filterCategories[random.nextInt(_filterCategories.length - 1) + 1];

      return TimelineEntry(
        id: index.toString(),
        title: '$category #$index',
        category: category,
        date: date,
        description:
            'Evento registrado em ${DateFormat('dd/MM/yyyy').format(date)}.',
      );
    });

    _allEntries.sort((a, b) => b.date.compareTo(a.date));
  }

  List<TimelineEntry> get _filteredEntries {
    return _allEntries.where((entry) {
      if (_selectedSearchId != null && entry.id != _selectedSearchId) {
        return false;
      }
      if (_searchQuery.isNotEmpty) {
        final query = _searchQuery.toLowerCase();
        if (!entry.title.toLowerCase().contains(query) &&
            !entry.description.toLowerCase().contains(query)) {
          return false;
        }
      }
      if (_selectedFilter != 'Todos' && entry.category != _selectedFilter) {
        return false;
      }
      if (_startDate != null &&
          DateUtils.dateOnly(entry.date)
              .isBefore(DateUtils.dateOnly(_startDate!))) {
        return false;
      }
      if (_endDate != null &&
          DateUtils.dateOnly(entry.date)
              .isAfter(DateUtils.dateOnly(_endDate!))) {
        return false;
      }
      return true;
    }).toList();
  }

  void _onFilterSelected(String filter) {
    setState(() => _selectedFilter =
        (_selectedFilter == filter && filter != 'Todos') ? 'Todos' : filter);
  }

  DateTime? _parseDate(String value) {
    if (value.isEmpty) return null;
    try {
      return DateFormat('dd/MM/yyyy').parse(value);
    } catch (_) {
      return null;
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return DateFormat('dd/MM/yyyy').format(date);
  }

  Future<void> _pickDate(bool isStart) async {
    final initialDate = isStart ? _startDate : _endDate;
    final picked = await showDSDatePicker(
      context: context,
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
      initialDate: initialDate ?? DateTime.now(),
      fieldLabelText: isStart ? 'Data inicial' : 'Data final',
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          _startDate = picked;
          _startDateController.text = _formatDate(picked);
        } else {
          _endDate = picked;
          _endDateController.text = _formatDate(picked);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final itemCount = context.knobs
        .sliderInt(
          label: 'Item Count',
          initial: 100,
          min: 0,
          max: 200,
          divisions: 10,
        )
        .toInt();

    final forceSidebarVisible = context.knobs.boolean(
      label: 'Sidebar: Always Visible',
      description: 'Forces the sidebar to stay visible (simulates Desktop)',
      initial: false,
    );

    final showSidebarKnob = context.knobs.boolean(
      label: 'Sidebar: Show Knob',
      initial: true,
    );

    final showNativeScrollbar = context.knobs.boolean(
      label: 'Timeline: Show Native Scrollbar',
      initial: false,
    );

    if (_allEntries.length != itemCount) {
      _generateMockData(itemCount);
    }

    final filteredList = _filteredEntries;

    final List<DateTime> sidebarDates =
        filteredList.map((e) => e.date).toList();

    final autocompleteEntries = _allEntries
        .map((e) => DSSelectEntry<String>(value: e.id, label: e.title))
        .toList();

    return DSScaffold(
      appBar: AppBar(title: const Text('TimelineView')),
      body: DSTimelineView<String>(
        searchEntries: autocompleteEntries,
        searchValue: _selectedSearchId,
        onSearchChanged: (val) => setState(() => _selectedSearchId = val),
        onSearchQueryChanged: (q) => setState(() => _searchQuery = q),
        startDateController: _startDateController,
        endDateController: _endDateController,
        onTapStartDate: () => _pickDate(true),
        onTapEndDate: () => _pickDate(false),
        onStartDateChanged: (val) =>
            setState(() => _startDate = _parseDate(val)),
        onEndDateChanged: (val) => setState(() => _endDate = _parseDate(val)),
        filterOptions: _filterCategories,
        selectedFilter: _selectedFilter,
        onFilterChanged: _onFilterSelected,
        sidebar: sidebarDates.isEmpty
            ? null
            : DSTimelineSidebar(
                dates: sidebarDates,
                scrollController: _scrollController,
                showScrollKnob: showSidebarKnob,
                isAlwaysVisible: forceSidebarVisible,
              ),
        body: DSTimeline(
          showScrollbars:
              showNativeScrollbar || (sidebarDates.isEmpty && itemCount > 0),
          controller: _scrollController,
          items: _buildListItems(filteredList),
        ),
      ),
    );
  }

  List<Widget> _buildListItems(List<TimelineEntry> list) {
    if (list.isEmpty) return [];

    return list.map((entry) {
      return DSTimelineItem(
        key: ValueKey(entry.id),
        icon: _getIconForCategory(entry.category),
        child: _buildTimelineCard(context, entry),
      );
    }).toList();
  }

  Widget _getIconForCategory(String category) {
    return DSIcon.extraSmall(
        icon: Icons.access_time, color: context.colors.sysOnSecondary);
  }

  Widget _buildTimelineCard(BuildContext context, TimelineEntry item) {
    final colors = context.colors;
    final texts = context.texts;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.sysSurface,
        border: Border.all(color: colors.sysOutlineVariant),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.title,
                  style:
                      texts.titleMedium.copyWith(fontWeight: FontWeight.bold)),
              Text(item.category, style: texts.labelSmall),
            ],
          ),
          const SizedBox(height: 4),
          Text(DateFormat('dd/MM/yyyy - HH:mm').format(item.date),
              style: texts.bodySmall),
          const SizedBox(height: 8),
          Text(item.description, style: texts.bodyMedium),
        ],
      ),
    );
  }
}
