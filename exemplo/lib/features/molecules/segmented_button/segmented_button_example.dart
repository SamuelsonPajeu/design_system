import 'package:design_system/core/components/molecules/segmented_button/ds_segmented_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum _DemoValue { one, two, three }

enum _VisualState { enabled, hovered, focused, pressed, disabled }

enum _SegmentType { labelOnly, labelAndIcon, iconOnly }

enum _ShapeType { stadium, leftRounded, square, rightRounded }

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  Set<_DemoValue> _selected = {_DemoValue.one};
  Set<_DemoValue> _selectedSmall = {_DemoValue.one};

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final disabled = context.knobs.boolean(
      label: 'Disabled',
      description: 'Disables the interactive component',
      initial: false,
    );

    final multiSelection = context.knobs.boolean(
      label: 'Multi Selection',
      description: 'Allows selecting multiple segments',
      initial: false,
    );

    final emptySelection = context.knobs.boolean(
      label: 'Empty Selection Allowed',
      description: 'Allows deselecting all segments',
      initial: false,
    );

    final contentType = context.knobs.options(
      label: 'Content Type',
      description: 'Controls what content is displayed in the segments',
      initial: _SegmentType.labelOnly,
      options: const [
        Option(label: 'Label Only', value: _SegmentType.labelOnly),
        Option(label: 'Label + Icon', value: _SegmentType.labelAndIcon),
        Option(label: 'Icon Only', value: _SegmentType.iconOnly),
      ],
    );

    final visualShape = context.knobs.options(
      label: 'Visual Shape',
      description:
          'Changes the shape of the static visual verification examples',
      initial: _ShapeType.stadium,
      options: const [
        Option(label: 'Stadium (Standard)', value: _ShapeType.stadium),
        Option(label: 'Left Rounded', value: _ShapeType.leftRounded),
        Option(label: 'Square', value: _ShapeType.square),
        Option(label: 'Right Rounded', value: _ShapeType.rightRounded),
      ],
    );

    // --- Intelligent Knob Logic ---
    Set<_DemoValue> effectiveSelected = _selected;
    Set<_DemoValue> effectiveSelectedSmall = _selectedSmall;

    if (!emptySelection) {
      if (_selected.isEmpty) {
        effectiveSelected = {_DemoValue.one};
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _selected.isEmpty) {
            setState(() {
              _selected = {_DemoValue.one};
            });
          }
        });
      }
      if (_selectedSmall.isEmpty) {
        effectiveSelectedSmall = {_DemoValue.one};
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _selectedSmall.isEmpty) {
            setState(() {
              _selectedSmall = {_DemoValue.one};
            });
          }
        });
      }
    }

    if (!multiSelection) {
      if (_selected.length > 1) {
        effectiveSelected = {_selected.first};
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _selected.length > 1) {
            setState(() {
              _selected = {_selected.first};
            });
          }
        });
      }
      if (_selectedSmall.length > 1) {
        effectiveSelectedSmall = {_selectedSmall.first};
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _selectedSmall.length > 1) {
            setState(() {
              _selectedSmall = {_selectedSmall.first};
            });
          }
        });
      }
    }

    final OutlinedBorder resolvedShape = _getShapeBorder(visualShape);

    List<ButtonSegment<_DemoValue>> buildSegments() {
      final bool showLabel = contentType != _SegmentType.iconOnly;
      final bool showIcon = contentType != _SegmentType.labelOnly;

      return [
        ButtonSegment(
          value: _DemoValue.one,
          label: showLabel ? const Text('One') : null,
          icon: showIcon ? const Icon(Icons.looks_one) : null,
        ),
        ButtonSegment(
          value: _DemoValue.two,
          label: showLabel ? const Text('Two') : null,
          icon: showIcon ? const Icon(Icons.looks_two) : null,
        ),
        ButtonSegment(
          value: _DemoValue.three,
          label: showLabel ? const Text('Three') : null,
          icon: showIcon ? const Icon(Icons.looks_3) : null,
        ),
      ];
    }

    const bool showSelectedIcon = true;

    return DSScaffold(
      appBar: AppBar(
        title: Text('Segmented Button', style: context.texts.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================= INTERACTIVE DEMO =================
              Text('Interactive Demo (Standard)',
                  style: context.texts.titleMedium),
              const SizedBox(height: 16),
              Center(
                child: DSSegmentedButton<_DemoValue>.standard(
                  segments: buildSegments(),
                  selected: effectiveSelected,
                  onSelectionChanged: disabled
                      ? null
                      : (Set<_DemoValue> newSelection) {
                          setState(() {
                            _selected = newSelection;
                          });
                        },
                  multiSelectionEnabled: multiSelection,
                  emptySelectionAllowed: emptySelection,
                  showSelectedIcon: showSelectedIcon,
                ),
              ),
              const SizedBox(height: 32),
              Text('Interactive Demo (Small)',
                  style: context.texts.titleMedium),
              const SizedBox(height: 16),
              Center(
                child: DSSegmentedButton<_DemoValue>.small(
                  segments: buildSegments(),
                  selected: effectiveSelectedSmall,
                  onSelectionChanged: disabled
                      ? null
                      : (Set<_DemoValue> newSelection) {
                          setState(() {
                            _selectedSmall = newSelection;
                          });
                        },
                  multiSelectionEnabled: multiSelection,
                  emptySelectionAllowed: emptySelection,
                  showSelectedIcon: showSelectedIcon,
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL STATIC EXAMPLES =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              _buildVisualSection(context, '1. Label Only'),
              _buildSubsectionHeader(context, 'Standard Size'),
              _buildStateMatrix(context,
                  type: _SegmentType.labelOnly,
                  isSmall: false,
                  shape: resolvedShape),
              const SizedBox(height: 16),
              _buildSubsectionHeader(context, 'Small Size'),
              _buildStateMatrix(context,
                  type: _SegmentType.labelOnly,
                  isSmall: true,
                  shape: resolvedShape),
              const SizedBox(height: 48),

              _buildVisualSection(context, '2. Label + Icon'),
              _buildSubsectionHeader(context, 'Standard Size'),
              _buildStateMatrix(context,
                  type: _SegmentType.labelAndIcon,
                  isSmall: false,
                  shape: resolvedShape),
              const SizedBox(height: 16),
              _buildSubsectionHeader(context, 'Small Size'),
              _buildStateMatrix(context,
                  type: _SegmentType.labelAndIcon,
                  isSmall: true,
                  shape: resolvedShape),
              const SizedBox(height: 48),

              _buildVisualSection(context, '3. Icon Only'),
              _buildSubsectionHeader(context, 'Standard Size'),
              _buildStateMatrix(context,
                  type: _SegmentType.iconOnly,
                  isSmall: false,
                  shape: resolvedShape),
              const SizedBox(height: 16),
              _buildSubsectionHeader(context, 'Small Size'),
              _buildStateMatrix(context,
                  type: _SegmentType.iconOnly,
                  isSmall: true,
                  shape: resolvedShape),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  OutlinedBorder _getShapeBorder(_ShapeType type) {
    switch (type) {
      case _ShapeType.stadium:
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
      case _ShapeType.leftRounded:
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20), right: Radius.zero),
        );
      case _ShapeType.square:
        return const RoundedRectangleBorder(borderRadius: BorderRadius.zero);
      case _ShapeType.rightRounded:
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
              right: Radius.circular(20), left: Radius.zero),
        );
    }
  }

  Widget _buildVisualSection(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: context.texts.titleSmall.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSubsectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 4.0),
      child: Text(
        title,
        style:
            context.texts.bodySmall.copyWith(color: context.colors.sysOutline),
      ),
    );
  }

  Widget _buildStateMatrix(BuildContext context,
      {required _SegmentType type,
      required bool isSmall,
      required OutlinedBorder shape}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Table(
        defaultColumnWidth: const IntrinsicColumnWidth(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          // Headers
          TableRow(
            children: [
              _buildHeader(context, 'Enabled'),
              const SizedBox(width: 16),
              _buildHeader(context, 'Hovered'),
              const SizedBox(width: 16),
              _buildHeader(context, 'Focused'),
              const SizedBox(width: 16),
              _buildHeader(context, 'Pressed'),
              const SizedBox(width: 16),
              _buildHeader(context, 'Disabled'),
            ],
          ),
          const TableRow(children: [
            SizedBox(height: 12),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox()
          ]),

          // Unselected Row
          TableRow(
            children: [
              _buildStaticButton(
                  context, type, _VisualState.enabled, false, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.hovered, false, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.focused, false, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.pressed, false, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.disabled, false, isSmall, shape),
            ],
          ),
          const TableRow(children: [
            SizedBox(height: 12),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox()
          ]),

          // Selected Row
          TableRow(
            children: [
              _buildStaticButton(
                  context, type, _VisualState.enabled, true, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.hovered, true, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.focused, true, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.pressed, true, isSmall, shape),
              const SizedBox(width: 16),
              _buildStaticButton(
                  context, type, _VisualState.disabled, true, isSmall, shape),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String text) {
    return Center(
      child: Text(
        text,
        style:
            context.texts.bodySmall.copyWith(color: context.colors.sysOutline),
      ),
    );
  }

  Widget _buildStaticButton(
    BuildContext context,
    _SegmentType type,
    _VisualState state,
    bool isSelected,
    bool isSmall,
    OutlinedBorder shape,
  ) {
    Color? backgroundColorOverride;
    Color? foregroundColorOverride;
    Color? selectedBackgroundColorOverride;
    Color? selectedForegroundColorOverride;

    final Color baseSelectedBg = context.colors.sysSecondaryContainer;
    final Color baseSelectedFg = context.colors.sysOnSecondaryContainer;
    final Color baseUnselectedBg = Colors.transparent;
    final Color baseUnselectedFg = context.colors.sysOnSurface;

    // Overlay colors as per spec
    final Color selectedOverlayHover =
        context.colors.sysOnSecondaryContainer.withValues(alpha: 0.08);
    final Color selectedOverlayFocusPress =
        context.colors.sysOnSecondaryContainer.withValues(alpha: 0.12);

    final Color unselectedOverlayHover =
        context.colors.sysOnSurface.withValues(alpha: 0.08);
    final Color unselectedOverlayFocusPress =
        context.colors.sysOnSurface.withValues(alpha: 0.12);

    if (state == _VisualState.disabled) {
      // Disabled logic handled by widget (onChanged: null)
    } else {
      if (isSelected) {
        selectedForegroundColorOverride = baseSelectedFg;
        // Blending logic for selected states
        if (state == _VisualState.hovered) {
          selectedBackgroundColorOverride =
              Color.alphaBlend(selectedOverlayHover, baseSelectedBg);
        } else if (state == _VisualState.focused ||
            state == _VisualState.pressed) {
          selectedBackgroundColorOverride =
              Color.alphaBlend(selectedOverlayFocusPress, baseSelectedBg);
        } else {
          selectedBackgroundColorOverride = baseSelectedBg;
        }
      } else {
        foregroundColorOverride = baseUnselectedFg;
        // Blending logic for unselected states
        if (state == _VisualState.hovered) {
          backgroundColorOverride = unselectedOverlayHover;
        } else if (state == _VisualState.focused ||
            state == _VisualState.pressed) {
          backgroundColorOverride = unselectedOverlayFocusPress;
        } else {
          backgroundColorOverride = baseUnselectedBg;
        }
      }
    }

    final segments = [
      ButtonSegment(
        value: _DemoValue.one,
        label: (type == _SegmentType.iconOnly) ? null : const Text('Label'),
        icon: (type == _SegmentType.labelOnly) ? null : Icon(Symbols.square),
      ),
    ];

    Widget buildWidget() {
      if (isSmall) {
        return DSSegmentedButton<_DemoValue>.small(
          segments: segments,
          selected: isSelected ? {_DemoValue.one} : {},
          emptySelectionAllowed: true,
          onSelectionChanged: state == _VisualState.disabled ? null : (_) {},
          showSelectedIcon: true,
          backgroundColor: backgroundColorOverride,
          foregroundColor: foregroundColorOverride,
          selectedBackgroundColor: selectedBackgroundColorOverride,
          selectedForegroundColor: selectedForegroundColorOverride,
          overlayColor: Colors.transparent,
          style: ButtonStyle(shape: WidgetStatePropertyAll(shape)),
        );
      } else {
        return DSSegmentedButton<_DemoValue>.standard(
          segments: segments,
          selected: isSelected ? {_DemoValue.one} : {},
          emptySelectionAllowed: true,
          onSelectionChanged: state == _VisualState.disabled ? null : (_) {},
          showSelectedIcon: true,
          backgroundColor: backgroundColorOverride,
          foregroundColor: foregroundColorOverride,
          selectedBackgroundColor: selectedBackgroundColorOverride,
          selectedForegroundColor: selectedForegroundColorOverride,
          overlayColor: Colors.transparent,
          style: ButtonStyle(shape: WidgetStatePropertyAll(shape)),
        );
      }
    }

    return IgnorePointer(child: buildWidget());
  }
}
