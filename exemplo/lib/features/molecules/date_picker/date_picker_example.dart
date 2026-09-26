import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/date_picker/ds_date_picker.dart';
import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  final TextEditingController _singleDateController = TextEditingController();
  final TextEditingController _rangeDateController = TextEditingController();

  DateTime? _selectedDate;
  DateTimeRange? _selectedDateRange;

  @override
  void dispose() {
    _singleDateController.dispose();
    _rangeDateController.dispose();
    super.dispose();
  }

  // Format to dd/mm/yyyy
  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDSDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      helpText: 'Selecione uma data',
      switchToInputEntryModeIcon: Icon(
        Icons.edit_outlined,
        color: context.colors.sysOnSurfaceVariant,
      ),
      switchToCalendarEntryModeIcon: Icon(
        Icons.today_outlined,
        color: context.colors.sysOnSurfaceVariant,
      ),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _singleDateController.text = _formatDate(picked);
      });
    }
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

    if (picked != null && picked != _selectedDateRange) {
      setState(() {
        _selectedDateRange = picked;
        _rangeDateController.text =
            '${_formatDate(picked.start)} - ${_formatDate(picked.end)}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      appBar: AppBar(title: const Text('Date Pickers')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 24),
            Text('Single Date Selection', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSTextField.standard(
              controller: _singleDateController,
              labelText: 'Date of Birth',
              hintText: 'dd/mm/yyyy',
              readOnly: true,
              onTap: () => _pickDate(context),
              suffixIcon: IconButton(
                icon: DSIcon.small(icon: Icons.calendar_today),
                onPressed: () => _pickDate(context),
              ),
            ),
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 32),
            Text('Date Range Selection', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSTextField.standard(
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
            const SizedBox(height: 64),
            const Divider(thickness: 2),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 16),
            Text(
              'Previews to verify styles without opening dialogs.',
              style: context.texts.bodyMedium
                  .copyWith(color: context.colors.sysOnSurfaceVariant),
            ),
            const SizedBox(height: 32),
            Text('1. Single Date Picker', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: buildDSDatePickerTheme(
                context,
                Builder(builder: (context) {
                  return DatePickerDialog(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030),
                    helpText: 'Selecione uma data',
                  );
                }),
              ),
            ),
            const SizedBox(height: 48),
            Text('2. Date Range Picker', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            Center(
              child: AbsorbPointer(
                child: buildDSDatePickerTheme(
                  context,
                  Builder(builder: (context) {
                    return ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 360, maxHeight: 550),
                      child: DateRangePickerDialog(
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                        currentDate: DateTime.now(),
                        initialDateRange: DateTimeRange(
                          start: DateTime.now(),
                          end: DateTime.now().add(const Duration(days: 5)),
                        ),
                        helpText: 'Selecione uma duração',
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
