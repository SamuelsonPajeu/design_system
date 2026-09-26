import 'package:design_system/core/components/atoms/progress_indicator/ds_progress_indicator.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ProgressIndicatorExample extends StatelessWidget {
  const ProgressIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final isLinear = context.knobs.boolean(
      label: 'Is Linear',
      initial: true,
    );

    final isIndeterminate = context.knobs.boolean(
      label: 'Indeterminate',
      initial: false,
    );

    final progressValue = context.knobs.slider(
      label: 'Progress',
      initial: 0.5,
      min: 0.0,
      max: 1.0,
    );

    final effectiveColor = context.colors.sysPrimary;

    return DSScaffold(
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
                child: Center(
                  child: isLinear
                      ? DSProgressIndicator.linear(
                          value: isIndeterminate ? null : progressValue,
                          color: effectiveColor,
                        )
                      : DSProgressIndicator.circular(
                          value: isIndeterminate ? null : progressValue,
                          color: effectiveColor,
                        ),
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL EXAMPLES =================
              Text('Visual Examples', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              // --- Linear Section ---
              _buildSectionHeader(context, 'Linear'),
              const SizedBox(height: 16),

              Text('Determinate', style: context.texts.labelLarge),
              const SizedBox(height: 8),
              _buildDashedContainer(
                context,
                child: Column(
                  children: [
                    const DSProgressIndicator.linear(value: 0),
                    const SizedBox(height: 32),
                    const DSProgressIndicator.linear(value: 0.2),
                    const SizedBox(height: 32),
                    const DSProgressIndicator.linear(value: 0.4),
                    const SizedBox(height: 32),
                    const DSProgressIndicator.linear(value: 0.6),
                    const SizedBox(height: 32),
                    const DSProgressIndicator.linear(value: 0.8),
                    const SizedBox(height: 32),
                    const DSProgressIndicator.linear(value: 1.0),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              Text('Indeterminate', style: context.texts.labelLarge),
              const SizedBox(height: 8),
              _buildDashedContainer(
                context,
                child: const Column(
                  children: [
                    DSProgressIndicator.linear(),
                    SizedBox(height: 32),
                    DSProgressIndicator.linear(),
                    SizedBox(height: 32),
                    DSProgressIndicator.linear(),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // --- Circular Section ---
              _buildSectionHeader(context, 'Circular'),
              const SizedBox(height: 16),

              Text('Determinate', style: context.texts.labelLarge),
              const SizedBox(height: 8),
              _buildDashedContainer(
                context,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DSProgressIndicator.circular(value: 0),
                    DSProgressIndicator.circular(value: 0.20),
                    DSProgressIndicator.circular(value: 0.40),
                    DSProgressIndicator.circular(value: 0.60),
                    DSProgressIndicator.circular(
                      value: 0.80,
                      trackGap: 4,
                    ),
                    DSProgressIndicator.circular(value: 1.0),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              Text('Indeterminate', style: context.texts.labelLarge),
              const SizedBox(height: 8),
              _buildDashedContainer(
                context,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DSProgressIndicator.circular(),
                    DSProgressIndicator.circular(),
                    DSProgressIndicator.circular(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Center(
      child: Text(
        title,
        style: context.texts.titleLarge.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildDashedContainer(BuildContext context, {required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: context.colors.sysSurfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.colors.sysOutlineVariant,
          style: BorderStyle.solid,
        ),
      ),
      child: child,
    );
  }
}
