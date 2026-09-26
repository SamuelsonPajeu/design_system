import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Shows a Date Picker dialog using the Design System theme.
Future<DateTime?> showDSDatePicker({
  required BuildContext context,
  DateTime? initialDate,
  required DateTime firstDate,
  required DateTime lastDate,
  DateTime? currentDate,
  DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
  SelectableDayPredicate? selectableDayPredicate,
  String? helpText,
  String? cancelText,
  String? confirmText,
  Locale? locale,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  TextDirection? textDirection,
  TransitionBuilder? builder,
  DatePickerMode initialDatePickerMode = DatePickerMode.day,
  String? errorFormatText,
  String? errorInvalidText,
  String? fieldHintText,
  String? fieldLabelText,
  TextInputType? keyboardType,
  Offset? anchorPoint,
  ValueChanged<DatePickerEntryMode>? onDatePickerModeChange,
  Icon? switchToInputEntryModeIcon,
  Icon? switchToCalendarEntryModeIcon,
}) {
  return showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
    currentDate: currentDate,
    initialEntryMode: initialEntryMode,
    selectableDayPredicate: selectableDayPredicate,
    helpText: helpText,
    cancelText: cancelText,
    confirmText: confirmText,
    locale: locale,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    textDirection: textDirection,
    initialDatePickerMode: initialDatePickerMode,
    errorFormatText: errorFormatText,
    errorInvalidText: errorInvalidText,
    fieldHintText: fieldHintText,
    fieldLabelText: fieldLabelText,
    keyboardType: keyboardType,
    anchorPoint: anchorPoint,
    onDatePickerModeChange: onDatePickerModeChange,
    switchToInputEntryModeIcon: switchToInputEntryModeIcon,
    switchToCalendarEntryModeIcon: switchToCalendarEntryModeIcon,
    builder: (BuildContext context, Widget? child) {
      return buildDSDatePickerTheme(context, child);
    },
  );
}

/// Shows a Date Range Picker dialog using the Design System theme.
Future<DateTimeRange?> showDSDateRangePicker({
  required BuildContext context,
  DateTimeRange? initialDateRange,
  required DateTime firstDate,
  required DateTime lastDate,
  DateTime? currentDate,
  DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
  String? helpText,
  String? cancelText,
  String? confirmText,
  String? saveText,
  String? errorFormatText,
  String? errorInvalidText,
  String? errorInvalidRangeText,
  String? fieldStartHintText,
  String? fieldEndHintText,
  String? fieldStartLabelText,
  String? fieldEndLabelText,
  Locale? locale,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  TextDirection? textDirection,
  TransitionBuilder? builder,
  Offset? anchorPoint,
  TextInputType keyboardType = TextInputType.datetime,
  Icon? switchToInputEntryModeIcon,
  Icon? switchToCalendarEntryModeIcon,
}) {
  return showDateRangePicker(
    context: context,
    initialDateRange: initialDateRange,
    firstDate: firstDate,
    lastDate: lastDate,
    currentDate: currentDate,
    initialEntryMode: initialEntryMode,
    helpText: helpText,
    cancelText: cancelText,
    confirmText: confirmText,
    saveText: saveText,
    errorFormatText: errorFormatText,
    errorInvalidText: errorInvalidText,
    errorInvalidRangeText: errorInvalidRangeText,
    fieldStartHintText: fieldStartHintText,
    fieldEndHintText: fieldEndHintText,
    fieldStartLabelText: fieldStartLabelText,
    fieldEndLabelText: fieldEndLabelText,
    locale: locale,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    textDirection: textDirection,
    anchorPoint: anchorPoint,
    keyboardType: keyboardType,
    switchToInputEntryModeIcon: switchToInputEntryModeIcon,
    switchToCalendarEntryModeIcon: switchToCalendarEntryModeIcon,
    builder: (BuildContext context, Widget? child) {
      // Wrapped to prevent full-screen expansion
      return Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400.0,
            maxHeight: 600.0,
          ),
          child: buildDSDatePickerTheme(context, child),
        ),
      );
    },
  );
}

/// Helper method to construct the Theme that enforces DS tokens.
Widget buildDSDatePickerTheme(BuildContext context, Widget? child) {
  final dsColors = context.colors;
  final dsTexts = context.texts;

  // Constants derived from DSTextField logic
  final borderSide = BorderSide(color: dsColors.sysOutline);
  final errorBorderSide = BorderSide(color: dsColors.sysError);
  final focusedBorderSide = BorderSide(color: dsColors.sysPrimary, width: 3.0);
  final disabledBorderSide =
      BorderSide(color: dsColors.sysOutline.withValues(alpha: 0.12));
  final BorderRadius borderRadius = BorderRadius.circular(8);

  return Theme(
    data: Theme.of(context).copyWith(
      textTheme: Theme.of(context).textTheme.copyWith(
            titleSmall: dsTexts.labelLarge,
          ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: dsColors.sysPrimary,
            onPrimary: dsColors.sysOnPrimary,
            onSurface: dsColors.sysOnSurface,
            onSurfaceVariant: dsColors.sysOnSurfaceVariant,
            secondaryContainer: dsColors.sysSecondaryContainer,
            onSecondaryContainer: dsColors.sysOnPrimaryContainer,
            surface: dsColors.sysSurfaceContainerHigh,
          ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: dsColors.sysSurface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        labelStyle: dsTexts.bodyLarge.copyWith(
          color: dsColors.sysOnSurfaceVariant,
        ),
        floatingLabelStyle: dsTexts.bodySmall.copyWith(
          color: dsColors.sysOnSurfaceVariant,
        ),
        hintStyle: dsTexts.bodyLarge.copyWith(
          color: dsColors.sysOnSurfaceVariant,
        ),
        errorStyle: dsTexts.bodySmall.copyWith(
          color: dsColors.sysError,
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: borderSide,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: borderSide,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: focusedBorderSide,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: errorBorderSide,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: errorBorderSide.copyWith(width: 3.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: disabledBorderSide,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: dsColors.sysPrimary,
          textStyle: dsTexts.labelLarge,
        ),
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: dsColors.sysSurfaceContainerHigh,
        dayStyle: dsTexts.bodyLarge,
        headerForegroundColor: dsColors.sysOnSurface,
        subHeaderForegroundColor: dsColors.sysOnSurfaceVariant,
        dividerColor: dsColors.sysOutlineVariant,
        headerHeadlineStyle: dsTexts.headlineLarge,
        headerHelpStyle: dsTexts.labelLarge,
        rangePickerBackgroundColor: dsColors.sysSurfaceContainerHigh,
        rangePickerHeaderForegroundColor: dsColors.sysOnSurface,
        rangePickerHeaderHeadlineStyle: dsTexts.titleLarge,
        rangePickerHeaderHelpStyle: dsTexts.labelLarge,
        rangeSelectionBackgroundColor: dsColors.sysSecondaryContainer,
        rangeSelectionOverlayColor: WidgetStateProperty.resolveWith((states) {
          return dsColors.sysPrimary.withValues(alpha: 0.12);
        }),
        dayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return dsColors.sysOnPrimary;
          }
          if (states.contains(WidgetState.disabled)) {
            return dsColors.sysOnSurface.withValues(alpha: 0.38);
          }
          return dsColors.sysOnSurface;
        }),
        dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return dsColors.sysPrimary;
          }
          return null;
        }),
      ),
    ),
    child: child!,
  );
}
