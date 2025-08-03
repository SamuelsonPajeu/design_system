import 'package:design_system_exemplo/features/atoms/loading/loading.dart';
import 'package:design_system_exemplo/features/atoms/loading/loading_shimmer.dart';
import 'package:design_system_exemplo/features/atoms/text/text.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'icon/icon.dart';

final List<Story> designSystemAtomsStory = <Story>[
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
];
