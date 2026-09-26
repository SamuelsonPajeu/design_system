import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return DSScaffold(
        body: const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DSText('Scaffold'),
        ],
      ),
    ));
  }
}
