import 'package:design_system/core/components/molecules/bottom_app_bar/ds_bottom_app_bar.dart';
import 'package:design_system/core/components/molecules/floating_action_button/ds_floating_action_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system_exemplo/features/atoms/content_placeholder/content_placeholder.dart';
import 'package:design_system_exemplo/ui/knobs_utils.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class BottomAppBarExample extends StatelessWidget {
  const BottomAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    final itemCount = context.knobs.sliderInt(
      label: 'Item Count',
      initial: 4,
      min: 1,
      max: 20,
      divisions: 19,
    );

    final spacing = context.knobs.sliderDSSize(
      label: 'Spacing',
      initial: DSSize.medium,
    );

    final showFab = context.knobs.boolean(
      label: 'Show FAB',
      initial: false,
    );

    final items = List.generate(
      itemCount,
      (index) => ContentPlaceholder(
        variant: index,
        iconSize: DSSize.medium,
      ),
    );

    return DSScaffold(
      body: const SizedBox.expand(),
      bottomNavigationBar: DSBottomAppBar(
        items: items,
        showFab: showFab,
        spacing: spacing,
        fab: DSFloatingActionButton(
          onPressed: () {},
          icon: Symbols.add,
          backgroundColor: context.colors.sysPrimary,
          iconColor: context.colors.sysOnPrimary,
        ),
      ),
    );
  }
}
