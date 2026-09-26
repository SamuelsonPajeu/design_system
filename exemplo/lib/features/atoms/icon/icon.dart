import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.knobs.slider(
      label: 'Size',
      initial: 20,
      min: 8,
      max: 100,
    );

    final fill = context.knobs.slider(
      label: 'Fill',
      initial: 0,
      min: 0,
      max: 1,
    );

    final weight = context.knobs.slider(
      label: 'Weight',
      initial: 400,
      min: 100,
      max: 700,
    );

    final grade = context.knobs.slider(
      label: 'Grade',
      initial: 0,
      min: -25,
      max: 200,
    );

    final opticalSize = context.knobs.slider(
      label: 'Optical Size',
      initial: 48,
      min: 20,
      max: 48,
    );

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DSIcon.custom(
            icon: Symbols.check_circle,
            size: size,
            fill: fill,
            weight: weight,
            grade: grade,
            opticalSize: opticalSize,
          ),
          SizedBox(
            height: 10,
          ),
          DSIcon.custom(
            icon: Symbols.abc,
            size: size,
            fill: fill,
            weight: weight,
            grade: grade,
            opticalSize: opticalSize,
          ),
          SizedBox(
            height: 10,
          ),
          DSIcon.custom(
            icon: Symbols.people,
            size: size,
            fill: fill,
            weight: weight,
            grade: grade,
            opticalSize: opticalSize,
          )
        ],
      ),
    ));
  }
}
