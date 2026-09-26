import 'package:design_system/core/components/atoms/switch/ds_switch.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _currentValue = true;

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final isDisabled = context.knobs.boolean(
      label: 'Disabled',
      description: 'Disables the switch interaction',
      initial: false,
    );

    final showIcon = context.knobs.boolean(
      label: 'Show Thumb Icon',
      description: 'Shows an icon on the thumb based on state',
      initial: false,
    );

    // Interactive Demo Icon Logic
    final WidgetStateProperty<Icon?>? thumbIcon = showIcon
        ? WidgetStateProperty.resolveWith<Icon?>((states) {
            if (states.contains(WidgetState.selected)) {
              return const Icon(Icons.check);
            }
            return const Icon(Icons.close);
          })
        : null;

    return DSScaffold(
      appBar: AppBar(
        title: Text('Switch Component', style: context.texts.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                child: Center(
                  child: DSSwitch(
                    value: _currentValue,
                    thumbIcon: thumbIcon,
                    onChanged: isDisabled
                        ? null
                        : (value) {
                            setState(() {
                              _currentValue = value;
                            });
                          },
                  ),
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL VERIFICATION BLOCKS =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              // --- 1. Selected Standard ---
              _buildBlockHeader(context, '1. Selected Standard (No Icon)'),
              _buildVisualRow(context, 'Enabled', true,
                  enabled: true, hasIcon: false, stateOverride: null),
              _buildVisualRow(context, 'Hovered', true,
                  enabled: true,
                  hasIcon: false,
                  stateOverride: _VisualState.hovered),
              _buildVisualRow(context, 'Focused', true,
                  enabled: true,
                  hasIcon: false,
                  stateOverride: _VisualState.focused),
              _buildVisualRow(context, 'Pressed', true,
                  enabled: true,
                  hasIcon: false,
                  stateOverride: _VisualState.pressed),
              _buildVisualRow(context, 'Disabled', true,
                  enabled: false, hasIcon: false, stateOverride: null),
              const SizedBox(height: 32),

              // --- 2. Selected with Icon ---
              _buildBlockHeader(context, '2. Selected with Icon'),
              _buildVisualRow(context, 'Enabled', true,
                  enabled: true, hasIcon: true, stateOverride: null),
              _buildVisualRow(context, 'Hovered', true,
                  enabled: true,
                  hasIcon: true,
                  stateOverride: _VisualState.hovered),
              _buildVisualRow(context, 'Focused', true,
                  enabled: true,
                  hasIcon: true,
                  stateOverride: _VisualState.focused),
              _buildVisualRow(context, 'Pressed', true,
                  enabled: true,
                  hasIcon: true,
                  stateOverride: _VisualState.pressed),
              _buildVisualRow(context, 'Disabled', true,
                  enabled: false, hasIcon: true, stateOverride: null),
              const SizedBox(height: 32),

              // --- 3. Unselected Standard ---
              _buildBlockHeader(context, '3. Unselected Standard (No Icon)'),
              _buildVisualRow(context, 'Enabled', false,
                  enabled: true, hasIcon: false, stateOverride: null),
              _buildVisualRow(context, 'Hovered', false,
                  enabled: true,
                  hasIcon: false,
                  stateOverride: _VisualState.hovered),
              _buildVisualRow(context, 'Focused', false,
                  enabled: true,
                  hasIcon: false,
                  stateOverride: _VisualState.focused),
              _buildVisualRow(context, 'Pressed', false,
                  enabled: true,
                  hasIcon: false,
                  stateOverride: _VisualState.pressed),
              _buildVisualRow(context, 'Disabled', false,
                  enabled: false, hasIcon: false, stateOverride: null),
              const SizedBox(height: 32),

              // --- 4. Unselected with Icon ---
              _buildBlockHeader(context, '4. Unselected with Icon'),
              _buildVisualRow(context, 'Enabled', false,
                  enabled: true, hasIcon: true, stateOverride: null),
              _buildVisualRow(context, 'Hovered', false,
                  enabled: true,
                  hasIcon: true,
                  stateOverride: _VisualState.hovered),
              _buildVisualRow(context, 'Focused', false,
                  enabled: true,
                  hasIcon: true,
                  stateOverride: _VisualState.focused),
              _buildVisualRow(context, 'Pressed', false,
                  enabled: true,
                  hasIcon: true,
                  stateOverride: _VisualState.pressed),
              _buildVisualRow(context, 'Disabled', false,
                  enabled: false, hasIcon: true, stateOverride: null),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBlockHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: context.texts.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildVisualRow(
    BuildContext context,
    String label,
    bool value, {
    required bool enabled,
    required bool hasIcon,
    required _VisualState? stateOverride,
  }) {
    // We override colors here to force the visual appearance of states
    // (Hover/Focus/Press) that normally require user interaction.

    WidgetStateProperty<Color?>? thumbColorOverride;
    WidgetStateProperty<Color?>? trackColorOverride;

    if (stateOverride != null) {
      if (value) {
        // --- Selected Overrides ---
        if (stateOverride == _VisualState.hovered ||
            stateOverride == _VisualState.focused ||
            stateOverride == _VisualState.pressed) {
          thumbColorOverride =
              WidgetStateProperty.all(context.colors.sysPrimaryContainer);
          trackColorOverride =
              WidgetStateProperty.all(context.colors.sysPrimary);
        }
      } else {
        // --- Unselected Overrides ---
        if (stateOverride == _VisualState.hovered ||
            stateOverride == _VisualState.focused ||
            stateOverride == _VisualState.pressed) {
          thumbColorOverride =
              WidgetStateProperty.all(context.colors.sysOnSurfaceVariant);
          trackColorOverride = WidgetStateProperty.all(
              context.colors.sysSurfaceContainerHighest);
        }
      }
    }

    final thumbIcon = hasIcon
        ? WidgetStateProperty.resolveWith<Icon?>((states) {
            if (states.contains(WidgetState.selected)) {
              return const Icon(Icons.check);
            }
            return const Icon(Icons.close);
          })
        : null;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: context.texts.bodySmall),
          ),
          DSSwitch(
            value: value,
            thumbIcon: thumbIcon,
            onChanged: enabled ? (val) {} : null,
            thumbColor: thumbColorOverride,
            trackColor: trackColorOverride,
          ),
        ],
      ),
    );
  }
}

enum _VisualState { hovered, focused, pressed }
