import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/components/molecules/time_picker/ds_time_picker.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  final TextEditingController _timeController = TextEditingController();
  TimeOfDay? _selectedTime;

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  String _formatTime(TimeOfDay time) {
    // Formatting HH:mm
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showDSTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
      helpText: 'Select time',
      cancelText: 'Cancel',
      confirmText: 'OK',
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _timeController.text = _formatTime(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      appBar: AppBar(title: const Text('Time Picker')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 24),
            DSTextField.standard(
              controller: _timeController,
              labelText: 'Meeting Time',
              hintText: 'HH:mm',
              readOnly: true,
              onTap: () => _pickTime(context),
              suffixIcon: IconButton(
                icon: DSIcon.small(icon: Icons.access_time),
                onPressed: () => _pickTime(context),
              ),
            ),
            const SizedBox(height: 64),
            const Divider(thickness: 2),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 16),
            Text(
              'Preview (Dial Mode)',
              style: context.texts.bodyMedium
                  .copyWith(color: context.colors.sysOnSurfaceVariant),
            ),
            const SizedBox(height: 32),

            // --- Static Verification using the public theme builder ---
            Center(
              child: AbsorbPointer(
                child: buildDSTimePickerTheme(
                  context,
                  Builder(builder: (context) {
                    return TimePickerDialog(
                      initialTime: TimeOfDay.now(),
                      helpText: 'Select time',
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
