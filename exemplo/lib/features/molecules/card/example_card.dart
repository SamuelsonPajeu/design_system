import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ExampleCard extends StatelessWidget {
  const ExampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DSCard(
                  title: context.knobs.nullable.text(
                    label: 'Titulo - Menu',
                    initial: 'Menu Item',
                  ),
                  descricao: context.knobs.nullable.text(
                    label: 'Descrição',
                    initial: 'Descrição do card',
                  ),
                  status: context.knobs.nullable.text(
                    label: 'Status',
                    initial: 'Ativo',
                  ),
                  icon: context.knobs.nullable.options(
                    label: 'Icon',
                    initial: Icons.info,
                    enabled: true,
                  ),
                  popupMenuButton: context.knobs.nullable.options(
                    label: 'Popup Menu Button',
                    initial: PopupMenuButton(
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 'action1',
                          child: Text('Action 1'),
                        ),
                        const PopupMenuItem(
                          value: 'action2',
                          child: Text('Action 2'),
                        ),
                      ],
                    ),
                    enabled: true,
                  ),
                  actionButtons: context.knobs.nullable.options(
                    label: 'Ações',
                    initial: [
                      DSButton(
                        onTap: () async {},
                        buttonText: 'Ação 1',
                        buttonWidth: 200,
                      ),
                      DSButton(
                        onTap: () async {},
                        buttonText: 'Ação 2',
                        buttonWidth: 200,
                      ),
                    ],
                  ),
                ),
                DSCard.button(
                  onTap: () {},
                  title: 'Card Clicavel',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
