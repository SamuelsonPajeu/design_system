import 'package:design_system/core/components/atoms/radio/ds_radio.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

enum RadioValue { option1, option2, option3, option4, option5 }

class _RadioExampleState extends State<RadioExample> {
  RadioValue? _groupValue = RadioValue.option1;

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final isDisabled = context.knobs.boolean(
      label: 'Disabled',
      initial: false,
    );

    return DSScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ================= INTERACTIVE DEMO =================
              Text('Interactive Demo', style: context.texts.titleMedium),
              const SizedBox(height: 16),
              DSRadioGroup<RadioValue>(
                groupValue: _groupValue,
                onChanged: isDisabled
                    ? (val) {}
                    : (RadioValue? newValue) {
                        setState(() {
                          _groupValue = newValue;
                        });
                      },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DSRadio<RadioValue>(
                          value: RadioValue.values[i],
                          enabled: !isDisabled,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),
              // ================= VISUAL STATE MATRIX =================
              Text('Visual State Matrix', style: context.texts.titleMedium),
              const SizedBox(height: 24),
              _buildStateGrid(context),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStateGrid(BuildContext context) {
    final primary = context.colors.sysPrimary;
    final splashColor = primary;

    Widget buildRow({
      required bool isSelected,
    }) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 1. Enabled
            _StaticRadio(selected: isSelected, enabled: true),
            // 2. Disabled
            _StaticRadio(selected: isSelected, enabled: false),
            // 3. Hovered (Simulated)
            _SimulatedSplashRadio(
              selected: isSelected,
              splashColor: primary.withValues(alpha: 0.08),
            ),
            // 4. Focused (Simulated)
            _SimulatedSplashRadio(
              selected: isSelected,
              splashColor: primary.withValues(alpha: 0.12),
            ),
            // 5. Pressed (Simulated)
            _SimulatedSplashRadio(
              selected: isSelected,
              splashColor: splashColor.withValues(alpha: 0.12),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildHeader('Enabled', context),
              _buildHeader('Disabled', context),
              _buildHeader('Hovered', context),
              _buildHeader('Focused', context),
              _buildHeader('Pressed', context),
            ],
          ),
        ),
        // Selected Row
        buildRow(isSelected: true),
        const SizedBox(height: 16),
        // Unselected Row
        buildRow(isSelected: false),
      ],
    );
  }

  Widget _buildHeader(String text, BuildContext context) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: context.texts.labelSmall.copyWith(
          color: context.colors.sysOnSurfaceVariant,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/// Helper for a non-interactive radio visual
class _StaticRadio extends StatelessWidget {
  const _StaticRadio({required this.selected, required this.enabled});
  final bool selected;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return DSRadioGroup<bool>(
      groupValue: selected ? true : null,
      onChanged: enabled ? (val) {} : (val) {},
      child: DSRadio<bool>(
        value: true,
        enabled: enabled,
      ),
    );
  }
}

/// Helper for simulated splash states
class _SimulatedSplashRadio extends StatelessWidget {
  const _SimulatedSplashRadio({
    required this.selected,
    required this.splashColor,
    this.radius = 20.0,
  });

  final bool selected;
  final Color splashColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: radius * 2,
          height: radius * 2,
          decoration: BoxDecoration(
            color: splashColor,
            shape: BoxShape.circle,
          ),
        ),
        IgnorePointer(
          child: _StaticRadio(selected: selected, enabled: true),
        ),
      ],
    );
  }
}
