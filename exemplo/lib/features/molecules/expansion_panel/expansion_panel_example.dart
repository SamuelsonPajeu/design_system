import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/expansion_panel/ds_expansion_panel.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ExpansionPanelExample extends StatefulWidget {
  const ExpansionPanelExample({super.key});

  @override
  State<ExpansionPanelExample> createState() => _ExpansionPanelExampleState();
}

class _ExpansionPanelExampleState extends State<ExpansionPanelExample> {
  final Set<int> _selectedItems = {};
  final Set<int> _expandedIndices = {0};

  void _onExpansionChanged(int index, bool isOpen) {
    setState(() {
      if (isOpen) {
        _expandedIndices.add(index);
      } else {
        _expandedIndices.remove(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final showCheckbox = context.knobs.boolean(
      label: 'Show Checkbox',
      initial: true,
    );
    final enabled = context.knobs.boolean(
      label: 'Enabled',
      initial: true,
    );
    final showHeadingTrailingActions = context.knobs.boolean(
      label: 'Show Heading Trailing Actions',
      initial: true,
    );
    final showNormalTrailingActions = context.knobs.boolean(
      label: 'Show Normal Panel Trailing Icons',
      initial: true,
    );
    final showLeadingIcon = context.knobs.boolean(
      label: 'Show Normal Panel Leading Icon',
      initial: false,
    );
    final showDivider = context.knobs.boolean(
      label: 'Show Expanded Divider',
      initial: true,
    );
    final isGrouped = context.knobs.boolean(
      label: 'Group Panels',
      initial: false,
    );
    final panelCount = context.knobs.sliderInt(
      label: 'Number of Normal Panels',
      initial: 3,
      min: 1,
      max: 10,
    );

    return DSScaffold(
      appBar: AppBar(title: const Text('DSExpansionPanel')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 16),
            Text(
              'Multiple Expansion: You can keep multiple panels open at once.',
              style: context.texts.bodyMedium
                  .copyWith(color: context.colors.sysOnSurfaceVariant),
            ),
            const SizedBox(height: 24),
            Column(
              children: [
                // 1. Heading Panel (Index 0)
                Padding(
                  padding: EdgeInsets.only(bottom: isGrouped ? 0 : 4.0),
                  child: DSExpansionPanel(
                    isHeading: true,
                    enabled: enabled,
                    showCheckbox: showCheckbox,
                    showDivider: showDivider,
                    isExpanded: _expandedIndices.contains(0),
                    onExpansionChanged: (isOpen) =>
                        _onExpansionChanged(0, isOpen),
                    isChecked: _selectedItems.contains(0),
                    onChecked: (v) => _toggleSelection(0, v),
                    title: const Text('Expansion panel title'),
                    isGrouped: isGrouped,
                    isFirst: true,
                    isLast: false,
                    trailingActions: showHeadingTrailingActions
                        ? [
                            TextButton.icon(
                              onPressed: enabled ? () {} : null,
                              icon: DSIcon.small(icon: Icons.add),
                              label: const Text('Adicionar novo'),
                              style: TextButton.styleFrom(
                                foregroundColor: context.colors.sysOnPrimary,
                              ),
                            ),
                            IconButton(
                              onPressed: enabled ? () {} : null,
                              icon: const Icon(Icons.more_vert),
                            ),
                          ]
                        : null,
                    children: [
                      Text(
                        'This is the body of the Heading panel. It uses standard surface colors.',
                        style: context.texts.bodyMedium,
                      ),
                    ],
                  ),
                ),

                // 2. Normal Panels (Index 1+)
                ...List.generate(panelCount, (index) {
                  final actualIndex = index + 1;
                  final bool isLastItem = index == panelCount - 1;

                  return Padding(
                    padding: EdgeInsets.only(bottom: isGrouped ? 0 : 4.0),
                    child: DSExpansionPanel(
                      isHeading: false,
                      enabled: enabled,
                      showCheckbox: showCheckbox,
                      showDivider: showDivider,
                      isExpanded: _expandedIndices.contains(actualIndex),
                      onExpansionChanged: (isOpen) =>
                          _onExpansionChanged(actualIndex, isOpen),
                      isChecked: _selectedItems.contains(actualIndex),
                      onChecked: (v) => _toggleSelection(actualIndex, v),
                      leading: showLeadingIcon
                          ? DSIcon.small(icon: Icons.info_outline)
                          : null,
                      title: Text('Expansion panel text $actualIndex'),
                      isGrouped: isGrouped,
                      isFirst: false,
                      isLast: isLastItem,
                      trailingActions: showNormalTrailingActions
                          ? [
                              IconButton(
                                onPressed: enabled ? () {} : null,
                                icon: Icon(Symbols.cut, size: 16),
                                tooltip: 'Action',
                              )
                            ]
                          : null,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore.',
                          style: context.texts.bodyMedium,
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _toggleSelection(int index, bool? value) {
    setState(() {
      if (value == true) {
        _selectedItems.add(index);
      } else {
        _selectedItems.remove(index);
      }
    });
  }
}
