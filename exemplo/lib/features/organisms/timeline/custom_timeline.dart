import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/components/organisms/timeline/ds_timeline.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomTimeline extends StatelessWidget {
  const CustomTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DSTimelineModel> itemsTimeLine = [
      DSTimelineModel(
        card: DSCard(
          title: 'Exemplo1',
          descricao: 'subTitle1',
          icon: Symbols.experiment_sharp,
          actionButtons: [
            DSButton.filled(
              buttonWidth: 150,
              onTap: null,
              buttonText: 'teste',
              context: context,
            ),
            DSButton.filled(
              buttonWidth: 150,
              onTap: null,
              buttonText: 'teste2',
              context: context,
            )
          ],
        ),
        icon: Symbols.experiment_sharp,
      ),
      DSTimelineModel(
        card: const DSCard(
          title: 'Exemplo1',
          descricao: 'subTitle1',
          icon: Symbols.experiment_sharp,
        ),
        icon: Symbols.experiment_sharp,
      ),
      DSTimelineModel(
        card: const DSCard(
          title: 'Exemplo1',
          descricao: 'subTitle1',
          icon: Symbols.experiment_sharp,
        ),
        icon: Symbols.experiment_sharp,
      ),
      DSTimelineModel(
        card: DSCard(
          title: 'Exemplo1',
          descricao: 'subTitle1',
          status: 'teste',
          icon: Symbols.experiment_sharp,
          actionButtons: [
            DSButton.filled(
              buttonWidth: 150,
              onTap: null,
              buttonText: 'teste',
              context: context,
            ),
            DSButton.filled(
              buttonWidth: 150,
              onTap: null,
              buttonText: 'teste2',
              context: context,
            )
          ],
        ),
        icon: Symbols.experiment_sharp,
        isFirst: true,
      ),
    ];

    return DSScaffold(body: DSTimeline(itemsDSTimeline: itemsTimeLine));
  }
}
