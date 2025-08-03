import 'package:design_system/core/components/atoms/loading/ds_loading.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DSLoading(
        color: context.knobs.options(
          label: 'Cor sim cor Não',
          initial: Colors.red,
          options: [
            const Option(
              label: 'Vermelho',
              value: Colors.red,
            ),
            const Option(
              label: 'Verde',
              value: Colors.green,
            ),
            const Option(
              label: 'Azul',
              value: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
