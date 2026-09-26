import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/autocomplete/ds_autocomplete.dart';
import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/components/molecules/select/ds_select.dart';
import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/components/organisms/timeline/ds_timeline.dart';
import 'package:design_system/core/components/organisms/timeline/ds_timeline_sidebar.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A complete Timeline Page component that encapsulates:
/// - Search (Autocomplete)
/// - Date Range Inputs
/// - Category Filters (Chips)
/// - The Timeline Body
/// - Optional Right Sidebar (Time Scale)
///
/// Use [T] to define the type of the Search Autocomplete values.
class DSTimelineView<T> extends StatelessWidget {
  const DSTimelineView({
    super.key,
    // --- Search Configuration ---
    required this.searchEntries,
    this.searchValue,
    this.onSearchChanged,
    this.onSearchQueryChanged,
    this.searchHintText = 'Buscar',

    // --- Date Configuration ---
    required this.startDateController,
    required this.endDateController,
    required this.onTapStartDate,
    required this.onTapEndDate,
    this.onStartDateChanged,
    this.onEndDateChanged,
    this.startDateLabel = 'Data inicial',
    this.endDateLabel = 'Data final',

    // --- Filter Configuration ---
    required this.filterOptions,
    required this.selectedFilter,
    required this.onFilterChanged,

    // --- Body ---
    required this.body,

    // --- Layout ---
    this.sidebar,
    this.padding = const EdgeInsets.all(16.0),
  });

  // Search Params
  final List<DSSelectEntry<T>> searchEntries;
  final T? searchValue;
  final ValueChanged<T?>? onSearchChanged;
  final ValueChanged<String>? onSearchQueryChanged;
  final String searchHintText;

  // Date Params
  final TextEditingController startDateController;
  final TextEditingController endDateController;
  final VoidCallback onTapStartDate;
  final VoidCallback onTapEndDate;
  final ValueChanged<String>? onStartDateChanged;
  final ValueChanged<String>? onEndDateChanged;
  final String startDateLabel;
  final String endDateLabel;

  // Filter Params
  final List<String> filterOptions;
  final String selectedFilter;
  final ValueChanged<String> onFilterChanged;

  // Content (Strictly Typed)
  final DSTimeline body;
  final DSTimelineSidebar? sidebar;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isDesktop = constraints.maxWidth > 800;
        final double sidePadding = padding.horizontal / 2;
        final double topPadding = padding.vertical / 2;

        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Header Section (Search + Dates)
                Padding(
                  padding: EdgeInsets.only(
                    left: sidePadding,
                    right: sidePadding,
                    top: topPadding,
                  ),
                  child: isDesktop
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: DSAutocomplete<T>.single(
                                entries: searchEntries,
                                value: searchValue,
                                hintText: searchHintText,
                                fieldLeadingIcon:
                                    DSIcon.small(icon: Icons.search),
                                onChanged: onSearchChanged,
                                onQueryChanged: onSearchQueryChanged,
                              ),
                            ),
                            const SizedBox(width: 16),
                            SizedBox(
                              width: 180,
                              child: DSTimelineDateInput(
                                label: startDateLabel,
                                controller: startDateController,
                                onTapCalendar: onTapStartDate,
                                onChanged: onStartDateChanged,
                              ),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: 180,
                              child: DSTimelineDateInput(
                                label: endDateLabel,
                                controller: endDateController,
                                onTapCalendar: onTapEndDate,
                                onChanged: onEndDateChanged,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            DSAutocomplete<T>.single(
                              entries: searchEntries,
                              value: searchValue,
                              hintText: searchHintText,
                              fieldLeadingIcon:
                                  DSIcon.small(icon: Icons.search),
                              onChanged: onSearchChanged,
                              onQueryChanged: onSearchQueryChanged,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: DSTimelineDateInput(
                                    label: startDateLabel,
                                    controller: startDateController,
                                    onTapCalendar: onTapStartDate,
                                    onChanged: onStartDateChanged,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: DSTimelineDateInput(
                                    label: endDateLabel,
                                    controller: endDateController,
                                    onTapCalendar: onTapEndDate,
                                    onChanged: onEndDateChanged,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                ),
                SizedBox(height: kIsWeb ? 16 : 32),
                // 2. Filters Section
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: sidePadding),
                  child: Row(
                    children: filterOptions.map((filter) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: DSChip.filter(
                          label:
                              DSText(filter, style: context.texts.bodyMedium),
                          selected: selectedFilter == filter,
                          onSelected: (bool value) {
                            onFilterChanged(filter);
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 16),

                // 3. Body Section
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: sidePadding,
                      right: sidebar != null ? sidePadding + 4 : sidePadding,
                    ),
                    child: body,
                  ),
                ),
              ],
            ),

            // 4. Sidebar Positioning
            if (sidebar != null)
              Positioned(
                top: 175,
                bottom: 0,
                right: -5,
                width: 120,
                child: sidebar!,
              ),
          ],
        );
      },
    );
  }
}

/// A specific input widget for Dates in the Timeline View.
/// Uses DSTextField.small with a date mask (dd/mm/yyyy).
class DSTimelineDateInput extends StatefulWidget {
  const DSTimelineDateInput({
    super.key,
    required this.label,
    required this.controller,
    required this.onTapCalendar,
    this.onChanged,
    this.enabled = true,
  });

  final String label;
  final TextEditingController controller;
  final VoidCallback onTapCalendar;
  final ValueChanged<String>? onChanged;
  final bool enabled;

  @override
  State<DSTimelineDateInput> createState() => _DSTimelineDateInputState();
}

class _DSTimelineDateInputState extends State<DSTimelineDateInput> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {});
  }

  void _onClear() {
    widget.controller.clear();
    widget.onChanged?.call('');
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final hasText = widget.controller.text.isNotEmpty;

    final iconColor = widget.enabled
        ? colors.sysOnSurfaceVariant
        : colors.sysOnSurfaceVariant.withValues(alpha: 0.38);

    final suffixRow = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (hasText && widget.enabled)
          IconButton(
            icon: DSIcon.small(icon: Icons.highlight_off_outlined),
            color: iconColor,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: _onClear,
            tooltip: 'Clear',
          ),
        if (hasText) const SizedBox(width: 4),
        IconButton(
          onPressed: widget.enabled ? widget.onTapCalendar : null,
          icon: DSIcon.small(
            icon: Icons.calendar_today_outlined,
            color: iconColor,
          ),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          tooltip: 'Select Date',
        ),
        const SizedBox(width: 8),
      ],
    );

    return DSTextField.small(
      controller: widget.controller,
      onChanged: widget.onChanged,
      enabled: widget.enabled,
      labelText: widget.label,
      hintText: 'dd/mm/aaaa',
      suffixIcon: suffixRow,
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        _DateTextFormatter(),
      ],
    );
  }
}

/// A custom TextFormatter to apply the dd/MM/yyyy mask automatically.
class _DateTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // If deleting, allow standard behavior to avoid stuck cursor
    if (oldValue.text.length > newValue.text.length) {
      return newValue;
    }

    final newText = newValue.text;
    String digits = newText.replaceAll(RegExp(r'[^0-9]'), '');

    // Limit to 8 digits (ddMMyyyy)
    if (digits.length > 8) digits = digits.substring(0, 8);

    final buffer = StringBuffer();
    for (int i = 0; i < digits.length; i++) {
      buffer.write(digits[i]);
      // Add slash after day (2nd digit) and month (4th digit)
      if ((i == 1 || i == 3) && i != digits.length - 1) {
        buffer.write('/');
      }
    }

    final formatted = buffer.toString();

    // Append slash immediately if the user just finished typing day or month
    if (digits.length == 2 || digits.length == 4) {
      if (!formatted.endsWith('/')) {
        return TextEditingValue(
          text: '$formatted/',
          selection: TextSelection.collapsed(offset: formatted.length + 1),
        );
      }
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
