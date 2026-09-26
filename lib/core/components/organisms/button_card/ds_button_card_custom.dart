import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/organisms/button_card/ds_button_card_custom_tokens.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system/core/components/organisms/button_card/ds_button_card_custom_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

export 'package:design_system/core/components/organisms/button_card/ds_button_card_custom_models.dart';
export 'package:design_system/core/components/organisms/button_card/ds_button_card_custom_tokens.dart';

typedef DSButtonCardImageBuilder = Widget Function(
  BuildContext context,
  String src,
  BoxFit fit,
);

typedef DSButtonCardIconBuilder = Widget Function(
  BuildContext context,
  DSButtonCardContentIcon icon,
);

class DsButtonCardCustom extends StatelessWidget {
  const DsButtonCardCustom({
    super.key,
    required this.content,
    this.onTap,
    this.imageBuilder,
    this.iconBuilder,
  });

  final DSButtonCardContent content;
  final VoidCallback? onTap;
  final DSButtonCardImageBuilder? imageBuilder;
  final DSButtonCardIconBuilder? iconBuilder;

  /// Image builder global para permitir que o app host (ex: mobile)
  /// configure o AssetLoader ou outro loader customizado uma única vez.
  static DSButtonCardImageBuilder? globalImageBuilder;

  /// Icon builder global para permitir que o app host (ex: mobile)
  /// configure o IconService ou outro resolver customizado de ícone uma única vez.
  static DSButtonCardIconBuilder? globalIconBuilder;

  static const _borderRadius = 16.0;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;
    final layers = _buildLayers(context, colors, texts);
    layers.sort((a, b) => a.index.compareTo(b.index));

    final hasFillBackground =
        content.background != null && content.background!.position == null;
    final constraints = content.effectiveConstraints;

    return Semantics(
      button: onTap != null,
      enabled: onTap != null,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: hasFillBackground
                ? Colors.transparent
                : colors.sysSurfaceTinted,
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(_borderRadius),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_borderRadius),
              child: ConstrainedBox(
                constraints: constraints,
                child: SizedBox(
                  width: constraints.maxWidth.isFinite
                      ? constraints.maxWidth
                      : null,
                  height: constraints.maxHeight,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      for (final layer in layers) layer.child,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<({int index, Widget child})> _buildLayers(
    BuildContext context,
    ColorsThemeExtension colors,
    TextsThemeExtension texts,
  ) {
    final items = <({
      int index,
      DSButtonCardContentPosition? position,
      bool fill,
      Widget child,
    })>[];

    final background = content.background;
    final textureImage = content.textureImage;
    final textureIcon = content.textureIcon;
    final image = content.image;
    final icon = content.icon;
    final title = content.title;
    final description = content.description;

    if (background != null) {
      items.add((
        index: background.index,
        position: background.position,
        fill: background.position == null,
        child: _buildBackground(colors, background),
      ));
    }

    if (textureImage != null && textureImage.src.isNotEmpty) {
      items.add((
        index: textureImage.index,
        position: null,
        fill: true,
        child: _buildTextureImage(context, textureImage),
      ));
    }

    if (textureIcon != null) {
      final child = _buildTextureIcon(context, colors, textureIcon);
      if (child != null) {
        items.add((
          index: textureIcon.index,
          position: null,
          fill: true,
          child: child,
        ));
      }
    }

    if (image != null && image.src.isNotEmpty) {
      items.add((
        index: image.index,
        position: image.position,
        fill: image.position == null,
        child: _buildImage(context, image),
      ));
    }

    final iconBuilderResolved = iconBuilder ?? globalIconBuilder;
    final iconCodePoint = icon == null
        ? null
        : resolveCardIconCodePoint(name: icon.name, codePoint: icon.codePoint);
    if (icon != null &&
        (iconBuilderResolved != null || iconCodePoint != null)) {
      items.add((
        index: icon.index,
        position: icon.position,
        fill: false,
        child: _buildIcon(context, colors, icon, iconCodePoint),
      ));
    }

    if (title?.text != null && title!.text!.isNotEmpty) {
      items.add((
        index: title.index,
        position: title.position,
        fill: false,
        child: _buildText(colors, texts, title),
      ));
    }

    if (description?.text != null && description!.text!.isNotEmpty) {
      items.add((
        index: description.index,
        position: description.position,
        fill: false,
        child: _buildText(colors, texts, description),
      ));
    }

    final layers = <({int index, Widget child})>[];

    for (final item in items.where((e) => e.fill)) {
      layers.add((
        index: item.index,
        child: _wrapLayer(
          position: null,
          fillWhenUnpositioned: true,
          child: item.child,
        ),
      ));
    }

    final positioned = items.where((e) => !e.fill).toList();
    final groups =
        <DSButtonCardContentPosition, List<({int index, Widget child})>>{};

    for (final item in positioned) {
      final key = item.position ?? DSButtonCardContentPosition.centerCenter;
      groups.putIfAbsent(key, () => []).add((
        index: item.index,
        child: item.child,
      ));
    }

    for (final entry in groups.entries) {
      final groupItems = entry.value
        ..sort((a, b) => a.index.compareTo(b.index));
      final groupIndex = groupItems.first.index;
      final columnChildren = <Widget>[];
      for (var i = 0; i < groupItems.length; i++) {
        if (i > 0) {
          columnChildren.add(SizedBox(height: DSSize.extraSmall.padding()));
        }
        columnChildren.add(groupItems[i].child);
      }

      layers.add((
        index: groupIndex,
        child: _wrapLayer(
          position: entry.key,
          fillWhenUnpositioned: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: _crossAxisOf(entry.key),
            children: columnChildren,
          ),
        ),
      ));
    }

    return layers;
  }

  CrossAxisAlignment _crossAxisOf(DSButtonCardContentPosition position) {
    switch (position) {
      case DSButtonCardContentPosition.topLeft:
      case DSButtonCardContentPosition.centerLeft:
      case DSButtonCardContentPosition.bottomLeft:
        return CrossAxisAlignment.start;
      case DSButtonCardContentPosition.topRight:
      case DSButtonCardContentPosition.centerRight:
      case DSButtonCardContentPosition.bottomRight:
        return CrossAxisAlignment.end;
      case DSButtonCardContentPosition.topCenter:
      case DSButtonCardContentPosition.centerCenter:
      case DSButtonCardContentPosition.bottomCenter:
        return CrossAxisAlignment.center;
    }
  }

  Widget _buildIcon(
    BuildContext context,
    ColorsThemeExtension colors,
    DSButtonCardContentIcon layer,
    int? codePoint,
  ) {
    final builder = iconBuilder ?? globalIconBuilder;
    Widget widget;
    if (builder != null) {
      widget = builder(context, layer);
    } else if (codePoint == null) {
      return const SizedBox.shrink();
    } else if (layer.avatar) {
      final iconData = IconData(
        // ignore: non_const_argument_for_const_parameter
        codePoint,
        fontFamily: 'MaterialSymbolsOutlined',
        fontPackage: 'material_symbols_icons',
      );
      widget = DSAvatar.medium.icon(
        icon: iconData,
        background: resolveCardColor(
          colors,
          name: layer.backgroundColor,
          hexColor: layer.hexBackgroundColor,
          fallback: colors.sysPrimary,
        ),
        widgetColor: resolveCardColor(
          colors,
          name: layer.color,
          hexColor: layer.hexColor,
          fallback: colors.sysOnPrimary,
        ),
      );
    } else {
      widget = _DsButtonCardSymbolIcon(
        codePoint: codePoint,
        color: resolveCardColor(
          colors,
          name: layer.color,
          hexColor: layer.hexColor,
          fallback: colors.sysOnSurface,
        ),
        dsSize: resolveDsSize(layer.iconSize),
        fontSize: layer.sizePx,
      );
    }

    final top = resolveCardSpacing(layer.marginTop);
    final left = resolveCardSpacing(layer.marginLeft);
    final bottom = resolveCardSpacing(layer.marginBottom);
    final right = resolveCardSpacing(layer.marginRight);
    if (top > 0 || left > 0 || bottom > 0 || right > 0) {
      widget = Padding(
        padding: EdgeInsets.only(
          top: top,
          left: left,
          bottom: bottom,
          right: right,
        ),
        child: widget,
      );
    }
    return widget;
  }

  /// Glifo grande e translucido usado como textura de fundo.
  ///
  /// Sem [DSButtonCardContentTextureIcon.name]/`codePoint`, herda o icone de
  /// [content.icon]. Retorna null quando nao ha icone resolvivel.
  Widget? _buildTextureIcon(
    BuildContext context,
    ColorsThemeExtension colors,
    DSButtonCardContentTextureIcon layer,
  ) {
    final name = layer.name ?? content.icon?.name;
    final codePoint = layer.codePoint ?? content.icon?.codePoint;
    final resolvedCodePoint = resolveCardIconCodePoint(
      name: name,
      codePoint: codePoint,
    );

    final builder = iconBuilder ?? globalIconBuilder;
    if (builder == null && resolvedCodePoint == null) {
      return null;
    }

    final size = layer.effectiveSize;
    final color = resolveCardColor(
      colors,
      name: layer.color,
      hexColor: layer.hexColor,
      fallback: colors.sysOnSurface,
    );

    Widget glyph;
    if (builder != null) {
      // Delega ao host para que icones fora do mapa Material Symbols
      // (FontAwesome, fontes de ícones próprias, ...) tambem sejam resolvidos.
      glyph = builder(
        context,
        DSButtonCardContentIcon(
          index: layer.index,
          name: name,
          codePoint: codePoint,
          color: layer.color,
          hexColor: layer.hexColor,
          sizePx: size,
          avatar: false,
          decorative: true,
        ),
      );
    } else {
      glyph = _DsButtonCardSymbolIcon(
        codePoint: resolvedCodePoint!,
        color: color,
        fontSize: size,
      );
    }

    final position = layer.effectivePosition;
    final bleed = size * DSButtonCardContentTextureIcon.defaultBleedFactor;
    final alignment = _alignmentOf(position);

    return IgnorePointer(
      child: Opacity(
        opacity: layer.effectiveOpacity,
        child: Align(
          alignment: alignment,
          child: Transform.translate(
            offset: Offset(
              layer.offsetX ?? alignment.x * bleed,
              layer.offsetY ?? alignment.y * bleed,
            ),
            child: SizedBox(
              width: size,
              height: size,
              child: OverflowBox(
                minWidth: 0,
                minHeight: 0,
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                alignment: Alignment.center,
                child: glyph,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackground(
    ColorsThemeExtension colors,
    DSButtonCardContentBackground layer,
  ) {
    final color = resolveCardColor(
      colors,
      name: layer.color,
      hexColor: layer.hexColor,
      fallback: colors.sysSurfaceTinted,
    );
    final box = ColoredBox(color: color);
    if (layer.position == null) {
      return box;
    }
    return FractionallySizedBox(
      widthFactor: 0.5,
      heightFactor: 0.5,
      child: box,
    );
  }

  Widget _buildTextureImage(
    BuildContext context,
    DSButtonCardContentTextureImage layer,
  ) {
    final fit = resolveBoxFit(layer.fit);
    final builder = imageBuilder ?? globalImageBuilder;
    Widget image = builder != null
        ? builder(context, layer.src, fit)
        : buildCardImage(layer.src, fit);

    if (layer.opacity != null) {
      image = Opacity(
        opacity: layer.opacity!.clamp(0.0, 1.0),
        child: image,
      );
    }

    return image;
  }

  Widget _buildImage(BuildContext context, DSButtonCardContentImage layer) {
    final fit = resolveBoxFit(layer.fit);
    final builder = imageBuilder ?? globalImageBuilder;
    final image = builder != null
        ? builder(context, layer.src, fit)
        : buildCardImage(layer.src, fit);

    Widget widget;
    if (layer.position == null) {
      widget = image;
    } else {
      final size = layer.fitSize ?? (DSSize.medium.icon() * 2);
      widget = SizedBox(
        width: size,
        height: size,
        child: image,
      );
    }

    final top = resolveCardSpacing(layer.marginTop);
    final left = resolveCardSpacing(layer.marginLeft);
    final bottom = resolveCardSpacing(layer.marginBottom);
    final right = resolveCardSpacing(layer.marginRight);
    if (top > 0 || left > 0 || bottom > 0 || right > 0) {
      widget = Padding(
        padding: EdgeInsets.only(
          top: top,
          left: left,
          bottom: bottom,
          right: right,
        ),
        child: widget,
      );
    }
    return widget;
  }

  Widget _buildText(
    ColorsThemeExtension colors,
    TextsThemeExtension texts,
    DSButtonCardContentText layer,
  ) {
    final style = resolveCardTextStyle(texts, layer.textStyle).copyWith(
      color: resolveCardColor(
        colors,
        name: layer.color,
        hexColor: layer.hexColor,
        fallback: colors.sysOnSurface,
      ),
    );
    Widget text = DSText(
      layer.text!.tr,
      autoSize: false,
      style: style,
      textAlign: layer.textAlign,
    );
    if (layer.maxWidth != null) {
      text = ConstrainedBox(
        constraints: BoxConstraints(maxWidth: layer.maxWidth!),
        child: text,
      );
    }
    final top = resolveCardSpacing(layer.marginTop);
    final left = resolveCardSpacing(layer.marginLeft);
    final bottom = resolveCardSpacing(layer.marginBottom);
    final right = resolveCardSpacing(layer.marginRight);
    if (top > 0 || left > 0 || bottom > 0 || right > 0) {
      text = Padding(
        padding: EdgeInsets.only(
          top: top,
          left: left,
          bottom: bottom,
          right: right,
        ),
        child: text,
      );
    }
    return text;
  }

  Widget _wrapLayer({
    required DSButtonCardContentPosition? position,
    required bool fillWhenUnpositioned,
    required Widget child,
  }) {
    if (position == null && fillWhenUnpositioned) {
      return Positioned.fill(child: child);
    }
    return Align(
      alignment: _alignmentOf(position),
      child: Padding(
        padding: EdgeInsets.all(DSSize.small.padding()),
        child: OverflowBox(
          minHeight: 0,
          maxHeight: double.infinity,
          alignment: _alignmentOf(position),
          child: child,
        ),
      ),
    );
  }

  Alignment _alignmentOf(DSButtonCardContentPosition? position) {
    switch (position) {
      case DSButtonCardContentPosition.topLeft:
        return Alignment.topLeft;
      case DSButtonCardContentPosition.topCenter:
        return Alignment.topCenter;
      case DSButtonCardContentPosition.topRight:
        return Alignment.topRight;
      case DSButtonCardContentPosition.bottomLeft:
        return Alignment.bottomLeft;
      case DSButtonCardContentPosition.bottomCenter:
        return Alignment.bottomCenter;
      case DSButtonCardContentPosition.bottomRight:
        return Alignment.bottomRight;
      case DSButtonCardContentPosition.centerLeft:
        return Alignment.centerLeft;
      case DSButtonCardContentPosition.centerRight:
        return Alignment.centerRight;
      case DSButtonCardContentPosition.centerCenter:
      case null:
        return Alignment.center;
    }
  }
}

/// Glifo Material Symbols via codepoint dinâmico.
/// O [IconData] do Flutter exige `codePoint` constante, então o JSON não
/// consegue instanciar [DSIcon] em runtime.
class _DsButtonCardSymbolIcon extends StatelessWidget {
  const _DsButtonCardSymbolIcon({
    required this.codePoint,
    required this.color,
    this.dsSize,
    this.fontSize,
  }) : assert(dsSize != null || fontSize != null);

  final int codePoint;
  final Color color;
  final DSSize? dsSize;

  /// Tamanho numerico, usado quando o teto do enum [DSSize] nao serve.
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      String.fromCharCode(codePoint),
      style: TextStyle(
        fontFamily: 'MaterialSymbolsOutlined',
        package: 'material_symbols_icons',
        fontSize: fontSize ?? dsSize!.icon(),
        color: color,
        height: 1,
      ),
    );
  }
}
