import 'package:design_system/core/components/atoms/audio_bars/ds_audio_bars.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum _DSAvatarType {
  icon,
  initial,
  image,
  speaking,
}

class DSAvatarPreset {
  const DSAvatarPreset._(this.avatarSize, this.containerSize, this.borderSize);

  final DSSize avatarSize;
  final DSSize containerSize;
  final DSSize borderSize;

  DSAvatar icon({
    Key? key,
    Color? background,
    Color? widgetColor,
    required IconData icon,
  }) {
    return DSAvatar.icon(
      key: key,
      avatarSize: avatarSize,
      containerSize: containerSize,
      borderSize: borderSize,
      background: background,
      widgetColor: widgetColor,
      icon: icon,
    );
  }

  DSAvatar initial({
    Key? key,
    Color? background,
    Color? widgetColor,
    required String initial,
  }) {
    return DSAvatar.initial(
      key: key,
      avatarSize: avatarSize,
      containerSize: containerSize,
      borderSize: borderSize,
      background: background,
      widgetColor: widgetColor,
      initial: initial,
    );
  }

  DSAvatar image({
    Key? key,
    Color? background,
    required Widget child,
  }) {
    return DSAvatar.image(
      key: key,
      avatarSize: avatarSize,
      containerSize: containerSize,
      borderSize: borderSize,
      background: background,
      child: child,
    );
  }

  DSAvatar speaking({
    Key? key,
    Color? background,
    Color? widgetColor,
    required bool isSpeaking,
    double amplitude = 0,
  }) {
    return DSAvatar.speaking(
      key: key,
      avatarSize: avatarSize,
      containerSize: containerSize,
      borderSize: borderSize,
      background: background,
      widgetColor: widgetColor,
      isSpeaking: isSpeaking,
      amplitude: amplitude,
    );
  }
}

class DSAvatar extends StatelessWidget {
  static const DSAvatarPreset small = DSAvatarPreset._(
    DSSize.extraSmall,
    DSSize.extraSmall,
    DSSize.extraSmall,
  );

  static const DSAvatarPreset medium = DSAvatarPreset._(
    DSSize.small,
    DSSize.small,
    DSSize.small,
  );

  static const DSAvatarPreset large = DSAvatarPreset._(
    DSSize.medium,
    DSSize.medium,
    DSSize.small,
  );

  static const DSAvatarPreset extraLarge = DSAvatarPreset._(
    DSSize.large,
    DSSize.large,
    DSSize.medium,
  );

  const DSAvatar.icon({
    super.key,
    this.avatarSize,
    this.containerSize,
    this.background,
    this.borderSize,
    this.widgetColor,
    required IconData this.icon,
  })  : type = _DSAvatarType.icon,
        child = null,
        initial = null,
        borderRadius = null,
        isSpeaking = false,
        amplitude = 0;

  const DSAvatar.initial({
    super.key,
    this.avatarSize,
    this.containerSize,
    this.background,
    this.borderSize,
    required String this.initial,
    this.widgetColor,
  })  : assert(initial.length == 1, 'initial must be exactly 1 character'),
        type = _DSAvatarType.initial,
        child = null,
        icon = null,
        borderRadius = null,
        isSpeaking = false,
        amplitude = 0;

  const DSAvatar.image({
    super.key,
    this.avatarSize,
    this.containerSize,
    this.background,
    this.borderSize,
    required Widget this.child,
  })  : type = _DSAvatarType.image,
        icon = null,
        initial = null,
        widgetColor = null,
        borderRadius = null,
        isSpeaking = false,
        amplitude = 0;

  /// Avatar que mostra um equalizador de fala no lugar do ícone ou da inicial.
  ///
  /// Use quando não há vídeo para exibir mas ainda importa comunicar que a pessoa está do outro
  /// lado — câmera desligada, sala de espera, miniatura de participante. Alimente [amplitude] com
  /// a intensidade do áudio para as barras acompanharem a voz; sem ela o equalizador só alterna
  /// entre repouso e ativo.
  const DSAvatar.speaking({
    super.key,
    this.avatarSize,
    this.containerSize,
    this.background,
    this.borderSize,
    this.widgetColor,
    required this.isSpeaking,
    this.amplitude = 0,
  })  : type = _DSAvatarType.speaking,
        child = null,
        icon = null,
        initial = null,
        borderRadius = null;

  const DSAvatar._internal({
    super.key,
    this.avatarSize,
    this.containerSize,
    this.background,
    this.borderSize,
    this.child,
    this.icon,
    this.initial,
    this.widgetColor,
    this.borderRadius,
    this.isSpeaking = false,
    this.amplitude = 0,
    required this.type,
  })  : assert(
          type != _DSAvatarType.image || child != null,
          'child must be provided if type is image',
        ),
        assert(
          type != _DSAvatarType.icon || icon != null,
          'icon must be provided if type is icon',
        ),
        assert(
          type != _DSAvatarType.initial || initial != null,
          'initial must be provided if type is initial',
        );

  final DSSize? avatarSize;
  final DSSize? containerSize;
  final DSSize? borderSize;
  final Color? background;
  final Color? widgetColor;
  final Widget? child;
  final IconData? icon;
  final _DSAvatarType type;
  final String? initial;
  final double? borderRadius;

  /// Há fala no momento. Só é lido quando o avatar é do tipo `speaking`.
  final bool isSpeaking;

  /// Intensidade do áudio entre 0 e 1. Só é lido quando o avatar é do tipo `speaking`.
  final double amplitude;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
          borderRadius ?? borderSize?.border() ?? DSSize.small.border()),
      child: Container(
        width: containerSize?.containerBox() ?? DSSize.large.containerBox(),
        height: containerSize?.containerBox() ?? DSSize.large.containerBox(),
        decoration: BoxDecoration(
          color: background ?? context.colors.sysPrimaryContainer,
        ),
        child: _DSAvatarType.image == type
            ? SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: child!,
                ),
              )
            : OverflowBox(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                child: Builder(
                  builder: (context) {
                    switch (type) {
                      case _DSAvatarType.icon:
                        return DSIcon.custom(
                          icon: icon!,
                          color: widgetColor ??
                              context.colors.sysOnPrimaryContainer,
                          size: avatarSize?.icon() ?? DSSize.medium.icon(),
                        );
                      case _DSAvatarType.initial:
                        return Center(
                          child: DSText(
                            initial ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: widgetColor,
                                  fontSize: _getAvatarTextSize(avatarSize),
                                ),
                          ),
                        );
                      case _DSAvatarType.speaking:
                        return Center(
                          child: DSAudioBars(
                            isActive: isSpeaking,
                            amplitude: amplitude,
                            size: avatarSize ?? DSSize.small,
                            color: widgetColor ??
                                context.colors.sysOnPrimaryContainer,
                          ),
                        );
                      default:
                        return child!;
                    }
                  },
                ),
              ),
      ),
    );
  }

  double _getAvatarTextSize(DSSize? avatarSize) {
    switch (avatarSize) {
      case DSSize.extraSmall:
        return 14.0;
      case DSSize.small:
        return 16.0;
      case DSSize.medium:
        return 22.0;
      case DSSize.large:
        return 26.0;
      case DSSize.extraLarge:
        return 32.0;
      case null:
        return 16.0;
    }
  }

  DSAvatar copyWith({
    DSSize? avatarSize,
    DSSize? containerSize,
    DSSize? borderSize,
    Color? background,
    Color? widgetColor,
    double? borderRadius,
    bool? isSpeaking,
    double? amplitude,
  }) {
    return DSAvatar._internal(
      key: key,
      avatarSize: avatarSize ?? this.avatarSize,
      containerSize: containerSize ?? this.containerSize,
      borderSize: borderSize ?? this.borderSize,
      background: background ?? this.background,
      widgetColor: widgetColor ?? this.widgetColor,
      borderRadius: borderRadius ?? this.borderRadius,
      isSpeaking: isSpeaking ?? this.isSpeaking,
      amplitude: amplitude ?? this.amplitude,
      type: type,
      icon: icon,
      initial: initial,
      child: child,
    );
  }
}
