import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class DividerExample extends StatelessWidget {
  const DividerExample({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final thickness = context.knobs.slider(
      label: 'Thickness',
      initial: 1.0,
      min: 1.0,
      max: 10.0,
    );

    final indent = context.knobs.slider(
      label: 'Indent',
      initial: 0.0,
      min: 0.0,
      max: 50.0,
    );

    final endIndent = context.knobs.slider(
      label: 'End Indent',
      initial: 0.0,
      min: 0.0,
      max: 50.0,
    );

    final useCustomColor = context.knobs.boolean(
      label: 'Use Primary Color',
      initial: false,
    );

    final customColor = useCustomColor ? context.colors.sysPrimary : null;

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
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colors.sysOutlineVariant),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text('Content Above', style: context.texts.bodyMedium),
                    DSDivider(
                      thickness: thickness,
                      indent: indent,
                      endIndent: endIndent,
                      color: customColor,
                    ),
                    Text('Content Below', style: context.texts.bodyMedium),
                  ],
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= STATIC STATES =================
              Text('Visual Examples', style: context.texts.titleMedium),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: context.colors.sysSurfaceContainerLow,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: context.colors.sysOutlineVariant),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // --- Horizontal Section ---
                    Text('Horizontal', style: context.texts.titleSmall),
                    const SizedBox(height: 16),

                    // Full Width
                    const DSDivider(),
                    const SizedBox(height: 16),

                    // Indented Start
                    const DSDivider(indent: 16),
                    const SizedBox(height: 16),

                    // Indented Start & End
                    const DSDivider(indent: 16, endIndent: 16),
                    const SizedBox(height: 24),

                    // Subheader Example
                    const DSDivider(),
                    Text('Subheader', style: context.texts.labelLarge),

                    const SizedBox(height: 40),

                    // --- Vertical Section ---
                    Text('Vertical', style: context.texts.titleSmall),
                    const SizedBox(height: 16),

                    // Vertical Dividers Row
                    SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          const DSVerticalDivider(),
                          const SizedBox(width: 20),
                          const DSVerticalDivider(
                            indent: 20,
                          ),
                          const SizedBox(width: 20),
                          const DSVerticalDivider(indent: 20, endIndent: 20),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: context.colors.sysOutlineVariant
                                      .withValues(alpha: 0.5),
                                ),
                              ),
                              child: const Text('Content'),
                            ),
                          ),
                          const DSVerticalDivider(),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: context.colors.sysOutlineVariant
                                      .withValues(alpha: 0.5),
                                ),
                              ),
                              child: const Text('Content'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
