import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Shows a Time Picker dialog using the Design System theme.
Future<TimeOfDay?> showDSTimePicker({
  required BuildContext context,
  required TimeOfDay initialTime,
  TransitionBuilder? builder,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useRootNavigator = true,
  TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
  String? cancelText,
  String? confirmText,
  String? helpText,
  String? errorInvalidText,
  String? hourLabelText,
  String? minuteLabelText,
  RouteSettings? routeSettings,
  EntryModeChangeCallback? onEntryModeChanged,
  Offset? anchorPoint,
  Orientation? orientation,
  Icon? switchToInputEntryModeIcon,
  Icon? switchToTimerEntryModeIcon,
  bool emptyInitialInput = false,
}) async {
  return showTimePicker(
    context: context,
    initialTime: initialTime,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useRootNavigator: useRootNavigator,
    initialEntryMode: initialEntryMode,
    cancelText: cancelText,
    confirmText: confirmText,
    helpText: helpText,
    errorInvalidText: errorInvalidText,
    hourLabelText: hourLabelText,
    minuteLabelText: minuteLabelText,
    routeSettings: routeSettings,
    onEntryModeChanged: onEntryModeChanged,
    anchorPoint: anchorPoint,
    orientation: orientation,
    switchToInputEntryModeIcon: switchToInputEntryModeIcon,
    switchToTimerEntryModeIcon: switchToTimerEntryModeIcon,
    builder: (BuildContext context, Widget? child) {
      return buildDSTimePickerTheme(context, child);
    },
  );
}

/// Helper method to construct the Theme that enforces DS tokens for the Time Picker.
Widget buildDSTimePickerTheme(BuildContext context, Widget? child) {
  final dsColors = context.colors;
  final dsTexts = context.texts;

  // Constants
  final BorderRadius borderRadius = BorderRadius.circular(8);
  final borderSide = BorderSide(color: dsColors.sysOutline);
  final focusedBorderSide = BorderSide(color: dsColors.sysPrimary, width: 3.0);
  final errorBorderSide = BorderSide(color: dsColors.sysError);

  return Theme(
    data: Theme.of(context).copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: dsColors.sysPrimary,
            onPrimary: dsColors.sysOnPrimary,
            onSurface: dsColors.sysOnSurface,
            surface: dsColors.sysSurfaceContainerHigh,
            outline: dsColors.sysOutline,
            tertiaryContainer: dsColors.sysTertiaryContainer,
            onTertiaryContainer: dsColors.sysOnTertiaryContainer,
            primaryContainer: dsColors.sysPrimaryContainer,
            onPrimaryContainer: dsColors.sysOnSurface,
          ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: dsColors.sysPrimary,
          textStyle: dsTexts.labelLarge,
        ),
      ),
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: dsColors.sysOnSurfaceVariant,
          ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: dsColors.sysOnSurfaceVariant,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: dsColors.sysSurface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
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
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: dsColors.sysSurfaceContainerHigh,
        helpTextStyle: dsTexts.labelLarge.copyWith(
          color: dsColors.sysOnSurface,
        ),
        hourMinuteColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return dsColors.sysPrimaryContainer;
          }
          return dsColors.sysSurfaceContainerHighest;
        }),
        hourMinuteTextColor: WidgetStateColor.resolveWith((states) {
          return dsColors.sysOnPrimaryContainer;
        }),
        hourMinuteTextStyle: dsTexts.displaySmall,
        dayPeriodColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return dsColors.sysTertiaryContainer;
          }
          return Colors.transparent;
        }),
        dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return dsColors.sysOnTertiaryContainer;
          }
          return dsColors.sysOnSurface;
        }),
        dayPeriodTextStyle: dsTexts.titleMedium,
        dayPeriodBorderSide: BorderSide(color: dsColors.sysOutline),
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: dsColors.sysOutline),
        ),
        dialBackgroundColor: dsColors.sysSurfaceContainerHighest,
        dialHandColor: dsColors.sysPrimary,
        dialTextColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return dsColors.sysOnPrimary;
          }
          return dsColors.sysOnSurface;
        }),
        entryModeIconColor: dsColors.sysOnSurfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        hourMinuteShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    child: child!,
  );
}
