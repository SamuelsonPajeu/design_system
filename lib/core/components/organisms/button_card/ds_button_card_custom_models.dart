import 'package:design_system/core/components/organisms/button_card/ds_button_card_custom_tokens.dart';
import 'package:flutter/material.dart';

class DSButtonCardContent {
  final DSButtonCardContentText? title;
  final DSButtonCardContentText? description;
  final DSButtonCardContentBackground? background;
  final DSButtonCardContentTextureImage? textureImage;
  final DSButtonCardContentTextureIcon? textureIcon;
  final DSButtonCardContentImage? image;
  final DSButtonCardContentIcon? icon;
  final double? maxWidth;
  final double? maxHeight;

  DSButtonCardContent({
    this.title,
    this.description,
    this.background,
    this.textureImage,
    this.textureIcon,
    this.image,
    this.icon,
    this.maxWidth,
    this.maxHeight,
  });

  BoxConstraints get effectiveConstraints => BoxConstraints(
        maxWidth: maxWidth ?? double.infinity,
        maxHeight: maxHeight ?? 92,
      );

  DSButtonCardContent copyWith({
    DSButtonCardContentText? title,
    DSButtonCardContentText? description,
    bool clearDescription = false,
    DSButtonCardContentBackground? background,
    DSButtonCardContentTextureImage? textureImage,
    DSButtonCardContentTextureIcon? textureIcon,
    DSButtonCardContentImage? image,
    DSButtonCardContentIcon? icon,
    double? maxWidth,
    double? maxHeight,
  }) {
    return DSButtonCardContent(
      title: title ?? this.title,
      description: clearDescription ? null : (description ?? this.description),
      background: background ?? this.background,
      textureImage: textureImage ?? this.textureImage,
      textureIcon: textureIcon ?? this.textureIcon,
      image: image ?? this.image,
      icon: icon ?? this.icon,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHeight: maxHeight ?? this.maxHeight,
    );
  }

  factory DSButtonCardContent.fromJson(Map<String, dynamic> json) {
    return DSButtonCardContent(
      title: json['title'] != null
          ? (json['title'] is Map
              ? DSButtonCardContentText.fromJson(
                  Map<String, dynamic>.from(json['title'] as Map),
                )
              : DSButtonCardContentText(
                  index: 2,
                  text: json['title'].toString(),
                  position: DSButtonCardContentPosition.bottomLeft,
                ))
          : null,
      description: json['description'] != null
          ? DSButtonCardContentText.fromJson(
              Map<String, dynamic>.from(json['description'] as Map),
            )
          : null,
      background: json['background'] != null
          ? DSButtonCardContentBackground.fromJson(
              Map<String, dynamic>.from(json['background'] as Map),
            )
          : null,
      textureImage: json['textureImage'] != null
          ? DSButtonCardContentTextureImage.fromJson(
              Map<String, dynamic>.from(json['textureImage'] as Map),
            )
          : null,
      textureIcon: json['textureIcon'] != null
          ? DSButtonCardContentTextureIcon.fromJson(
              Map<String, dynamic>.from(json['textureIcon'] as Map),
            )
          : null,
      image: json['image'] != null
          ? DSButtonCardContentImage.fromJson(
              Map<String, dynamic>.from(json['image'] as Map),
            )
          : null,
      icon: json['icon'] != null
          ? DSButtonCardContentIcon.fromJson(
              Map<String, dynamic>.from(json['icon'] as Map),
            )
          : null,
      maxWidth: (json['maxWidth'] as num?)?.toDouble(),
      maxHeight: (json['maxHeight'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        if (title != null) 'title': title!.toJson(),
        if (description != null) 'description': description!.toJson(),
        if (background != null) 'background': background!.toJson(),
        if (textureImage != null) 'textureImage': textureImage!.toJson(),
        if (textureIcon != null) 'textureIcon': textureIcon!.toJson(),
        if (image != null) 'image': image!.toJson(),
        if (icon != null) 'icon': icon!.toJson(),
        if (maxWidth != null) 'maxWidth': maxWidth,
        if (maxHeight != null) 'maxHeight': maxHeight,
      };
}

class DSButtonCardContentText {
  DSButtonCardContentText({
    required this.index,
    this.text,
    this.position,
    this.textAlign,
    this.textStyle,
    this.color,
    this.hexColor,
    this.maxWidth,
    this.marginTop,
    this.marginLeft,
    this.marginBottom,
    this.marginRight,
  });

  final int index;
  final String? text;
  final DSButtonCardContentPosition? position;
  final TextAlign? textAlign;
  final String? textStyle;
  final String? color;
  final String? hexColor;
  final double? maxWidth;
  final String? marginTop;
  final String? marginLeft;
  final String? marginBottom;
  final String? marginRight;

  /// Alias de [position] para payloads que ainda usam `textPosition`.
  DSButtonCardContentPosition? get textPosition => position;

  DSButtonCardContentText copyWith({
    int? index,
    String? text,
    DSButtonCardContentPosition? position,
    TextAlign? textAlign,
    String? textStyle,
    String? color,
    String? hexColor,
    double? maxWidth,
    String? marginTop,
    String? marginLeft,
    String? marginBottom,
    String? marginRight,
  }) {
    return DSButtonCardContentText(
      index: index ?? this.index,
      text: text ?? this.text,
      position: position ?? this.position,
      textAlign: textAlign ?? this.textAlign,
      textStyle: textStyle ?? this.textStyle,
      color: color ?? this.color,
      hexColor: hexColor ?? this.hexColor,
      maxWidth: maxWidth ?? this.maxWidth,
      marginTop: marginTop ?? this.marginTop,
      marginLeft: marginLeft ?? this.marginLeft,
      marginBottom: marginBottom ?? this.marginBottom,
      marginRight: marginRight ?? this.marginRight,
    );
  }

  factory DSButtonCardContentText.fromJson(Map<String, dynamic> json) {
    return DSButtonCardContentText(
      index: json['index'] as int? ?? 0,
      text: json['text'] as String?,
      position: parseNamedEnum(
        DSButtonCardContentPosition.values,
        json['position'] ?? json['textPosition'],
      ),
      textAlign: parseNamedEnum(
        TextAlign.values,
        json['textAlign'],
      ),
      textStyle: json['textStyle'] as String?,
      color: json['color'] as String?,
      hexColor: json['hexColor'] as String?,
      maxWidth: (json['maxWidth'] as num?)?.toDouble(),
      marginTop: json['marginTop']?.toString(),
      marginLeft: json['marginLeft']?.toString(),
      marginBottom: json['marginBottom']?.toString(),
      marginRight: json['marginRight']?.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        if (text != null) 'text': text,
        if (position != null) 'position': position!.name,
        if (textAlign != null) 'textAlign': textAlign!.name,
        if (textStyle != null) 'textStyle': textStyle,
        if (color != null) 'color': color,
        if (hexColor != null) 'hexColor': hexColor,
        if (maxWidth != null) 'maxWidth': maxWidth,
        if (marginTop != null) 'marginTop': marginTop,
        if (marginLeft != null) 'marginLeft': marginLeft,
        if (marginBottom != null) 'marginBottom': marginBottom,
        if (marginRight != null) 'marginRight': marginRight,
      };
}

class DSButtonCardContentBackground {
  DSButtonCardContentBackground({
    required this.index,
    this.color,
    this.hexColor,
    this.position,
  });

  final int index;
  final String? color;
  final String? hexColor;
  final DSButtonCardContentPosition? position;

  factory DSButtonCardContentBackground.fromJson(Map<String, dynamic> json) {
    return DSButtonCardContentBackground(
      index: json['index'] as int? ?? 0,
      color: json['color'] as String?,
      hexColor: json['hexColor'] as String?,
      position: parseNamedEnum(
        DSButtonCardContentPosition.values,
        json['position'],
      ),
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        if (color != null) 'color': color,
        if (hexColor != null) 'hexColor': hexColor,
        if (position != null) 'position': position!.name,
      };
}

class DSButtonCardContentTextureImage {
  DSButtonCardContentTextureImage({
    this.index = 0,
    required this.src,
    this.opacity,
    this.fit,
  });

  final int index;
  final String src;
  final double? opacity;
  final String? fit;

  /// Alias para [opacity].
  double? get transparency => opacity;

  factory DSButtonCardContentTextureImage.fromJson(Map<String, dynamic> json) {
    return DSButtonCardContentTextureImage(
      index: json['index'] as int? ?? 0,
      src: json['src'] as String? ?? '',
      opacity: (json['opacity'] as num?)?.toDouble() ??
          (json['transparency'] as num?)?.toDouble() ??
          (json['alpha'] as num?)?.toDouble(),
      fit: json['fit'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        'src': src,
        if (opacity != null) 'opacity': opacity,
        if (fit != null) 'fit': fit,
      };
}

/// Textura feita a partir de um glifo de ícone, sem avatar.
///
/// Quando [name] e [codePoint] são nulos, o ícone é herdado do
/// `content.icon` do card — assim o JSON não precisa repetir o nome.
class DSButtonCardContentTextureIcon {
  DSButtonCardContentTextureIcon({
    this.index = 0,
    this.name,
    this.codePoint,
    this.position,
    this.color,
    this.hexColor,
    this.size,
    this.opacity,
    this.offsetX,
    this.offsetY,
  });

  static const double defaultSize = 120.0;
  static const double defaultOpacity = 0.12;

  /// Fração de [size] deslocada para fora do card quando não há offset
  /// explícito, criando a sangria no canto.
  static const double defaultBleedFactor = 0.2;

  final int index;
  final String? name;
  final int? codePoint;
  final DSButtonCardContentPosition? position;
  final String? color;
  final String? hexColor;
  final double? size;
  final double? opacity;
  final double? offsetX;
  final double? offsetY;

  double get effectiveSize => size ?? defaultSize;

  double get effectiveOpacity => (opacity ?? defaultOpacity).clamp(0.0, 1.0);

  DSButtonCardContentPosition get effectivePosition =>
      position ?? DSButtonCardContentPosition.bottomRight;

  factory DSButtonCardContentTextureIcon.fromJson(Map<String, dynamic> json) {
    return DSButtonCardContentTextureIcon(
      index: json['index'] as int? ?? 0,
      name: json['name'] as String?,
      codePoint: json['codePoint'] as int?,
      position: parseNamedEnum(
        DSButtonCardContentPosition.values,
        json['position'],
      ),
      color: json['color'] as String?,
      hexColor: json['hexColor'] as String?,
      size: (json['size'] as num?)?.toDouble(),
      opacity: (json['opacity'] as num?)?.toDouble() ??
          (json['transparency'] as num?)?.toDouble() ??
          (json['alpha'] as num?)?.toDouble(),
      offsetX: (json['offsetX'] as num?)?.toDouble(),
      offsetY: (json['offsetY'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        if (name != null) 'name': name,
        if (codePoint != null) 'codePoint': codePoint,
        if (position != null) 'position': position!.name,
        if (color != null) 'color': color,
        if (hexColor != null) 'hexColor': hexColor,
        if (size != null) 'size': size,
        if (opacity != null) 'opacity': opacity,
        if (offsetX != null) 'offsetX': offsetX,
        if (offsetY != null) 'offsetY': offsetY,
      };
}

class DSButtonCardContentImage {
  DSButtonCardContentImage({
    required this.index,
    required this.src,
    this.position,
    this.fit,
    this.fitSize,
    this.marginTop,
    this.marginLeft,
    this.marginBottom,
    this.marginRight,
  });

  final int index;
  final String src;
  final DSButtonCardContentPosition? position;
  final String? fit;
  final double? fitSize;
  final String? marginTop;
  final String? marginLeft;
  final String? marginBottom;
  final String? marginRight;

  factory DSButtonCardContentImage.fromJson(Map<String, dynamic> json) {
    return DSButtonCardContentImage(
      index: json['index'] as int? ?? 0,
      src: json['src'] as String? ?? '',
      position: parseNamedEnum(
        DSButtonCardContentPosition.values,
        json['position'],
      ),
      fit: json['fit'] as String?,
      fitSize: (json['fitSize'] as num?)?.toDouble(),
      marginTop: json['marginTop']?.toString(),
      marginLeft: json['marginLeft']?.toString(),
      marginBottom: json['marginBottom']?.toString(),
      marginRight: json['marginRight']?.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        'src': src,
        if (position != null) 'position': position!.name,
        if (fit != null) 'fit': fit,
        if (fitSize != null) 'fitSize': fitSize,
        if (marginTop != null) 'marginTop': marginTop,
        if (marginLeft != null) 'marginLeft': marginLeft,
        if (marginBottom != null) 'marginBottom': marginBottom,
        if (marginRight != null) 'marginRight': marginRight,
      };
}

class DSButtonCardContentIcon {
  DSButtonCardContentIcon({
    required this.index,
    this.name,
    this.codePoint,
    this.position,
    this.color,
    this.hexColor,
    this.iconSize,
    this.sizePx,
    this.avatar = false,
    this.decorative = false,
    this.backgroundColor,
    this.hexBackgroundColor,
    this.marginTop,
    this.marginLeft,
    this.marginBottom,
    this.marginRight,
  });

  final int index;
  final String? name;
  final int? codePoint;
  final DSButtonCardContentPosition? position;
  final String? color;
  final String? hexColor;
  final String? iconSize;

  /// Tamanho numerico em pixels. Escapa do teto do enum [DSSize] (64px),
  /// necessario para camadas decorativas grandes como a textura de icone.
  final double? sizePx;
  final bool avatar;

  /// Camada puramente decorativa: o host nao deve exibir indicador de
  /// carregamento nem icone de erro ao resolve-la.
  final bool decorative;
  final String? backgroundColor;
  final String? hexBackgroundColor;
  final String? marginTop;
  final String? marginLeft;
  final String? marginBottom;
  final String? marginRight;

  factory DSButtonCardContentIcon.fromJson(Map<String, dynamic> json) {
    return DSButtonCardContentIcon(
      index: json['index'] as int? ?? 0,
      name: json['name'] as String?,
      codePoint: json['codePoint'] as int?,
      position: parseNamedEnum(
        DSButtonCardContentPosition.values,
        json['position'],
      ),
      color: json['color'] as String?,
      hexColor: json['hexColor'] as String?,
      iconSize: json['iconSize'] as String?,
      sizePx: (json['sizePx'] as num?)?.toDouble(),
      avatar: json['avatar'] as bool? ?? false,
      decorative: json['decorative'] as bool? ?? false,
      backgroundColor: json['backgroundColor'] as String?,
      hexBackgroundColor:
          (json['hexBackgroundColor'] ?? json['backgroundColorHex']) as String?,
      marginTop: json['marginTop']?.toString(),
      marginLeft: json['marginLeft']?.toString(),
      marginBottom: json['marginBottom']?.toString(),
      marginRight: json['marginRight']?.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        if (name != null) 'name': name,
        if (codePoint != null) 'codePoint': codePoint,
        if (position != null) 'position': position!.name,
        if (color != null) 'color': color,
        if (hexColor != null) 'hexColor': hexColor,
        if (iconSize != null) 'iconSize': iconSize,
        if (sizePx != null) 'sizePx': sizePx,
        'avatar': avatar,
        if (decorative) 'decorative': decorative,
        if (backgroundColor != null) 'backgroundColor': backgroundColor,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor,
        if (marginTop != null) 'marginTop': marginTop,
        if (marginLeft != null) 'marginLeft': marginLeft,
        if (marginBottom != null) 'marginBottom': marginBottom,
        if (marginRight != null) 'marginRight': marginRight,
      };
}

enum DSButtonCardContentPosition {
  topLeft,
  topCenter,
  topRight,
  bottomLeft,
  bottomCenter,
  bottomRight,
  centerLeft,
  centerCenter,
  centerRight,
}
