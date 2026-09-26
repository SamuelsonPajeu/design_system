import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum _DensityOption {
  standard('0 (Standard)', VisualDensity.standard),
  minus2('-2', VisualDensity(horizontal: 0, vertical: -2)),
  minus4('-4', VisualDensity(horizontal: 0, vertical: -4));

  const _DensityOption(this.label, this.value);
  final String label;
  final VisualDensity value;
}

enum _AlignOption {
  left('Left', Alignment.bottomLeft),
  center('Center', Alignment.bottomCenter),
  right('Right', Alignment.bottomRight);

  const _AlignOption(this.label, this.value);
  final String label;
  final Alignment value;
}

class MenuExample extends StatefulWidget {
  const MenuExample({super.key});

  @override
  State<MenuExample> createState() => _MenuExampleState();
}

class _MenuExampleState extends State<MenuExample> {
  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final density = context.knobs.options(
      label: 'Visual Density',
      description: 'Adjusts vertical compactness of menu items',
      initial: _DensityOption.standard,
      options: _DensityOption.values
          .map((e) => Option(label: e.label, value: e))
          .toList(),
    );

    final showPrefix = context.knobs.boolean(
        label: 'Show Menu Item Prefix',
        initial: true,
        description: 'Shows a prefix icon on the menu item');

    final showSuffix = context.knobs.boolean(
        label: 'Show Menu Item Suffix',
        initial: false,
        description: 'Shows a suffix icon on the menu item');

    final openDialog = context.knobs.boolean(
        label: 'Open Dialog on Press (only for Anchor)',
        initial: false,
        description:
            'Opens a dialog on menu item press. Affects only Anchor Menu');

    final anchorAlign = context.knobs.options(
      label: 'Anchor Alignment',
      description:
          'Aligns the menu relative to the button. Affects only Anchor Menu',
      initial: _AlignOption.left,
      options: _AlignOption.values
          .map((e) => Option(label: e.label, value: e))
          .toList(),
    );

    return DSScaffold(
      appBar: AppBar(
        title: Text('Menu Components', style: context.texts.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================= INTERACTIVE DEMOS =================
              Text('Interactive Demos', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              Text('1. Anchor Menu', style: context.texts.labelLarge),
              const SizedBox(height: 16),
              Center(
                child: _buildAnchorDemo(
                  context,
                  density.value,
                  showPrefix,
                  showSuffix,
                  openDialog,
                  anchorAlign.value,
                ),
              ),

              const SizedBox(height: 32),

              Text('2. Dropdown Menu', style: context.texts.labelLarge),
              const SizedBox(height: 16),
              Center(
                child: _buildDropdownDemo(
                  context,
                  density.value,
                  showPrefix,
                  showSuffix,
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL VERIFICATION =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              Text('1. Anchor Menus (Densities: 0, -2, -4)',
                  style: context.texts.titleSmall),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStaticAnchor(
                        context, VisualDensity.standard, 'Density 0'),
                    const SizedBox(width: 32),
                    _buildStaticAnchor(context,
                        const VisualDensity(vertical: -2), 'Density -2'),
                    const SizedBox(width: 32),
                    _buildStaticAnchor(context,
                        const VisualDensity(vertical: -4), 'Density -4'),
                  ],
                ),
              ),

              const SizedBox(height: 48),

              Text('2. Dropdown Menus', style: context.texts.titleSmall),
              const SizedBox(height: 16),
              Wrap(
                spacing: 24,
                runSpacing: 24,
                children: [
                  _buildStaticDropdown(
                    context,
                    label: 'Clean',
                    hasPrefixInput: false,
                    itemPrefix: null,
                    itemSuffix: null,
                  ),
                  _buildStaticDropdown(
                    context,
                    label: 'Prefix',
                    hasPrefixInput: true,
                    itemPrefix: const Icon(Symbols.cut, size: 16),
                    itemSuffix: null,
                  ),
                  _buildStaticDropdown(
                    context,
                    label: 'Prefix + Suffix',
                    hasPrefixInput: true,
                    itemPrefix: const Icon(Icons.star, size: 18),
                    itemSuffix: const Icon(Icons.info, size: 18),
                  ),
                ],
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  // --- Interactive Demos ---

  Widget _buildAnchorDemo(
    BuildContext context,
    VisualDensity density,
    bool showPrefix,
    bool showSuffix,
    bool openDialog,
    Alignment alignment,
  ) {
    return DSMenu.anchor(
      visualDensity: density,
      menuAlignment: alignment,
      menuChildren: List.generate(5, (index) {
        return DSMenuItemButton(
          onPressed: () {
            if (openDialog) {
              showDialog(
                context: context,
                builder: (c) => AlertDialog(
                  title: Text('Item $index clicked'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(c),
                        child: const Text('OK'))
                  ],
                ),
              );
            }
          },
          leadingIcon: showPrefix ? const Icon(Icons.edit) : null,
          trailingIcon: showSuffix ? const Icon(Icons.arrow_right) : null,
          child: Text('Menu Item $index'),
        );
      }),
      builder: (context, controller, child) {
        return FilledButton.icon(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: const Icon(Icons.menu),
          label: const Text('Open Anchor Menu'),
        );
      },
    );
  }

  Widget _buildDropdownDemo(
    BuildContext context,
    VisualDensity density,
    bool showPrefix,
    bool showSuffix,
  ) {
    return SizedBox(
      child: DSMenu<String>.dropdown(
        width: 300,
        visualDensity: density,
        label: const Text('Select Option'),
        hintText: 'Choose one...',
        leadingIcon: const Icon(Icons.search),
        onSelected: (val) {
          setState(() {});
        },
        dropdownMenuEntries: List.generate(5, (index) {
          return DSDropdownMenuEntry(
            value: 'Option $index',
            label: 'Option $index',
            leadingIcon: showPrefix ? const Icon(Icons.check) : null,
            trailingIcon: showSuffix ? const Icon(Icons.info_outline) : null,
          );
        }),
      ),
    );
  }

  // --- Visual Verification Helpers ---

  Widget _buildStaticAnchor(
      BuildContext context, VisualDensity density, String label) {
    return Column(
      children: [
        Text(label, style: context.texts.labelSmall),
        const SizedBox(height: 8),
        DSMenu.anchor(
          visualDensity: density,
          menuChildren: List.generate(10, (index) {
            return DSMenuItemButton(
              onPressed: () {},
              leadingIcon: const Icon(Icons.circle, size: 8),
              child: Text('Item ${index + 1}'),
            );
          }),
          builder: (context, controller, child) {
            return OutlinedButton(
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              child: const Text('Click Me'),
            );
          },
        ),
      ],
    );
  }

  Widget _buildStaticDropdown(
    BuildContext context, {
    required String label,
    required bool hasPrefixInput,
    required Widget? itemPrefix,
    required Widget? itemSuffix,
  }) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: context.texts.labelSmall),
          const SizedBox(height: 8),
          DSMenu<String>.dropdown(
            label: const Text('Label'),
            leadingIcon: hasPrefixInput ? const Icon(Icons.search) : null,
            dropdownMenuEntries: List.generate(4, (index) {
              return DSDropdownMenuEntry(
                value: 'Val $index',
                label: 'Menu Item $index',
                leadingIcon: itemPrefix,
                trailingIcon: itemSuffix,
              );
            }),
          ),
        ],
      ),
    );
  }
}
