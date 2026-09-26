import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:flutter/widgets.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

extension DSSizeKnobExtension on KnobsBuilder {
  DSSize sliderDSSize({
    required String label,
    DSSize initial = DSSize.medium,
    DSSize? min,
    DSSize? max,
  }) {
    final minIndex = min?.index ?? 0;
    final maxIndex = max?.index ?? DSSize.values.length - 1;
    final effectiveMin = minIndex;
    final effectiveMax = maxIndex < minIndex ? minIndex : maxIndex;

    final divisions = effectiveMax - effectiveMin;

    final index = sliderInt(
      label: label,
      initial: initial.index,
      min: effectiveMin,
      max: effectiveMax,
      divisions: divisions,
    );
    return DSSize.values[index];
  }
}

extension DSSizeKnobContextExtension on BuildContext {
  DSSize knobSliderDSSize({
    required String label,
    DSSize initial = DSSize.medium,
    DSSize? min,
    DSSize? max,
  }) {
    return knobs.sliderDSSize(
      label: label,
      initial: initial,
      min: min,
      max: max,
    );
  }
}
