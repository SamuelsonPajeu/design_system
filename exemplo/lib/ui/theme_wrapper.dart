import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum ThemeEnum {
  baseTheme('baseTheme');

  final String name;
  const ThemeEnum(this.name);
}

class ThemeWrapper extends StatelessWidget {
  const ThemeWrapper({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final themeName = context.knobs.options<ThemeEnum>(
      label: 'Temas',
      initial: ThemeEnum.baseTheme,
      options: const [
        Option(label: 'baseTheme', value: ThemeEnum.baseTheme),
      ],
    );

    ThemeData selectedTheme;
    ThemeData selectedDarkTheme;

    switch (themeName) {
      case ThemeEnum.baseTheme:
        selectedTheme = BaseAppTheme.light;
        selectedDarkTheme = BaseAppTheme.dark;
        break;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: selectedTheme,
      darkTheme: selectedDarkTheme,
      home: Scaffold(body: SafeArea(child: child!)),
    );
  }
}
