import 'package:design_system/core/components/molecules/floating_action_button/ds_floating_action_button.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSBottomAppBar extends StatelessWidget {
  const DSBottomAppBar({
    super.key,
    required this.items,
    this.showFab = false,
    this.fab,
    this.spacing = DSSize.small,
  }) : assert(
          !showFab || fab != null,
          'FAB must be provided if showFab is true',
        );

  final List<Widget> items;
  final bool showFab;
  final DSFloatingActionButton? fab;
  final DSSize spacing;

  @override
  Widget build(BuildContext context) {
    final spacingValue = _getSpacing(spacing);

    return Container(
      height: 88,
      color: context.colors.sysSurfaceContainer,
      padding: EdgeInsets.only(
        left: 4,
        right: 16,
        top: 16,
        bottom: 16,
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < items.length; i++) ...[
              items[i],
              if (i < items.length - 1) SizedBox(width: spacingValue),
            ],
            if (showFab && fab != null) ...[
              Spacer(),
              fab!,
            ],
          ],
        ),
      ),
    );
  }

  double _getSpacing(DSSize spacing) {
    switch (spacing) {
      case DSSize.extraSmall:
        return 4.0;
      case DSSize.small:
        return 8.0;
      case DSSize.medium:
        return 16.0;
      case DSSize.large:
        return 24.0;
      case DSSize.extraLarge:
        return 32.0;
    }
  }
}
