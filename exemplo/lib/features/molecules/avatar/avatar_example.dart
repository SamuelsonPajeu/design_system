import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system_exemplo/ui/knobs_utils.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum _BackgroundColor {
  primary,
  secondary,
  tertiary,
}

enum _WidgetColor {
  onPrimary,
  onSecondary,
  onTertiary,
}

class AvatarExample extends StatelessWidget {
  const AvatarExample({super.key});

  @override
  Widget build(BuildContext context) {
    final containerSize = context.knobs.sliderDSSize(
      label: 'Container Size',
      initial: DSSize.large,
    );

    final backgroundColorOption = context.knobs.options<_BackgroundColor>(
      label: 'Background',
      initial: _BackgroundColor.primary,
      options: const [
        Option(label: 'sysPrimaryContainer', value: _BackgroundColor.primary),
        Option(
            label: 'sysSecondaryContainer', value: _BackgroundColor.secondary),
        Option(label: 'sysTertiaryContainer', value: _BackgroundColor.tertiary),
      ],
    );

    final widgetColorOption = context.knobs.options<_WidgetColor>(
      label: 'Widget Color',
      initial: _WidgetColor.onPrimary,
      options: const [
        Option(label: 'sysOnPrimaryContainer', value: _WidgetColor.onPrimary),
        Option(
            label: 'sysOnSecondaryContainer', value: _WidgetColor.onSecondary),
        Option(label: 'sysOnTertiaryContainer', value: _WidgetColor.onTertiary),
      ],
    );

    Color backgroundColor;
    switch (backgroundColorOption) {
      case _BackgroundColor.primary:
        backgroundColor = context.colors.sysPrimaryContainer;
        break;
      case _BackgroundColor.secondary:
        backgroundColor = context.colors.sysSecondaryContainer;
        break;
      case _BackgroundColor.tertiary:
        backgroundColor = context.colors.sysTertiaryContainer;
        break;
    }

    Color widgetColor;
    switch (widgetColorOption) {
      case _WidgetColor.onPrimary:
        widgetColor = context.colors.sysOnPrimaryContainer;
        break;
      case _WidgetColor.onSecondary:
        widgetColor = context.colors.sysOnSecondaryContainer;
        break;
      case _WidgetColor.onTertiary:
        widgetColor = context.colors.sysOnTertiaryContainer;
        break;
    }

    return DSScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DSAvatar.icon(
                      icon: Symbols.check,
                      background: backgroundColor,
                      widgetColor: widgetColor,
                    ),
                    SizedBox(width: 16),
                    DSAvatar.initial(
                      initial: 'A',
                      background: backgroundColor,
                      widgetColor: widgetColor,
                    ),
                    SizedBox(width: 16),
                    DSAvatar.image(
                      background: backgroundColor,
                      child: DSIcon.custom(
                        icon: Symbols.account_circle,
                        color: widgetColor,
                        size: containerSize.icon() * 2.5,
                        weight: 100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DSAvatar.icon(
                      icon: Symbols.check,
                      background: context.colors.sysSuccessContainer,
                      widgetColor: context.colors.sysOnSuccessContainer,
                    ),
                    SizedBox(width: 16),
                    DSAvatar.icon(
                      icon: Symbols.check,
                      background: context.colors.sysWarnContainer,
                      widgetColor: context.colors.sysOnWarnContainer,
                    ),
                    SizedBox(width: 16),
                    DSAvatar.icon(
                      icon: Symbols.check,
                      background: context.colors.sysErrorContainer,
                      widgetColor: context.colors.sysOnErrorContainer,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                DSText(
                  'Falando:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        DSAvatar.large.speaking(isSpeaking: false),
                        SizedBox(height: 8),
                        DSText('repouso'),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        DSAvatar.large.speaking(
                          isSpeaking: true,
                          amplitude: 0.4,
                        ),
                        SizedBox(height: 8),
                        DSText('fala baixa'),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        DSAvatar.large.speaking(
                          isSpeaking: true,
                          amplitude: 1,
                        ),
                        SizedBox(height: 8),
                        DSText('fala alta'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                DSText(
                  'Presets:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        DSAvatar.small.icon(
                          icon: Symbols.check,
                          background: backgroundColor,
                          widgetColor: widgetColor,
                        ),
                        SizedBox(height: 8),
                        DSText(
                          'small',
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        DSAvatar.medium.icon(
                          icon: Symbols.check,
                          background: backgroundColor,
                          widgetColor: widgetColor,
                        ),
                        SizedBox(height: 8),
                        DSText(
                          'medium',
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        DSAvatar.large.icon(
                          icon: Symbols.check,
                          background: backgroundColor,
                          widgetColor: widgetColor,
                        ),
                        SizedBox(height: 8),
                        DSText(
                          'large',
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        DSAvatar.extraLarge.icon(
                          icon: Symbols.check,
                          background: backgroundColor,
                          widgetColor: widgetColor,
                        ),
                        SizedBox(height: 8),
                        DSText(
                          'Extra Large',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
