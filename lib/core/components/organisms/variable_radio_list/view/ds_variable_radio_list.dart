import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/organisms/variable_radio_list/model/ds_variable_radio_list_model.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSVariableRadioList extends StatelessWidget {
  final List<DSVariableRadioListModel> items;
  final int selectedRadioTile;
  final Function(DSVariableRadioListModel? obj) setSelectedRadioTile;
  final bool ignoreInitialOption;

  const DSVariableRadioList({
    super.key,
    required this.items,
    required this.selectedRadioTile,
    required this.setSelectedRadioTile,
    this.ignoreInitialOption = false,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> wids = [];

    for (int i = ignoreInitialOption ? 1 : 0; i < items.length; i++) {
      wids.add(
        GestureDetector(
          onTap: () => setSelectedRadioTile(items[i]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                value: i,
                activeColor: context.colors.sysPrimary,
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                groupValue: selectedRadioTile,
                onChanged: (val) => setSelectedRadioTile(items[val ?? i]),
              ),
              const SizedBox(width: 3),
              DSText(
                items[i].text ?? '',
                maxFontSize: 16,
                minFontSize: 11,
              ),
            ],
          ),
        ),
      );
    }

    return Column(children: wids);
  }
}
