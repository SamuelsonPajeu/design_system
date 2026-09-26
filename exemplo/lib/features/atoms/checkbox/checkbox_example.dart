import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool? _isChecked = true;

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final tristate = context.knobs.boolean(
      label: 'Tristate',
      description: 'Allows the checkbox to have a null (dash) state.',
      initial: false,
    );
    final isError = context.knobs.boolean(
      label: 'Error State',
      description: 'Applies error colors to the checkbox.',
      initial: false,
    );
    final isDisabled = context.knobs.boolean(
      label: 'Disabled',
      description: 'Disables interaction.',
      initial: false,
    );

    if (!tristate && _isChecked == null) {
      _isChecked = false;
    }

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DSCheckbox(
                    value: _isChecked,
                    tristate: tristate,
                    isError: isError,
                    onChanged: isDisabled
                        ? null
                        : (bool? newValue) {
                            setState(() {
                              _isChecked = newValue;
                            });
                          },
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _getLabelText(_isChecked),
                    style: context.texts.bodyLarge.copyWith(
                      color: isDisabled
                          ? context.colors.sysOnSurface.withValues(alpha: 0.38)
                          : context.colors.sysOnSurface,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 32),
              // ================= STATIC GRID =================
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

  String _getLabelText(bool? value) {
    if (value == null) return 'Value: null (Mixed)';
    return value ? 'Value: true' : 'Value: false';
  }

  Widget _buildStateGrid(BuildContext context) {
    final isLightMode = Theme.of(context).brightness == Brightness.light;

    final primary = context.colors.sysPrimary;
    final error = context.colors.sysError;
    final onPrimary = context.colors.sysOnPrimary;

    Widget buildRow({
      required bool? value,
      required bool isError,
      bool tristate = false,
    }) {
      final baseColor = isError ? error : primary;
      final splashColor = isError ? error : onPrimary;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 1. Enabled
            DSCheckbox(
              value: value,
              tristate: tristate,
              isError: isError,
              onChanged: (v) {},
            ),
            // 2. Disabled
            DSCheckbox(
              value: value,
              tristate: tristate,
              isError: isError,
              onChanged: null,
            ),
            // 3. Hovered (Simulated Permanent)
            _SimulatedSplashCheckbox(
              value: value,
              tristate: tristate,
              isError: isError,
              splashColor: baseColor.withValues(alpha: 0.08),
            ),
            // 4. Focused (Simulated Permanent)
            _SimulatedSplashCheckbox(
              value: value,
              tristate: tristate,
              isError: isError,
              splashColor: baseColor.withValues(alpha: 0.12),
            ),
            // 5. Pressed (Simulated Permanent)
            _SimulatedSplashCheckbox(
              value: value,
              tristate: tristate,
              isError: isError,
              splashColor: isLightMode
                  ? (value == false && isError == false)
                      ? baseColor.withValues(alpha: 0.12)
                      : splashColor.withValues(alpha: 0.2)
                  : baseColor.withValues(alpha: 0.12),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildHeader('Enabled', context),
              _buildHeader('Disabled', context),
              _buildHeader('Hovered', context),
              _buildHeader('Focused', context),
              _buildHeader('Pressed', context),
            ],
          ),
        ),

        // --- Standard Rows ---
        buildRow(value: true, isError: false),
        buildRow(value: null, isError: false, tristate: true),
        buildRow(value: false, isError: false),

        const SizedBox(height: 16),

        // --- Error Rows ---
        buildRow(value: true, isError: true),
        buildRow(value: null, isError: true, tristate: true),
        buildRow(value: false, isError: true),
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

/// Helper to render a Checkbox with a permanently visible splash circle behind it.
class _SimulatedSplashCheckbox extends StatelessWidget {
  const _SimulatedSplashCheckbox({
    required this.value,
    required this.splashColor,
    this.isError = false,
    this.tristate = false,
    this.radius = 20.0,
  });

  final bool? value;
  final bool isError;
  final bool tristate;
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
          child: DSCheckbox(
            value: value,
            tristate: tristate,
            isError: isError,
            onChanged: (v) {},
          ),
        ),
      ],
    );
  }
}
