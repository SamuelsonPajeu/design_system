import 'package:design_system/core/components/molecules/sort_header/ds_sort_header.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CustomSortHeader extends StatelessWidget {
  const CustomSortHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
        body: Center(
      child: DSSortHeader(
        icon: context.knobs.boolean(label: 'Icon', initial: true) == true
            ? Symbols.abc
            : null,
        title: 'ABC',
        divider: context.knobs.boolean(label: 'Divider', initial: true),
      ),
    ));
  }
}
