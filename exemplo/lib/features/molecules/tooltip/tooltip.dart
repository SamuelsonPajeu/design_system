import 'package:design_system/core/components/molecules/app_bar/ds_app_bar.dart';
import 'package:design_system/core/components/molecules/tooltip/ds_tooltip.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';

class CustomTooltip extends StatelessWidget {
  const CustomTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
      appBar: DSAppBar(text: 'Tooltip', context: context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "RICH TOOLTIP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DSTooltip.rich(
              text: 'TITLE',
              textTooltip: 'Supporting text Body text string goes here...',
              small: false,
              actions: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(onPressed: () {}, child: const Text("Action")),
                  TextButton(onPressed: () {}, child: const Text("Action")),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const DSTooltip.rich(
              text: 'TITLE',
              textTooltip: 'Supporting text Body text string goes here...',
              small: true,
            ),
            const SizedBox(height: 30),
            const Text(
              "PLAIN TOOLTIP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const DSTooltip(
              text: "Supporting text",
              textTooltip: "Supporting text",
            ),
            const SizedBox(height: 10),
            DSTooltip(
              text: "Supporting text",
              textTooltip: "Supporting text",
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 10),
            DSTooltip(
              text: "Supporting text Body text string goes here...",
              textTooltip: "Supporting text Body text string goes here...",
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
