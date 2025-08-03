import 'package:design_system/core/components/molecules/stepper/ds_stepper.dart';

import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DSStepper(
        index: _index,
        type: context.knobs.boolean(label: 'Vertical?', initial: true)
            ? StepperType.vertical
            : StepperType.horizontal,
        buttonCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        buttonContinue: () {
          if (_index <= 0) {
            setState(() {
              _index += 1;
            });
          }
        },
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        steps: <DSStepperModel>[
          DSStepperModel(
            title: 'Teste 1',
            subTitle: 'Descrição do teste 1',
          ),
          DSStepperModel(
            title: 'Teste 2',
            subTitle: 'Descrição do teste 2',
          ),
          DSStepperModel(
            title: 'Teste 3',
            subTitle: 'Descrição do teste 3',
          )
        ]);
  }
}
