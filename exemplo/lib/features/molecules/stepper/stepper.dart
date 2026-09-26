import 'package:design_system/core/components/molecules/stepper/ds_stepper.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';

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
    final buttonAlignment = context.knobs.options<DSStepperButtonAlignment>(
      label: 'Button Alignment',
      initial: DSStepperButtonAlignment.right,
      options: const [
        Option(label: 'Left', value: DSStepperButtonAlignment.left),
        Option(label: 'Right', value: DSStepperButtonAlignment.right),
      ],
    );

    return Container(
      color: context.colors.sysSurface,
      child: DSStepper(
        index: _index,
        type: context.knobs.boolean(label: 'Vertical?', initial: true)
            ? StepperType.vertical
            : StepperType.horizontal,
        buttonAlignment: buttonAlignment,
        buttonCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        buttonContinue: () {
          if (_index <= 1) {
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
            title: 'Name of step 1',
            subTitle: 'Optional',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Form Example',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Content Example',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Steppers display progress through a sequence of logical and numbered steps. They may also be used for navigation.',
                ),
                const SizedBox(height: 16),
                Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('Content placeholder'),
                  ),
                ),
              ],
            ),
          ),
          DSStepperModel(
            title: 'Name of step 2',
            subTitle: 'Optional',
            sectionTitle: 'Section Title',
            sectionSubTitle: 'Section Subtitle',
            description:
                'Steppers display progress through a sequence of logical and numbered steps. They may also be used for navigation.',
          ),
          DSStepperModel(
            title: 'Name of step 3',
            subTitle: 'Optional',
          ),
        ],
      ),
    );
  }
}
