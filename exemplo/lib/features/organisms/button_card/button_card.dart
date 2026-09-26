import 'package:design_system/core/components/organisms/button_card/ds_button_card_custom.dart';
import 'package:design_system/core/components/organisms/button_card/ds_button_card_custom_tokens.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

const _sysColorOptions = <Option<String>>[
  Option(label: 'sysPrimary', value: 'sysPrimary'),
  Option(label: 'sysOnPrimary', value: 'sysOnPrimary'),
  Option(label: 'sysPrimaryContainer', value: 'sysPrimaryContainer'),
  Option(label: 'sysOnPrimaryContainer', value: 'sysOnPrimaryContainer'),
  Option(label: 'sysSecondaryContainer', value: 'sysSecondaryContainer'),
  Option(label: 'sysOnSecondaryContainer', value: 'sysOnSecondaryContainer'),
  Option(label: 'sysSurfaceTinted', value: 'sysSurfaceTinted'),
  Option(label: 'sysSurface', value: 'sysSurface'),
  Option(label: 'sysOnSurface', value: 'sysOnSurface'),
  Option(label: 'sysOnSurfaceVariant', value: 'sysOnSurfaceVariant'),
];

const _textStyleOptions = <Option<String>>[
  Option(label: 'displayLarge', value: 'displayLarge'),
  Option(label: 'displayMedium', value: 'displayMedium'),
  Option(label: 'displaySmall', value: 'displaySmall'),
  Option(label: 'headlineLarge', value: 'headlineLarge'),
  Option(label: 'headlineMedium', value: 'headlineMedium'),
  Option(label: 'headlineSmall', value: 'headlineSmall'),
  Option(label: 'titleLarge', value: 'titleLarge'),
  Option(label: 'titleMedium', value: 'titleMedium'),
  Option(label: 'titleSmall', value: 'titleSmall'),
  Option(label: 'bodyLarge', value: 'bodyLarge'),
  Option(label: 'bodyMedium', value: 'bodyMedium'),
  Option(label: 'bodySmall', value: 'bodySmall'),
  Option(label: 'bodySmallBold', value: 'bodySmallBold'),
  Option(label: 'bodyMediumBold', value: 'bodyMediumBold'),
  Option(label: 'bodyLargeBold', value: 'bodyLargeBold'),
  Option(label: 'labelLarge', value: 'labelLarge'),
  Option(label: 'labelMedium', value: 'labelMedium'),
  Option(label: 'labelSmall', value: 'labelSmall'),
];

final _positionOptions = <Option<String?>>[
  const Option(label: 'none (fill)', value: null),
  for (final position in DSButtonCardContentPosition.values)
    Option(label: position.name, value: position.name),
];

final _dsSizeOptions = <Option<String>>[
  for (final size in DSSize.values) Option(label: size.name, value: size.name),
];

final _spacingOptions = <Option<String?>>[
  const Option(label: 'none (0)', value: null),
  for (final entry in dsSpacingTokens.entries)
    Option(label: '${entry.key} (${entry.value.toInt()}px)', value: entry.key),
];

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Card ---
    final expandWidth = context.knobs.boolean(
      label: 'Card / Expand width',
      initial: false,
    );
    final maxWidth = context.knobs.slider(
      label: 'Card / Max width',
      initial: 200,
      min: 80,
      max: 400,
    );
    final maxHeight = context.knobs.slider(
      label: 'Card / Max height',
      initial: 140,
      min: 80,
      max: 300,
    );

    // --- Background ---
    final showBackground = context.knobs.boolean(
      label: 'Background / Show',
      initial: true,
    );
    final backgroundIndex = context.knobs.sliderInt(
      label: 'Background / Index',
      initial: 0,
      min: 0,
      max: 10,
    );
    final backgroundColor = context.knobs.options(
      label: 'Background / Color',
      initial: 'sysPrimaryContainer',
      options: _sysColorOptions,
    );
    final backgroundHexColor = context.knobs.text(
      label: 'Background / Hex color (e.g. #EFF6FF)',
      initial: '',
    );
    final backgroundPosition = context.knobs.options(
      label: 'Background / Position',
      initial: null,
      options: _positionOptions,
    );

    // --- Texture Image ---
    final showTexture = context.knobs.boolean(
      label: 'Texture / Show',
      initial: false,
    );
    final textureIndex = context.knobs.sliderInt(
      label: 'Texture / Index',
      initial: 0,
      min: 0,
      max: 10,
    );
    final textureSrc = context.knobs.text(
      label: 'Texture / Src',
      initial: 'assets/exemple_media.png',
    );
    final textureOpacity = context.knobs.slider(
      label: 'Texture / Opacity',
      initial: 0.2,
      min: 0.0,
      max: 1.0,
    );
    final textureFit = context.knobs.options(
      label: 'Texture / Fit',
      initial: 'cover',
      options: const [
        Option(label: 'cover', value: 'cover'),
        Option(label: 'contain', value: 'contain'),
        Option(label: 'fill', value: 'fill'),
      ],
    );

    // --- Texture Icon ---
    final showTextureIcon = context.knobs.boolean(
      label: 'Texture Icon / Show',
      initial: false,
    );
    final textureIconIndex = context.knobs.sliderInt(
      label: 'Texture Icon / Index',
      initial: 1,
      min: 0,
      max: 10,
    );
    final textureIconName = context.knobs.text(
      label: 'Texture Icon / Name (vazio = herda do icon)',
      initial: '',
    );
    final textureIconColor = context.knobs.options(
      label: 'Texture Icon / Color',
      initial: 'sysOnSurface',
      options: _sysColorOptions,
    );
    final textureIconSize = context.knobs.slider(
      label: 'Texture Icon / Size',
      initial: 120,
      min: 40,
      max: 240,
    );
    final textureIconOpacity = context.knobs.slider(
      label: 'Texture Icon / Opacity',
      initial: 0.12,
      min: 0.0,
      max: 1.0,
    );
    final textureIconPosition = context.knobs.options(
      label: 'Texture Icon / Position',
      initial: 'bottomRight',
      options: _positionOptions,
    );

    // --- Image ---
    final showImage = context.knobs.boolean(
      label: 'Image / Show',
      initial: false,
    );
    final imageIndex = context.knobs.sliderInt(
      label: 'Image / Index',
      initial: 1,
      min: 0,
      max: 10,
    );
    final imageSrc = context.knobs.text(
      label: 'Image / Src',
      initial: 'assets/exemple_media.png',
    );
    final imagePosition = context.knobs.options(
      label: 'Image / Position',
      initial: 'bottomRight',
      options: _positionOptions,
    );
    final imageFit = context.knobs.options(
      label: 'Image / Fit',
      initial: 'contain',
      options: const [
        Option(label: 'cover', value: 'cover'),
        Option(label: 'contain', value: 'contain'),
        Option(label: 'fill', value: 'fill'),
      ],
    );
    final imageFitSize = context.knobs.slider(
      label: 'Image / Fit size',
      initial: 116,
      min: 24,
      max: 200,
    );
    final imageMarginTop = context.knobs.options(
      label: 'Image / Margin top',
      initial: null,
      options: _spacingOptions,
    );
    final imageMarginLeft = context.knobs.options(
      label: 'Image / Margin left',
      initial: null,
      options: _spacingOptions,
    );
    final imageMarginBottom = context.knobs.options(
      label: 'Image / Margin bottom',
      initial: null,
      options: _spacingOptions,
    );
    final imageMarginRight = context.knobs.options(
      label: 'Image / Margin right',
      initial: null,
      options: _spacingOptions,
    );

    // --- Icon ---
    final showIcon = context.knobs.boolean(
      label: 'Icon / Show',
      initial: true,
    );
    final iconIndex = context.knobs.sliderInt(
      label: 'Icon / Index',
      initial: 1,
      min: 0,
      max: 10,
    );
    final iconName = context.knobs.text(
      label: 'Icon / Name',
      initial: 'location_on',
    );
    final iconCodePoint = context.knobs.sliderInt(
      label: 'Icon / Code point (0 = omit)',
      initial: 0,
      min: 0,
      max: 0xFFFF,
    );
    final iconPosition = context.knobs.options(
      label: 'Icon / Position',
      initial: 'topLeft',
      options: _positionOptions,
    );
    final iconColor = context.knobs.options(
      label: 'Icon / Color',
      initial: 'sysOnPrimary',
      options: _sysColorOptions,
    );
    final iconHexColor = context.knobs.text(
      label: 'Icon / Hex color (e.g. #FFFFFF)',
      initial: '',
    );
    final iconSize = context.knobs.options(
      label: 'Icon / Size',
      initial: 'medium',
      options: _dsSizeOptions,
    );
    final iconAvatar = context.knobs.boolean(
      label: 'Icon / Avatar',
      initial: true,
    );
    final iconBackgroundColor = context.knobs.options(
      label: 'Icon / Background color',
      initial: 'sysPrimary',
      options: _sysColorOptions,
    );
    final iconHexBackgroundColor = context.knobs.text(
      label: 'Icon / Hex background color (e.g. #EF4444)',
      initial: '',
    );
    final iconMarginTop = context.knobs.options(
      label: 'Icon / Margin top',
      initial: null,
      options: _spacingOptions,
    );
    final iconMarginLeft = context.knobs.options(
      label: 'Icon / Margin left',
      initial: null,
      options: _spacingOptions,
    );
    final iconMarginBottom = context.knobs.options(
      label: 'Icon / Margin bottom',
      initial: null,
      options: _spacingOptions,
    );
    final iconMarginRight = context.knobs.options(
      label: 'Icon / Margin right',
      initial: null,
      options: _spacingOptions,
    );

    // --- Title ---
    final showTitle = context.knobs.boolean(
      label: 'Title / Show',
      initial: true,
    );
    final titleIndex = context.knobs.sliderInt(
      label: 'Title / Index',
      initial: 2,
      min: 0,
      max: 10,
    );
    final titleText = context.knobs.text(
      label: 'Title / Text',
      initial: 'Lembretes',
    );
    final titlePosition = context.knobs.options(
      label: 'Title / Position',
      initial: 'bottomLeft',
      options: _positionOptions,
    );
    final titleTextStyle = context.knobs.options(
      label: 'Title / Text style',
      initial: 'titleSmall',
      options: _textStyleOptions,
    );
    final titleColor = context.knobs.options(
      label: 'Title / Color',
      initial: 'sysOnSurface',
      options: _sysColorOptions,
    );
    final titleHexColor = context.knobs.text(
      label: 'Title / Hex color (e.g. #1E293B)',
      initial: '',
    );
    final titleUnlimitedWidth = context.knobs.boolean(
      label: 'Title / Unlimited width',
      initial: true,
    );
    final titleMaxWidth = context.knobs.slider(
      label: 'Title / Max width',
      initial: 160,
      min: 40,
      max: 400,
    );
    final titleMarginTop = context.knobs.options(
      label: 'Title / Margin top',
      initial: null,
      options: _spacingOptions,
    );
    final titleMarginLeft = context.knobs.options(
      label: 'Title / Margin left',
      initial: null,
      options: _spacingOptions,
    );
    final titleMarginBottom = context.knobs.options(
      label: 'Title / Margin bottom',
      initial: null,
      options: _spacingOptions,
    );
    final titleMarginRight = context.knobs.options(
      label: 'Title / Margin right',
      initial: null,
      options: _spacingOptions,
    );

    // --- Description ---
    final showDescription = context.knobs.boolean(
      label: 'Description / Show',
      initial: true,
    );
    final descriptionIndex = context.knobs.sliderInt(
      label: 'Description / Index',
      initial: 3,
      min: 0,
      max: 10,
    );
    final descriptionText = context.knobs.text(
      label: 'Description / Text',
      initial: 'Descrição do card customizado',
    );
    final descriptionPosition = context.knobs.options(
      label: 'Description / Position',
      initial: 'bottomLeft',
      options: _positionOptions,
    );
    final descriptionTextStyle = context.knobs.options(
      label: 'Description / Text style',
      initial: 'bodySmall',
      options: _textStyleOptions,
    );
    final descriptionColor = context.knobs.options(
      label: 'Description / Color',
      initial: 'sysOnSurfaceVariant',
      options: _sysColorOptions,
    );
    final descriptionHexColor = context.knobs.text(
      label: 'Description / Hex color (e.g. #64748B)',
      initial: '',
    );
    final descriptionUnlimitedWidth = context.knobs.boolean(
      label: 'Description / Unlimited width',
      initial: true,
    );
    final descriptionMaxWidth = context.knobs.slider(
      label: 'Description / Max width',
      initial: 160,
      min: 40,
      max: 400,
    );
    final descriptionMarginTop = context.knobs.options(
      label: 'Description / Margin top',
      initial: 'spacing-xs',
      options: _spacingOptions,
    );
    final descriptionMarginLeft = context.knobs.options(
      label: 'Description / Margin left',
      initial: null,
      options: _spacingOptions,
    );
    final descriptionMarginBottom = context.knobs.options(
      label: 'Description / Margin bottom',
      initial: null,
      options: _spacingOptions,
    );
    final descriptionMarginRight = context.knobs.options(
      label: 'Description / Margin right',
      initial: null,
      options: _spacingOptions,
    );

    final json = <String, dynamic>{
      'maxHeight': maxHeight,
      if (!expandWidth) 'maxWidth': maxWidth,
      if (showBackground)
        'background': <String, dynamic>{
          'index': backgroundIndex,
          'color': backgroundColor,
          if (backgroundHexColor.trim().isNotEmpty)
            'hexColor': backgroundHexColor.trim(),
          if (backgroundPosition != null) 'position': backgroundPosition,
        },
      if (showTexture)
        'textureImage': <String, dynamic>{
          'index': textureIndex,
          'src': textureSrc,
          'opacity': textureOpacity,
          'fit': textureFit,
        },
      if (showTextureIcon)
        'textureIcon': <String, dynamic>{
          'index': textureIconIndex,
          if (textureIconName.trim().isNotEmpty) 'name': textureIconName.trim(),
          'color': textureIconColor,
          'size': textureIconSize,
          'opacity': textureIconOpacity,
          if (textureIconPosition != null) 'position': textureIconPosition,
        },
      if (showImage)
        'image': <String, dynamic>{
          'index': imageIndex,
          'src': imageSrc,
          if (imagePosition != null) 'position': imagePosition,
          'fit': imageFit,
          'fitSize': imageFitSize,
          if (imageMarginTop != null) 'marginTop': imageMarginTop,
          if (imageMarginLeft != null) 'marginLeft': imageMarginLeft,
          if (imageMarginBottom != null) 'marginBottom': imageMarginBottom,
          if (imageMarginRight != null) 'marginRight': imageMarginRight,
        },
      if (showIcon)
        'icon': <String, dynamic>{
          'index': iconIndex,
          'name': iconName,
          if (iconCodePoint > 0) 'codePoint': iconCodePoint,
          if (iconPosition != null) 'position': iconPosition,
          'color': iconColor,
          if (iconHexColor.trim().isNotEmpty) 'hexColor': iconHexColor.trim(),
          'iconSize': iconSize,
          'avatar': iconAvatar,
          'backgroundColor': iconBackgroundColor,
          if (iconHexBackgroundColor.trim().isNotEmpty)
            'hexBackgroundColor': iconHexBackgroundColor.trim(),
          if (iconMarginTop != null) 'marginTop': iconMarginTop,
          if (iconMarginLeft != null) 'marginLeft': iconMarginLeft,
          if (iconMarginBottom != null) 'marginBottom': iconMarginBottom,
          if (iconMarginRight != null) 'marginRight': iconMarginRight,
        },
      if (showTitle)
        'title': <String, dynamic>{
          'index': titleIndex,
          'text': titleText,
          if (titlePosition != null) 'position': titlePosition,
          'textStyle': titleTextStyle,
          'color': titleColor,
          if (titleHexColor.trim().isNotEmpty) 'hexColor': titleHexColor.trim(),
          if (!titleUnlimitedWidth) 'maxWidth': titleMaxWidth,
          if (titleMarginTop != null) 'marginTop': titleMarginTop,
          if (titleMarginLeft != null) 'marginLeft': titleMarginLeft,
          if (titleMarginBottom != null) 'marginBottom': titleMarginBottom,
          if (titleMarginRight != null) 'marginRight': titleMarginRight,
        },
      if (showDescription)
        'description': <String, dynamic>{
          'index': descriptionIndex,
          'text': descriptionText,
          if (descriptionPosition != null) 'position': descriptionPosition,
          'textStyle': descriptionTextStyle,
          'color': descriptionColor,
          if (descriptionHexColor.trim().isNotEmpty)
            'hexColor': descriptionHexColor.trim(),
          if (!descriptionUnlimitedWidth) 'maxWidth': descriptionMaxWidth,
          if (descriptionMarginTop != null) 'marginTop': descriptionMarginTop,
          if (descriptionMarginLeft != null)
            'marginLeft': descriptionMarginLeft,
          if (descriptionMarginBottom != null)
            'marginBottom': descriptionMarginBottom,
          if (descriptionMarginRight != null)
            'marginRight': descriptionMarginRight,
        },
    };

    return DSScaffold(
      appBar: AppBar(
        title: Text('DSButtonCard Custom', style: context.texts.titleLarge),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DsButtonCardCustom(
              onTap: () {},
              content: DSButtonCardContent.fromJson(json),
            ),
            const SizedBox(height: 32),
            Divider(color: context.colors.sysOutlineVariant),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DsButtonCardCustom(
              onTap: () {},
              content: DSButtonCardContent.fromJson(<String, dynamic>{
                'maxHeight': 110,
                'maxWidth': 130,
                'background': <String, dynamic>{
                  'index': 0,
                  'color': 'sysSurfaceTinted',
                },
                'icon': <String, dynamic>{
                  'index': 2,
                  'name': 'location_on',
                  'position': 'topLeft',
                  'color': 'sysPrimary',
                  'avatar': true,
                  'backgroundColor': 'sysOnPrimary',
                },
                'title': <String, dynamic>{
                  'index': 3,
                  'text': 'Lembretes',
                  'position': 'bottomLeft',
                  'textStyle': 'titleSmall',
                  'color': 'sysOnSurface',
                  'maxWidth': 180,
                },
              }),
            ),
            const SizedBox(height: 16),
            DsButtonCardCustom(
              onTap: () {},
              content: DSButtonCardContent.fromJson(<String, dynamic>{
                'maxHeight': 140,
                'background': <String, dynamic>{
                  'index': 0,
                  'color': 'sysSurfaceTinted',
                },
                'image': <String, dynamic>{
                  'index': 1,
                  'src': 'assets/exemple_media.png',
                  'position': 'bottomRight',
                  'fit': 'contain',
                  'fitSize': 116,
                },
                'title': <String, dynamic>{
                  'index': 2,
                  'text': 'Novidades',
                  'position': 'topLeft',
                  'textStyle': 'titleMedium',
                  'color': 'sysOnSurface',
                },
                'description': <String, dynamic>{
                  'index': 3,
                  'text':
                      'Confira as novidades e os conteúdos disponíveis para você nesta semana.',
                  'position': 'topLeft',
                  'textStyle': 'bodyLarge',
                  'color': 'sysOnSurfaceVariant',
                  'marginTop': 'spacing-xs',
                  'marginRight': 'spacing-3xl',
                },
              }),
            ),
            const SizedBox(height: 16),
            DsButtonCardCustom(
              onTap: () {},
              content: DSButtonCardContent.fromJson(<String, dynamic>{
                'maxWidth': 180,
                'maxHeight': 160,
                'background': <String, dynamic>{
                  'index': 0,
                  'color': 'sysSecondaryContainer',
                },
                'icon': <String, dynamic>{
                  'index': 1,
                  'name': 'content_cut',
                  'position': 'centerCenter',
                  'color': 'sysPrimary',
                  'avatar': false,
                },
                'title': <String, dynamic>{
                  'index': 2,
                  'text': '200 x 200',
                  'position': 'topCenter',
                  'textStyle': 'titleMedium',
                  'color': 'sysOnSurface',
                },
                'description': <String, dynamic>{
                  'index': 3,
                  'text': 'Teste aska bka hasbj akbs',
                  'position': 'bottomCenter',
                  'textStyle': 'bodyLarge',
                  'color': 'sysOnSurfaceVariant',
                },
              }),
            ),
            const SizedBox(height: 16),
            DsButtonCardCustom(
              onTap: () {},
              content: DSButtonCardContent.fromJson(<String, dynamic>{
                'maxWidth': 200,
                'maxHeight': 140,
                'background': <String, dynamic>{
                  'index': 0,
                  'hexColor': '#EFF6FF',
                },
                'icon': <String, dynamic>{
                  'index': 1,
                  'name': 'favorite',
                  'position': 'topLeft',
                  'hexColor': '#FFFFFF',
                  'avatar': true,
                  'hexBackgroundColor': '#EF4444',
                },
                'title': <String, dynamic>{
                  'index': 2,
                  'text': 'Cores Hex Custom',
                  'position': 'bottomLeft',
                  'textStyle': 'titleSmall',
                  'hexColor': '#1E293B',
                },
                'description': <String, dynamic>{
                  'index': 3,
                  'text': 'Fundo, ícone e textos com cores hexadecimais',
                  'position': 'bottomLeft',
                  'textStyle': 'bodySmall',
                  'hexColor': '#64748B',
                  'marginTop': 'spacing-xs',
                },
              }),
            ),
            const SizedBox(height: 16),
            DsButtonCardCustom(
              onTap: () {},
              content: DSButtonCardContent.fromJson(<String, dynamic>{
                'maxWidth': 200,
                'maxHeight': 140,
                'background': <String, dynamic>{
                  'index': 0,
                  'color': 'sysPrimaryContainer',
                },
                'textureImage': <String, dynamic>{
                  'index': 0,
                  'src': 'assets/exemple_media.png',
                  'opacity': 0.15,
                  'fit': 'cover',
                },
                'icon': <String, dynamic>{
                  'index': 1,
                  'name': 'favorite',
                  'position': 'topLeft',
                  'color': 'sysOnPrimary',
                  'avatar': true,
                  'backgroundColor': 'sysPrimary',
                },
                'title': <String, dynamic>{
                  'index': 2,
                  'text': 'Card com Textura',
                  'position': 'bottomLeft',
                  'textStyle': 'titleSmall',
                  'color': 'sysOnSurface',
                },
                'description': <String, dynamic>{
                  'index': 3,
                  'text': 'Textura a 100% com opacidade 0.15 sobre o fundo',
                  'position': 'bottomLeft',
                  'textStyle': 'bodySmall',
                  'color': 'sysOnSurfaceVariant',
                  'marginTop': 'spacing-xs',
                },
              }),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
