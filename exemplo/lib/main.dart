import 'package:design_system_exemplo/features/atoms/atoms.dart';
import 'package:design_system_exemplo/features/initial/initial.dart';
import 'package:design_system_exemplo/features/molecules/molecules.dart';
import 'package:design_system_exemplo/features/organisms/organisms.dart';
import 'package:design_system_exemplo/features/templates/templates.dart';
import 'package:design_system_exemplo/ui/theme_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final ValueNotifier<ThemeMode> themeModeNotifier =
    ValueNotifier(ThemeMode.light);
final ValueNotifier<ThemeEnum> colorThemeNotifier =
    ValueNotifier(ThemeEnum.base);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StoryBookApp());
}

Storybook createStorybook() {
  final List<Story> allStories = [
    ...designSystemInitialPageStory,
    ...designSystemAtomsStory,
    ...designSystemMoleculesStory,
    ...designSystemOrganismsStory,
    ...designSystemTemplatesStory,
  ];

  allStories.sort((a, b) => a.name.compareTo(b.name));

  return Storybook(
    plugins: [
      ...initializePlugins(
        enableDeviceFrame: true,
        enableThemeMode: false,
      ),
      // Theme Toggle,
      Plugin(
        icon: (context) => ValueListenableBuilder<ThemeMode>(
          valueListenable: themeModeNotifier,
          builder: (context, mode, _) {
            return Icon(
              mode == ThemeMode.light ? Icons.wb_sunny : Icons.nightlight_round,
            );
          },
        ),
        onPressed: (context) {
          themeModeNotifier.value = themeModeNotifier.value == ThemeMode.light
              ? ThemeMode.dark
              : ThemeMode.light;
        },
      ),
      // Color Theme Toggle
      Plugin(
        icon: (context) => ValueListenableBuilder<ThemeEnum>(
          valueListenable: colorThemeNotifier,
          builder: (context, colorTheme, _) {
            return Text(colorTheme.label);
          },
        ),
        onPressed: (context) {
          colorThemeNotifier.value = colorThemeNotifier.value.next;
        },
      ),
    ],
    initialStory: 'Initial Page',
    stories: allStories,
    wrapperBuilder: (context, child) => ThemeWrapper(
      themeNotifier: themeModeNotifier,
      colorThemeNotifier: colorThemeNotifier,
      child: child,
    ),
  );
}

class StoryBookApp extends StatelessWidget {
  const StoryBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return createStorybook();
  }
}
