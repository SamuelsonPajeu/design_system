import 'package:design_system/core/components/molecules/date_picker/ds_date_picker.dart';
import 'package:design_system/core/components/molecules/time_picker/ds_time_picker.dart';
import 'package:flutter/material.dart';

/// Shows a Date Picker followed immediately by a Time Picker using the Design System theme.
///
/// Returns a [DateTime] combining the selected date and time.
/// Returns `null` if either step is cancelled.
Future<DateTime?> showDSDateTimePicker({
  required BuildContext context,

  // --- Common Configuration (Applied to both) ---
  Locale? locale,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  TransitionBuilder? builder,

  // --- Date Picker Configuration ---
  DateTime? initialDate,
  required DateTime firstDate,
  required DateTime lastDate,
  DatePickerEntryMode initialDateEntryMode = DatePickerEntryMode.calendar,
  SelectableDayPredicate? selectableDayPredicate,
  String? dateHelpText,
  String? dateCancelText,
  String? dateConfirmText,
  String? dateFieldHintText,
  String? dateFieldLabelText,
  String? dateErrorFormatText,
  String? dateErrorInvalidText,
  Icon? dateSwitchToInputEntryModeIcon,
  Icon? dateSwitchToCalendarEntryModeIcon,

  // --- Time Picker Configuration ---
  TimeOfDay? initialTime,
  TimePickerEntryMode initialTimeEntryMode = TimePickerEntryMode.dial,
  String? timeHelpText,
  String? timeCancelText,
  String? timeConfirmText,
  String? timeErrorInvalidText,
  String? timeHourLabelText,
  String? timeMinuteLabelText,
  Icon? timeSwitchToInputEntryModeIcon,
  Icon? timeSwitchToTimerEntryModeIcon,
  Orientation? timeOrientation,
}) async {
  // 1. Pick Date
  final DateTime? date = await showDSDatePicker(
    context: context,
    initialDate: initialDate ?? DateTime.now(),
    firstDate: firstDate,
    lastDate: lastDate,
    initialEntryMode: initialDateEntryMode,
    selectableDayPredicate: selectableDayPredicate,
    helpText: dateHelpText ?? 'Select Date',
    cancelText: dateCancelText,
    confirmText: dateConfirmText,
    fieldHintText: dateFieldHintText,
    fieldLabelText: dateFieldLabelText,
    errorFormatText: dateErrorFormatText,
    errorInvalidText: dateErrorInvalidText,
    switchToInputEntryModeIcon: dateSwitchToInputEntryModeIcon,
    switchToCalendarEntryModeIcon: dateSwitchToCalendarEntryModeIcon,
    // Common
    locale: locale,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    builder: builder,
  );

  if (date == null) {
    return null; // User cancelled date selection
  }

  // 2. Pick Time
  // Use provided initialTime, or extract time from initialDate if available, or use Now.
  final TimeOfDay timeInitial = initialTime ??
      (initialDate != null
          ? TimeOfDay.fromDateTime(initialDate)
          : TimeOfDay.now());

  if (!context.mounted) return null;

  final TimeOfDay? time = await showDSTimePicker(
    context: context,
    initialTime: timeInitial,
    initialEntryMode: initialTimeEntryMode,
    helpText: timeHelpText ?? 'Select Time',
    cancelText: timeCancelText,
    confirmText: timeConfirmText,
    errorInvalidText: timeErrorInvalidText,
    hourLabelText: timeHourLabelText,
    minuteLabelText: timeMinuteLabelText,
    switchToInputEntryModeIcon: timeSwitchToInputEntryModeIcon,
    switchToTimerEntryModeIcon: timeSwitchToTimerEntryModeIcon,
    orientation: timeOrientation,
    // Common
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
  );

  if (time == null) {
    return null; // User cancelled time selection
  }

  // 3. Combine
  return DateTime(
    date.year,
    date.month,
    date.day,
    time.hour,
    time.minute,
  );
}
