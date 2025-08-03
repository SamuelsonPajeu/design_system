import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/floating_action_button/ds_floating_action_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({super.key});

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Surface", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildFABs(context),
            ),
            const SizedBox(height: 16),
            Text("Primary", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildFABs(context),
            ),
            const SizedBox(height: 16),
            Text("Secondary", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildFABs(context),
            ),
            const SizedBox(height: 16),
            Text("Tertiary", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildFABs(context),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFABs(BuildContext context) {
    return [
      DSFloatingActionButton.small(
        onPressed: () {},
        icon: Symbols.edit,
        iconColor: Theme.of(context).colors.sysOnTertiary,
      ),
      DSFloatingActionButton(
        onPressed: () {},
        floatingActionButtonStyle: DSFloatingActionButtonColor.secondary,
        icon: Symbols.edit,
        iconColor: Theme.of(context).colors.sysOnTertiary,
      ),
      DSFloatingActionButton.large(
        onPressed: () {},
        floatingActionButtonStyle: DSFloatingActionButtonColor.tertiary,
        icon: Symbols.edit,
        iconColor: Theme.of(context).colors.sysOnTertiary,
      ),
      DSFloatingActionButton.extended(
        onPressed: () {},
        floatingActionButtonStyle: DSFloatingActionButtonColor.surface,
        icon: Symbols.edit,
        iconColor: Theme.of(context).colors.sysOnSurface,
        label: const DSText('Teste'),
      ),
    ];
  }
}
