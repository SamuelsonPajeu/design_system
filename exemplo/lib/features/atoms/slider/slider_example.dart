import 'package:design_system/core/components/atoms/slider/ds_range_slider.dart';
import 'package:design_system/core/components/atoms/slider/ds_slider.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentValue = 50.0;
  final double _secondaryValue = 70.0;
  RangeValues _currentRangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final isDisabled = context.knobs.boolean(
      label: 'Disabled',
      description: 'Disables the slider interaction',
      initial: false,
    );

    final showSecondary = context.knobs.boolean(
      label: 'Show Secondary Track',
      description: 'Displays a secondary track value behind the main thumb',
      initial: false,
    );

    final showDiscrete = context.knobs.boolean(
      label: 'Discrete',
      description: 'Enables discrete divisions on the track',
      initial: false,
    );

    final showValueIndicator = context.knobs.options(
      label: 'Show Value Indicator',
      description: 'Determines when the value label is shown above the thumb',
      initial: ShowValueIndicator.onDrag,
      options: const [
        Option(
          label: 'On drag',
          value: ShowValueIndicator.onDrag,
        ),
        Option(
          label: 'Only for Discrete',
          value: ShowValueIndicator.onlyForDiscrete,
        ),
        Option(
          label: 'Only for Continuous',
          value: ShowValueIndicator.onlyForContinuous,
        ),
        Option(
          label: 'Always visible',
          value: ShowValueIndicator.alwaysVisible,
        ),
        Option(
          label: 'Never',
          value: ShowValueIndicator.never,
        ),
      ],
    );

    final divisions = showDiscrete ? 10 : null;

    final bool shouldShowLabel =
        showDiscrete || showValueIndicator != ShowValueIndicator.never;

    return DSScaffold(
      appBar: AppBar(
        title: Text('Slider Component', style: context.texts.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================= INTERACTIVE DEMO =================
              Text('Interactive Demo', style: context.texts.titleMedium),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colors.sysOutlineVariant),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    // Single Slider Demo
                    Text('Value: ${_currentValue.round()}',
                        style: context.texts.labelLarge),
                    DSSlider(
                      key: ValueKey('slider-$showValueIndicator-$showDiscrete'),
                      value: _currentValue,
                      min: 0.0,
                      max: 100.0,
                      divisions: divisions,
                      label:
                          shouldShowLabel ? '${_currentValue.round()}' : null,
                      showValueIndicator: showValueIndicator,
                      secondaryTrackValue:
                          showSecondary ? _secondaryValue : null,
                      onChanged: isDisabled
                          ? null
                          : (value) {
                              setState(() {
                                _currentValue = value;
                              });
                            },
                    ),
                    const SizedBox(height: 24),

                    // Range Slider Demo
                    Text(
                        'Range: ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
                        style: context.texts.labelLarge),
                    DSRangeSlider(
                      key: ValueKey('range-$showValueIndicator-$showDiscrete'),
                      values: _currentRangeValues,
                      min: 0.0,
                      max: 100.0,
                      divisions: divisions,
                      labels: shouldShowLabel
                          ? RangeLabels('${_currentRangeValues.start.round()}',
                              '${_currentRangeValues.end.round()}')
                          : null,
                      showValueIndicator: showValueIndicator,
                      onChanged: isDisabled
                          ? null
                          : (values) {
                              setState(() {
                                _currentRangeValues = values;
                              });
                            },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL VERIFICATION BLOCKS =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              _buildSectionHeader(context, '1. Continuous Block'),
              ..._buildBlockLines(context, _SliderType.continuous),
              const Divider(height: 60),

              _buildSectionHeader(context, '2. Discrete Block'),
              ..._buildBlockLines(context, _SliderType.discrete),
              const Divider(height: 60),

              _buildSectionHeader(context, '3. Range Block'),
              ..._buildRangeBlockLines(context),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: context.texts.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  List<Widget> _buildBlockLines(BuildContext context, _SliderType type) {
    return [
      _buildRow(context, type, 0.0,
          enabled: true,
          showTooltip: false,
          title: '1. Enabled 0% (No Tooltip)'),
      _buildRow(context, type, 0.5,
          enabled: true,
          showTooltip: false,
          title: '2. Enabled 50% (No Tooltip)'),
      _buildRow(context, type, 1.0,
          enabled: true,
          showTooltip: false,
          title: '3. Enabled 100% (No Tooltip)'),
      _buildRow(context, type, 0.0,
          enabled: true,
          showTooltip: true,
          title: '4. Enabled 0% (With Tooltip)'),
      _buildRow(context, type, 0.5,
          enabled: true,
          showTooltip: true,
          title: '5. Enabled 50% (With Tooltip)'),
      _buildRow(context, type, 1.0,
          enabled: true,
          showTooltip: true,
          title: '6. Enabled 100% (With Tooltip)'),
      _buildRow(context, type, 0.0,
          enabled: false, showTooltip: false, title: '7. Disabled 0%'),
      _buildRow(context, type, 0.5,
          enabled: false, showTooltip: false, title: '8. Disabled 50%'),
      _buildRow(context, type, 1.0,
          enabled: false, showTooltip: false, title: '9. Disabled 100%'),
    ];
  }

  List<Widget> _buildRangeBlockLines(BuildContext context) {
    return [
      _buildRangeRow(context, 0.0,
          enabled: true,
          showTooltip: false,
          title: '1. Enabled 0% (No Tooltip)'),
      _buildRangeRow(context, 0.5,
          enabled: true,
          showTooltip: false,
          title: '2. Enabled 25%-50% (No Tooltip)'),
      _buildRangeRow(context, 1.0,
          enabled: true,
          showTooltip: false,
          title: '3. Enabled 50%-100% (No Tooltip)'),
      _buildRangeRow(context, 0.0,
          enabled: true,
          showTooltip: true,
          title: '4. Enabled 0% (With Tooltip)'),
      _buildRangeRow(context, 0.5,
          enabled: true,
          showTooltip: true,
          title: '5. Enabled 25%-50% (With Tooltip)'),
      _buildRangeRow(context, 1.0,
          enabled: true,
          showTooltip: true,
          title: '6. Enabled 50%-100% (With Tooltip)'),
      _buildRangeRow(context, 0.0,
          enabled: false, showTooltip: false, title: '7. Disabled 0%'),
      _buildRangeRow(context, 0.5,
          enabled: false, showTooltip: false, title: '8. Disabled 25%-50%'),
      _buildRangeRow(context, 1.0,
          enabled: false, showTooltip: false, title: '9. Disabled 50%-100%'),
    ];
  }

  Widget _buildRow(BuildContext context, _SliderType type, double percentValue,
      {required bool enabled,
      required bool showTooltip,
      required String title}) {
    double min = 0.0;
    double max = 100.0;
    double actualValue = percentValue * 100.0;
    int? divisions = (type == _SliderType.discrete) ? 10 : null;

    final String? label = showTooltip ? '${actualValue.round()}' : null;

    final onChanged = enabled ? (double val) {} : null;

    Widget slider = DSSlider(
      value: actualValue,
      min: min,
      max: max,
      divisions: divisions,
      label: label,
      onChanged: onChanged,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.texts.bodySmall),
          const SizedBox(height: 4),
          slider,
        ],
      ),
    );
  }

  Widget _buildRangeRow(BuildContext context, double percentValue,
      {required bool enabled,
      required bool showTooltip,
      required String title}) {
    final double endValue = percentValue * 100.0;
    final rangeValues = RangeValues(endValue / 2, endValue);

    final labels = showTooltip
        ? RangeLabels('${(endValue / 2).round()}', '${endValue.round()}')
        : null;
    final onChanged = enabled ? (RangeValues val) {} : null;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: context.texts.bodySmall
                  .copyWith(color: context.colors.sysOutline)),
          const SizedBox(height: 4),
          DSRangeSlider(
            values: rangeValues,
            min: 0.0,
            max: 100.0,
            labels: labels,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

enum _SliderType {
  continuous,
  discrete,
}
