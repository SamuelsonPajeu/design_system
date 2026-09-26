import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/radio/ds_radio.dart';
import 'package:design_system/core/components/atoms/switch/ds_switch.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum _PrefixType {
  none,
  avatar,
  icon,
  image,
  video,
  checkbox,
  radio,
  toggleSwitch,
}

enum _SuffixType {
  none,
  checkbox,
  arrow,
  toggleSwitch,
  radio,
}

enum _ContentVariation {
  titleOnly,
  titleWithEllipsis,
  titleExpanded,
}

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  // Demo State Maps to handle individual item states
  final Map<int, bool> _checkboxStates = {};
  final Map<int, bool> _switchStates = {};
  final Map<int, int> _radioStates = {};

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final itemCount = context.knobs.sliderInt(
      label: 'Item Count (List)',
      initial: 3,
      min: 1,
      max: 6,
    );

    final density = context.knobs.options(
      label: 'Density',
      initial: DSListTileDensity.standard,
      options: [
        Option(label: 'Standard (0)', value: DSListTileDensity.standard),
        Option(label: 'Compact (-2)', value: DSListTileDensity.compact),
        Option(
            label: 'Ultra Compact (-4)', value: DSListTileDensity.ultraCompact),
      ],
    );

    final enabled = context.knobs.boolean(
      label: 'Enabled',
      initial: true,
    );

    final showOverline = context.knobs.boolean(
      label: 'Show Overline',
      initial: false,
    );

    final showSupportingText = context.knobs.boolean(
      label: 'Show Supporting Text',
      initial: false,
    );

    final prefixType = context.knobs.options(
      label: 'Prefix',
      initial: _PrefixType.none,
      options: _PrefixType.values
          .map((e) => Option(label: e.name, value: e))
          .toList(),
    );

    final suffixType = context.knobs.options(
      label: 'Suffix',
      initial: _SuffixType.none,
      options: _SuffixType.values
          .map((e) => Option(label: e.name, value: e))
          .toList(),
    );

    final staticDensity = context.knobs.options(
      label: 'Static Examples Density',
      initial: DSListTileDensity.standard,
      options: [
        Option(label: 'Standard (0)', value: DSListTileDensity.standard),
        Option(label: 'Compact (-2)', value: DSListTileDensity.compact),
        Option(
            label: 'Ultra Compact (-4)', value: DSListTileDensity.ultraCompact),
      ],
    );

    return DSScaffold(
      appBar: AppBar(
        title: Text('List Tile', style: context.texts.titleLarge),
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
                decoration: BoxDecoration(
                  border: Border.all(color: context.colors.sysOutlineVariant),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: List.generate(itemCount, (index) {
                    final isLast = index == itemCount - 1;

                    final bool isChecked = _checkboxStates[index] ?? false;
                    final bool isSwitched = _switchStates[index] ?? false;
                    final int radioVal = _radioStates[index] ?? 0;

                    final ListTileTitleAlignment? align =
                        suffixType == _SuffixType.arrow
                            ? ListTileTitleAlignment.top
                            : null;

                    return DSListTile(
                      title: Text('List item ${index + 1}'),
                      density: density,
                      enabled: enabled,
                      titleAlignment: align,
                      showDivider: density == DSListTileDensity.standard
                          ? !isLast
                          : null,
                      overline: showOverline ? const Text('Overline') : null,
                      supportingText: showSupportingText
                          ? const Text('Supporting line text lorem ipsum')
                          : null,
                      leading: _buildPrefix(
                        context,
                        prefixType,
                        isChecked: isChecked,
                        isSwitched: isSwitched,
                        radioValue: radioVal,
                        onChanged: enabled
                            ? (val) => _updateState(index, prefixType, val)
                            : null,
                      ),
                      trailing: _buildSuffix(
                        context,
                        suffixType,
                        isChecked: isChecked,
                        isSwitched: isSwitched,
                        radioValue: radioVal,
                        onChanged: enabled
                            ? (val) => _updateState(index, suffixType, val)
                            : null,
                      ),
                      onTap: enabled
                          ? () {
                              if (prefixType == _PrefixType.checkbox ||
                                  suffixType == _SuffixType.checkbox) {
                                _updateState(index, null, !isChecked);
                              } else if (prefixType ==
                                      _PrefixType.toggleSwitch ||
                                  suffixType == _SuffixType.toggleSwitch) {
                                _updateState(index, null, !isSwitched);
                              } else if (prefixType == _PrefixType.radio ||
                                  suffixType == _SuffixType.radio) {
                                _updateState(
                                    index, null, radioVal == 0 ? 1 : 0);
                              }
                            }
                          : null,
                    );
                  }),
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL VERIFICATION =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              // 1. Basic Suffixes
              _buildVisualSection(context, '1. Suffix Variations'),
              _buildStaticBlock(
                context,
                staticDensity,
                prefixes: [_PrefixType.none],
                suffixes: [
                  _SuffixType.none,
                  _SuffixType.checkbox,
                  _SuffixType.arrow,
                  _SuffixType.toggleSwitch,
                  _SuffixType.radio,
                ],
              ),

              const SizedBox(height: 32),

              // 2. Prefix Variations
              _buildVisualSection(context, '2. Prefix Variations'),
              _buildStaticBlock(
                context,
                staticDensity,
                prefixes: [
                  _PrefixType.avatar,
                  _PrefixType.icon,
                  _PrefixType.image,
                  _PrefixType.video,
                ],
                suffixes: [_SuffixType.none],
              ),

              const SizedBox(height: 32),

              // 3. Checkbox Prefix + Text Variations + Arrow
              _buildVisualSection(
                  context, '3. Checkbox Prefix + Text Variations'),
              _buildStaticBlock(
                context,
                staticDensity,
                prefixes: [_PrefixType.checkbox],
                suffixes: [_SuffixType.none, _SuffixType.arrow],
              ),

              const SizedBox(height: 32),

              // 4. Radio Prefix + Text Variations + Arrow
              _buildVisualSection(context, '4. Radio Prefix + Text Variations'),
              _buildStaticBlock(
                context,
                staticDensity,
                prefixes: [_PrefixType.radio],
                suffixes: [_SuffixType.none, _SuffixType.arrow],
              ),

              const SizedBox(height: 32),

              // 5. Switch Prefix + Text Variations + Arrow
              _buildVisualSection(
                  context, '5. Switch Prefix + Text Variations'),
              _buildStaticBlock(
                context,
                staticDensity,
                prefixes: [_PrefixType.toggleSwitch],
                suffixes: [_SuffixType.none, _SuffixType.arrow],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateState(int index, dynamic type, dynamic val) {
    setState(() {
      if (val is bool) {
        _checkboxStates[index] = val;
        _switchStates[index] = val;
      } else if (val is int) {
        _radioStates[index] = val;
      }
    });
  }

  // --- Builders ---

  Widget _buildVisualSection(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: context.texts.titleSmall.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildStaticBlock(
    BuildContext context,
    DSListTileDensity density, {
    required List<_PrefixType> prefixes,
    required List<_SuffixType> suffixes,
  }) {
    List<Widget> tiles = [];

    for (var prefix in prefixes) {
      for (var suffix in suffixes) {
        tiles.add(_buildStaticTile(
            context, density, _ContentVariation.titleOnly, prefix, suffix));
        tiles.add(_buildStaticTile(context, density,
            _ContentVariation.titleWithEllipsis, prefix, suffix));
        tiles.add(_buildStaticTile(
            context, density, _ContentVariation.titleExpanded, prefix, suffix));
      }
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.sysOutlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(children: tiles),
    );
  }

  Widget _buildStaticTile(
    BuildContext context,
    DSListTileDensity density,
    _ContentVariation content,
    _PrefixType prefix,
    _SuffixType suffix,
  ) {
    Widget titleWidget;
    Widget? subtitleWidget;

    const longText =
        'Supporting line text lorem ipsum dolor sit amet, consectetur.';

    switch (content) {
      case _ContentVariation.titleOnly:
        titleWidget = const Text('List item');
        subtitleWidget = null;
        break;
      case _ContentVariation.titleWithEllipsis:
        titleWidget = const Text('List item');
        subtitleWidget = const Text(
          longText,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        );
        break;
      case _ContentVariation.titleExpanded:
        titleWidget = const Text('List item');
        subtitleWidget = const Text(longText);
        break;
    }

    final align =
        suffix == _SuffixType.arrow ? ListTileTitleAlignment.top : null;

    return DSListTile(
      title: titleWidget,
      supportingText: subtitleWidget,
      density: density,
      titleAlignment: align,
      leading: _buildPrefix(
        context,
        prefix,
        isChecked: true,
        isSwitched: true,
        radioValue: 1,
        onChanged: (_) {},
      ),
      trailing: _buildSuffix(
        context,
        suffix,
        isChecked: true,
        isSwitched: true,
        radioValue: 1,
        onChanged: (_) {},
      ),
      onTap: () {},
    );
  }

  Widget? _buildPrefix(
    BuildContext context,
    _PrefixType type, {
    required bool isChecked,
    required bool isSwitched,
    required int radioValue,
    ValueChanged<dynamic>? onChanged,
  }) {
    switch (type) {
      case _PrefixType.none:
        return null;
      case _PrefixType.avatar:
        return DSAvatar.medium.initial(initial: 'A');
      case _PrefixType.icon:
        return const DSIcon.custom(icon: Icons.calendar_today);
      case _PrefixType.image:
        return Container(
          width: 56,
          height: 56,
          color: context.colors.sysSurfaceContainerHigh,
          child: const Icon(Icons.image),
        );
      case _PrefixType.video:
        return Container(
          width: 114,
          height: 64,
          color: context.colors.sysSurfaceContainerHigh,
          child: const Center(child: Icon(Icons.play_circle_outline)),
        );
      case _PrefixType.checkbox:
        return DSCheckbox(
          value: isChecked,
          onChanged: onChanged,
        );
      case _PrefixType.radio:
        return DSRadioGroup<int>(
          groupValue: radioValue,
          onChanged: (val) => onChanged?.call(val),
          child: const DSRadio<int>(value: 1),
        );
      case _PrefixType.toggleSwitch:
        return DSSwitch(
          value: isSwitched,
          onChanged: onChanged,
        );
    }
  }

  Widget? _buildSuffix(
    BuildContext context,
    _SuffixType type, {
    required bool isChecked,
    required bool isSwitched,
    required int radioValue,
    ValueChanged<dynamic>? onChanged,
  }) {
    switch (type) {
      case _SuffixType.none:
        return null;
      case _SuffixType.checkbox:
        return DSCheckbox(
          value: isChecked,
          onChanged: onChanged,
        );
      case _SuffixType.arrow:
        return const Icon(Icons.play_arrow, size: 16);
      case _SuffixType.toggleSwitch:
        return DSSwitch(
          value: isSwitched,
          onChanged: onChanged,
        );
      case _SuffixType.radio:
        return DSRadioGroup<int>(
          groupValue: radioValue,
          onChanged: (val) => onChanged?.call(val),
          child: const DSRadio<int>(value: 1),
        );
    }
  }
}
