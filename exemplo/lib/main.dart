import 'package:design_system/core/infrastructure/utils/size_config.dart';
import 'package:design_system_exemplo/features/atoms/atoms.dart';
import 'package:design_system_exemplo/features/initial/initial.dart';
import 'package:design_system_exemplo/features/molecules/molecules.dart';
import 'package:design_system_exemplo/features/organisms/organisms.dart';
import 'package:design_system_exemplo/features/templates/templates.dart';
import 'package:design_system_exemplo/ui/theme_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StoryBookApp());
}

Storybook storybook() => Storybook(
  plugins: initializePlugins(
    enableDeviceFrame: true,
    enableThemeMode: true,
  ),
  initialStory: 'Initial Page',
  stories: <Story>[
    ...designSystemInitialPageStory,
    ...designSystemAtomsStory,
    ...designSystemMoleculesStory,
    ...designSystemOrganismsStory,
    ...designSystemTemplatesStory
  ],
  wrapperBuilder: (context, child) => ThemeWrapper(
    child: Localizations(
      delegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('pt', 'BR'),
      child: child,
    ),
  ),
);

class StoryBookApp extends StatelessWidget {
  const StoryBookApp({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context: context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('pt', 'BR'),
      ],
      home: Scaffold(
        body: Center(child: storybook()),
      ),
    );
  }
}