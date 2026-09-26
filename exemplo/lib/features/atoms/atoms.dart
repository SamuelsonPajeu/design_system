import 'package:design_system_exemplo/features/atoms/audio_bars/audio_bars_example.dart';
import 'package:design_system_exemplo/features/atoms/badge/badge_example.dart';
import 'package:design_system_exemplo/features/atoms/checkbox/checkbox_example.dart';
import 'package:design_system_exemplo/features/atoms/content_placeholder/content_placeholder_page.dart';
import 'package:design_system_exemplo/features/atoms/divider/divider_example.dart';
import 'package:design_system_exemplo/features/atoms/loading/loading.dart';
import 'package:design_system_exemplo/features/atoms/loading/loading_shimmer.dart';
import 'package:design_system_exemplo/features/atoms/network_quality/network_quality_example.dart';
import 'package:design_system_exemplo/features/atoms/progress_indicator/progress_indicator_example.dart';
import 'package:design_system_exemplo/features/atoms/radio/radio_example.dart';
import 'package:design_system_exemplo/features/atoms/slider/slider_example.dart';
import 'package:design_system_exemplo/features/atoms/switch/switch_example.dart';
import 'package:design_system_exemplo/features/atoms/text/text.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'icon/icon.dart';

final List<Story> designSystemAtomsStory = <Story>[
  Story(
    name: 'Atoms/AudioBars',
    description: 'Equalizador que indica fala.',
    builder: (context) => const AudioBarsExample(),
  ),
  Story(
    name: 'Atoms/NetworkQuality',
    description: 'Indicador de qualidade de conexão em 5 barras.',
    builder: (context) => const NetworkQualityExample(),
  ),
  Story(
    name: 'Atoms/Badge',
    description: 'Badges padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: BadgeExample(),
    ),
  ),
  Story(
    name: 'Atoms/Checkbox',
    description: 'Checkbox padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CheckboxExample(),
    ),
  ),
  Story(
    name: 'Atoms/Divider',
    description: 'Divider padrão do aplicativo.',
    builder: (context) =>
        const ColoredBox(color: Colors.white, child: DividerExample()),
  ),
  Story(
    name: 'Atoms/ProgressIndicator',
    description: 'ProgressIndicator padrão do aplicativo.',
    builder: (context) => const ColoredBox(
        color: Colors.white, child: ProgressIndicatorExample()),
  ),
  Story(
    name: 'Atoms/Radio',
    description: 'Radio padrão do aplicativo.',
    builder: (context) =>
        const ColoredBox(color: Colors.white, child: RadioExample()),
  ),
  Story(
    name: 'Atoms/Slider',
    description: 'Slider padrão do aplicativo.',
    builder: (context) =>
        const ColoredBox(color: Colors.white, child: SliderExample()),
  ),
  Story(
    name: 'Atoms/Icon',
    description: 'Icon padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomIcon(),
    ),
  ),
  Story(
    name: 'Atoms/LoadingShimmer',
    description: 'LoadingShimmer padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: LoadingShimmer(),
    ),
  ),
  Story(
    name: 'Atoms/Loading',
    description: 'Loading padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: Loading(),
    ),
  ),
  Story(
    name: 'Atoms/Text',
    description: 'Text padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: CustomText(),
    ),
  ),
  Story(
    name: 'Atoms/Placeholder',
    description: 'Placeholder usado apenas no example',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: ContentPlaceholderPage(),
    ),
  ),
  Story(
    name: 'Atoms/Switch',
    description: 'Switch padrão do aplicativo.',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: SwitchExample(),
    ),
  ),
];
