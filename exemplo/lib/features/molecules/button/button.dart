import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../ui/knobs_utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  Future<void> loading() async {
    await Future.delayed(const Duration(seconds: 2), () {});
  }

  @override
  Widget build(BuildContext context) {
    final size = context.knobSliderDSSize(
      label: 'Size',
      initial: DSSize.medium,
      min: DSSize.small,
      max: DSSize.large,
    );

    return DSScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DSText(
                'Interactive Demo',
                style: context.texts.titleMedium,
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  DSButton.filled(
                    onTap: loading,
                    buttonText: 'Filled',
                    enabled: true,
                    size: size,
                  ),
                  DSButton.outlined(
                    onTap: loading,
                    buttonText: 'Outlined',
                    enabled: true,
                    size: size,
                  ),
                  DSButton.text(
                    onTap: loading,
                    buttonText: 'Text',
                    enabled: true,
                    size: size,
                  ),
                  DSButton.elevated(
                    onTap: loading,
                    buttonText: 'Elevated',
                    enabled: true,
                    size: size,
                  ),
                  DSButton.tonal(
                    onTap: loading,
                    buttonText: 'Tonal',
                    enabled: true,
                    size: size,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 32),
              DSText(
                'Visual State Matrix',
                style: context.texts.titleMedium,
              ),
              const SizedBox(height: 24),
              _buildStateGrid(context, size),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStateGrid(BuildContext context, DSSize? size) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildHeader('Enabled', context),
              _buildHeader('Hovered', context),
              _buildHeader('Focused', context),
              _buildHeader('Pressed', context),
              _buildHeader('Disabled', context),
            ],
          ),
        ),
        _buildButtonTypeSection(context, 'Filled Buttons', size,
            (onTap, text, icon, enabled, invert) {
          return DSButton.filled(
            onTap: onTap,
            buttonText: text,
            buttonIcon: icon,
            enabled: enabled,
            size: size,
            invert: invert,
          );
        }),
        const SizedBox(height: 32),
        _buildButtonTypeSection(context, 'Outlined Buttons', size,
            (onTap, text, icon, enabled, invert) {
          return DSButton.outlined(
            onTap: onTap,
            buttonText: text,
            buttonIcon: icon,
            enabled: enabled,
            size: size,
            invert: invert,
          );
        }),
        const SizedBox(height: 32),
        _buildButtonTypeSection(context, 'Text Buttons', size,
            (onTap, text, icon, enabled, invert) {
          return DSButton.text(
            onTap: onTap,
            buttonText: text,
            buttonIcon: icon,
            enabled: enabled,
            size: size,
            invert: invert,
          );
        }),
        const SizedBox(height: 32),
        _buildButtonTypeSection(context, 'Elevated Buttons', size,
            (onTap, text, icon, enabled, invert) {
          return DSButton.elevated(
            onTap: onTap,
            buttonText: text,
            buttonIcon: icon,
            enabled: enabled,
            size: size,
            invert: invert,
          );
        }),
        const SizedBox(height: 32),
        _buildButtonTypeSection(context, 'Tonal Buttons', size,
            (onTap, text, icon, enabled, invert) {
          return DSButton.tonal(
            onTap: onTap,
            buttonText: text,
            buttonIcon: icon,
            enabled: enabled,
            size: size,
            invert: invert,
          );
        }),
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

  Widget _buildButtonTypeSection(
    BuildContext context,
    String title,
    DSSize? size,
    DSButton Function(Future<void> Function()?, String?, IconData?, bool, bool)
        buttonBuilder,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          title,
          style: context.texts.titleSmall,
        ),
        const SizedBox(height: 12),
        _buildButtonRow(
          context,
          size,
          buttonBuilder,
          text: 'Label',
          icon: null,
        ),
        const SizedBox(height: 12),
        _buildButtonRow(
          context,
          size,
          buttonBuilder,
          text: 'Label',
          icon: Symbols.add,
        ),
        const SizedBox(height: 12),
        _buildButtonRow(
          context,
          size,
          buttonBuilder,
          text: 'Label',
          icon: Symbols.add,
          invert: true,
        ),
      ],
    );
  }

  Widget _buildButtonRow(
    BuildContext context,
    DSSize? size,
    DSButton Function(Future<void> Function()?, String?, IconData?, bool, bool)
        buttonBuilder, {
    required String? text,
    required IconData? icon,
    bool invert = false,
  }) {
    final isLightMode = Theme.of(context).brightness == Brightness.light;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buttonBuilder(
            loading,
            text,
            icon,
            true,
            invert,
          ),
          _StaticStateButton(
            buttonBuilder: buttonBuilder,
            text: text,
            icon: icon,
            size: size,
            invert: invert,
            state: _ButtonVisualState.hovered,
            isLightMode: isLightMode,
          ),
          _StaticStateButton(
            buttonBuilder: buttonBuilder,
            text: text,
            icon: icon,
            size: size,
            invert: invert,
            state: _ButtonVisualState.focused,
            isLightMode: isLightMode,
          ),
          _StaticStateButton(
            buttonBuilder: buttonBuilder,
            text: text,
            icon: icon,
            size: size,
            invert: invert,
            state: _ButtonVisualState.pressed,
            isLightMode: isLightMode,
          ),
          buttonBuilder(loading, text, icon, false, invert),
        ],
      ),
    );
  }
}

enum _ButtonVisualState {
  hovered,
  focused,
  pressed,
}

class _StaticStateButton extends StatelessWidget {
  const _StaticStateButton({
    required this.buttonBuilder,
    required this.text,
    required this.icon,
    required this.size,
    required this.invert,
    required this.state,
    required this.isLightMode,
  });

  final Widget Function(
      Future<void> Function()?, String?, IconData?, bool, bool) buttonBuilder;
  final String? text;
  final IconData? icon;
  final DSSize? size;
  final bool invert;
  final _ButtonVisualState state;
  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    final overlayColor = _getOverlayColor(context);
    final radius = _getBorderRadius(size);

    return Stack(
      alignment: Alignment.center,
      children: [
        IgnorePointer(
          child: buttonBuilder(null, text, icon, true, invert),
        ),
        Positioned.fill(
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                color: overlayColor,
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
        ),
      ],
    );
  }

  double _getBorderRadius(DSSize? buttonSize) {
    switch (buttonSize) {
      case DSSize.extraSmall:
        return 8.0;
      case DSSize.small:
        return 10.0;
      case DSSize.medium:
        return 12.0;
      case DSSize.large:
        return 16.0;
      case DSSize.extraLarge:
        return 20.0;
      case null:
        return 12.0;
    }
  }

  Color _getOverlayColor(BuildContext context) {
    switch (state) {
      case _ButtonVisualState.hovered:
        return context.colors.stateLayersPrimaryOpacity008;
      case _ButtonVisualState.focused:
        return context.colors.stateLayersPrimaryOpacity012;
      case _ButtonVisualState.pressed:
        return context.colors.stateLayersPrimaryOpacity008;
    }
  }
}
