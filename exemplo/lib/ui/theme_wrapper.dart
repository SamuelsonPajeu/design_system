import 'package:design_system/core/infrastructure/utils/size_config.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:design_system/core/ui/themes/base_aqua_app_theme.dart';
import 'package:design_system/core/ui/themes/base_blue_app_theme.dart';
import 'package:design_system/core/ui/themes/base_cyan_app_theme.dart';
import 'package:design_system/core/ui/themes/base_grape_app_theme.dart';
import 'package:design_system/core/ui/themes/base_green_app_theme.dart';
import 'package:design_system/core/ui/themes/base_lime_app_theme.dart';
import 'package:design_system/core/ui/themes/base_magenta_app_theme.dart';
import 'package:design_system/core/ui/themes/base_orange_app_theme.dart';
import 'package:design_system/core/ui/themes/base_pink_app_theme.dart';
import 'package:design_system/core/ui/themes/base_purple_app_theme.dart';
import 'package:design_system/core/ui/themes/base_red_app_theme.dart';
import 'package:design_system/core/ui/themes/base_yellow_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

enum ThemeEnum {
  base('Base'),
  aqua('Aqua'),
  blue('Blue'),
  cyan('Cyan'),
  grape('Grape'),
  green('Green'),
  lime('Lime'),
  magenta('Magenta'),
  orange('Orange'),
  pink('Pink'),
  purple('Purple'),
  red('Red'),
  yellow('Yellow');

  final String label;
  const ThemeEnum(this.label);

  ThemeEnum get next => values[(index + 1) % values.length];
}

class ThemeWrapper extends StatelessWidget {
  const ThemeWrapper({
    super.key,
    required this.child,
    required this.themeNotifier,
    required this.colorThemeNotifier,
  });

  final Widget? child;
  final ValueNotifier<ThemeMode> themeNotifier;
  final ValueNotifier<ThemeEnum> colorThemeNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeEnum>(
      valueListenable: colorThemeNotifier,
      builder: (context, currentColorTheme, _) {
        ThemeData selectedTheme;
        ThemeData selectedDarkTheme;

        switch (currentColorTheme) {
          case ThemeEnum.base:
            selectedTheme = BaseAppTheme.light;
            selectedDarkTheme = BaseAppTheme.dark;
            break;
          case ThemeEnum.aqua:
            selectedTheme = BaseAquaAppTheme.light;
            selectedDarkTheme = BaseAquaAppTheme.dark;
            break;
          case ThemeEnum.blue:
            selectedTheme = BaseBlueAppTheme.light;
            selectedDarkTheme = BaseBlueAppTheme.dark;
            break;
          case ThemeEnum.cyan:
            selectedTheme = BaseCyanAppTheme.light;
            selectedDarkTheme = BaseCyanAppTheme.dark;
            break;
          case ThemeEnum.grape:
            selectedTheme = BaseGrapeAppTheme.light;
            selectedDarkTheme = BaseGrapeAppTheme.dark;
            break;
          case ThemeEnum.green:
            selectedTheme = BaseGreenAppTheme.light;
            selectedDarkTheme = BaseGreenAppTheme.dark;
            break;
          case ThemeEnum.lime:
            selectedTheme = BaseLimeAppTheme.light;
            selectedDarkTheme = BaseLimeAppTheme.dark;
            break;
          case ThemeEnum.magenta:
            selectedTheme = BaseMagentaAppTheme.light;
            selectedDarkTheme = BaseMagentaAppTheme.dark;
            break;
          case ThemeEnum.orange:
            selectedTheme = BaseOrangeAppTheme.light;
            selectedDarkTheme = BaseOrangeAppTheme.dark;
            break;
          case ThemeEnum.pink:
            selectedTheme = BasePinkAppTheme.light;
            selectedDarkTheme = BasePinkAppTheme.dark;
            break;
          case ThemeEnum.purple:
            selectedTheme = BasePurpleAppTheme.light;
            selectedDarkTheme = BasePurpleAppTheme.dark;
            break;
          case ThemeEnum.red:
            selectedTheme = BaseRedAppTheme.light;
            selectedDarkTheme = BaseRedAppTheme.dark;
            break;
          case ThemeEnum.yellow:
            selectedTheme = BaseYellowAppTheme.light;
            selectedDarkTheme = BaseYellowAppTheme.dark;
            break;
        }

        return ValueListenableBuilder<ThemeMode>(
          valueListenable: themeNotifier,
          builder: (context, currentMode, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: selectedTheme,
              darkTheme: selectedDarkTheme,
              themeMode: currentMode,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('pt', 'BR'),
                Locale('en', ''),
              ],
              locale: const Locale('pt', 'BR'),
              builder: (context, widget) {
                SizeConfig.init(context: context);
                return widget!;
              },
              home: Scaffold(body: child),
            );
          },
        );
      },
    );
  }
}
