import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CardTableExemplo extends StatelessWidget {
  const CardTableExemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: _tableCard(context, DSCardStyle.outlined),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _tableCard(context, DSCardStyle.elevated),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _tableCard(context, DSCardStyle.enabled),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tableCard(BuildContext context, DSCardStyle style) {
    final rows = List.generate(5, (index) {
      final isLast = index == 4;

      return DSListTile(
        title: const Text('Label'),
        trailing: Text(
          'Text',
          style: context.texts.bodyMedium.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        density: DSListTileDensity.standard,
        showDivider: !isLast,
      );
    });

    return DSCard.table(
      style: style,
      title: 'Title',
      subtitle: 'Subtitle',
      avatar: DSAvatar.medium.icon(icon: Symbols.person),
      trailingIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DSCheckbox(
            value: false,
            onChanged: (v) {},
          ),
          const SizedBox(width: 16),
          DSIcon.small(
            icon: Symbols.cut,
          ),
        ],
      ),
      actionButtons: [
        DSButton.text(
          onTap: () async {},
          buttonText: 'Label',
          enabled: true,
        ),
        DSButton.text(
          onTap: () async {},
          buttonText: 'Label',
          enabled: true,
        ),
      ],
      children: rows,
    );
  }
}
