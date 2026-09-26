import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/floating_action_button/ds_floating_action_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
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
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.colors.sysOnSurface.withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text("Surface", style: context.texts.titleSmall),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _buildFABs(context),
                  ),
                  const SizedBox(height: 16),
                  Text("Primary", style: context.texts.titleSmall),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _buildFABs(context),
                  ),
                  const SizedBox(height: 16),
                  Text("Secondary", style: context.texts.titleSmall),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _buildFABs(context),
                  ),
                  const SizedBox(height: 16),
                  Text("Tertiary", style: context.texts.titleSmall),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _buildFABs(context),
                  ),
                ],
              ),
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
        backgroundColor: context.colors.sysSurfaceContainerHigh,
        iconColor: context.colors.sysOnSurfaceVariant,
      ),
      DSFloatingActionButton.small(
        onPressed: () {},
        icon: Symbols.edit,
        iconColor: context.colors.sysOnPrimary,
      ),
      DSFloatingActionButton(
        onPressed: () {},
        floatingActionButtonStyle: DSFloatingActionButtonColor.secondary,
        icon: Symbols.edit,
        iconColor: context.colors.sysOnSecondary,
      ),
      DSFloatingActionButton.large(
        onPressed: () {},
        floatingActionButtonStyle: DSFloatingActionButtonColor.tertiary,
        icon: Symbols.edit,
        iconColor: context.colors.sysOnTertiary,
      ),
      DSFloatingActionButton.extended(
        onPressed: () {},
        floatingActionButtonStyle: DSFloatingActionButtonColor.surface,
        icon: Symbols.edit,
        backgroundColor: context.colors.sysSurfaceContainerHigh,
        iconColor: context.colors.sysOnSurfaceVariant,
        label: DSText(
          'Teste',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: context.colors.sysOnSurface,
          ),
        ),
      ),
    ];
  }
}
