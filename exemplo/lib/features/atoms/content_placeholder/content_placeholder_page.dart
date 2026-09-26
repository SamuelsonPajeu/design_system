import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system_exemplo/features/atoms/content_placeholder/content_placeholder.dart';
import 'package:design_system_exemplo/ui/knobs_utils.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum _ListDirection {
  horizontal,
  vertical,
}

class ContentPlaceholderPage extends StatelessWidget {
  const ContentPlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemCount = context.knobs.sliderInt(
      label: 'Item Count',
      initial: 4,
      min: 1,
      max: 10,
      divisions: 9,
    );

    final direction = context.knobs.options<_ListDirection>(
      label: 'Direction',
      initial: _ListDirection.horizontal,
      options: const [
        Option(label: 'Horizontal', value: _ListDirection.horizontal),
        Option(label: 'Vertical', value: _ListDirection.vertical),
      ],
    );

    final size = context.knobs.sliderDSSize(
      label: 'Size',
      initial: DSSize.medium,
    );

    final iconSize = context.knobs.sliderDSSize(
      label: 'Icon Size',
      initial: DSSize.small,
    );

    final children = List.generate(
      itemCount,
      (index) => ContentPlaceholder(
        variant: index,
        size: size,
        iconSize: iconSize,
      ),
    );

    return DSScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: direction == _ListDirection.horizontal
                ? Axis.horizontal
                : Axis.vertical,
            child: direction == _ListDirection.horizontal
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: children,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children,
                  ),
          ),
        ),
      ),
    );
  }
}
