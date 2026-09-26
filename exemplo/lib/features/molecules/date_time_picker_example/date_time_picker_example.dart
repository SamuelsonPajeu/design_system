import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/date_picker/ds_date_picker.dart';
import 'package:design_system/core/components/molecules/date_time_picker/ds_date_time_picker.dart';
import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/components/molecules/time_picker/ds_time_picker.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DateTimePickerExample extends StatefulWidget {
  const DateTimePickerExample({super.key});

  @override
  State<DateTimePickerExample> createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  final TextEditingController _dateTimeController = TextEditingController();
  DateTime? _selectedDateTime;

  @override
  void dispose() {
    _dateTimeController.dispose();
    super.dispose();
  }

  String _formatDateTime(DateTime dt) {
    // Format: dd/mm/yyyy HH:mm
    final date =
        '${dt.day.toString().padLeft(2, '0')}/${dt.month.toString().padLeft(2, '0')}/${dt.year}';
    final time =
        '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
    return '$date $time';
  }

  Future<void> _pickDateTime(BuildContext context) async {
    final DateTime? picked = await showDSDateTimePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      dateHelpText: 'Selecione a Data',
      timeHelpText: 'Selecione a Hora',
    );

    if (picked != null) {
      setState(() {
        _selectedDateTime = picked;
        _dateTimeController.text = _formatDateTime(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      appBar: AppBar(title: const Text('Date & Time Picker')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Flow', style: context.texts.headlineMedium),
            const SizedBox(height: 24),
            DSTextField.standard(
              controller: _dateTimeController,
              labelText: 'Agendamento',
              hintText: 'dd/mm/yyyy HH:mm',
              readOnly: true,
              onTap: () => _pickDateTime(context),
              suffixIcon: IconButton(
                icon: DSIcon.small(icon: Icons.event),
                onPressed: () => _pickDateTime(context),
              ),
            ),
            const SizedBox(height: 64),
            const Divider(thickness: 2),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 16),
            Text(
              'Static previews of the components used in the sequential flow.',
              style: context.texts.bodyMedium
                  .copyWith(color: context.colors.sysOnSurfaceVariant),
            ),
            const SizedBox(height: 32),
            Text('Step 1: Date Picker', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            Center(
              child: AbsorbPointer(
                child: buildDSDatePickerTheme(
                  context,
                  Builder(builder: (context) {
                    return DatePickerDialog(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030),
                      helpText: 'Selecione a Data',
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(height: 48),
            Text('Step 2: Time Picker', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            Center(
              child: AbsorbPointer(
                child: buildDSTimePickerTheme(
                  context,
                  Builder(builder: (context) {
                    return TimePickerDialog(
                      initialTime: const TimeOfDay(hour: 14, minute: 30),
                      helpText: 'Selecione a Hora',
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
