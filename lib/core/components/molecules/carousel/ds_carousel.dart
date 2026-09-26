import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSCarouselPreset {
  const DSCarouselPreset._(this.size);

  final DSSize size;

  DSCarousel uncontained({
    Key? key,
    required List<Widget> cards,
    required String tagName,
    List<int>? flexWeights,
    double? maxWidth,
    double? maxHeight,
    double? itemExtend,
    double? shrinkExtend,
    bool blankLastItem = false,
    Color? lastItemColor,
    ValueChanged<int>? onTap,
  }) {
    return DSCarousel.uncontained(
      key: key,
      cards: cards,
      tagName: tagName,
      flexWeights: flexWeights ?? const [6, 1],
      maxWidth: maxWidth,
      maxHeight: maxHeight ?? _maxHeight(),
      itemExtend: itemExtend ?? _itemExtent(),
      shrinkExtend: shrinkExtend ?? _shrinkExtent(),
      blankLastItem: blankLastItem,
      lastItemColor: lastItemColor,
      dsCarouselType: DSCarouselType.uncontained,
      onTap: onTap,
    );
  }

  DSCarousel hero({
    Key? key,
    required List<Widget> cards,
    required String tagName,
    List<int>? flexWeights,
    double? maxHeight,
    bool blankLastItem = true,
    Color? lastItemColor,
    ValueChanged<int>? onTap,
  }) {
    return DSCarousel.hero(
      key: key,
      tagName: tagName,
      cards: cards,
      flexWeights: flexWeights ?? const [6, 1],
      maxHeight: maxHeight ?? _maxHeight(),
      blankLastItem: blankLastItem,
      lastItemColor: lastItemColor,
      dsCarouselType: DSCarouselType.hero,
      onTap: onTap,
    );
  }

  DSCarousel centerAlignedHero({
    Key? key,
    required List<Widget> cards,
    required String tagName,
    List<int>? flexWeights,
    double? maxHeight,
    bool blankLastItem = true,
    Color? lastItemColor,
    ValueChanged<int>? onTap,
  }) {
    return DSCarousel.centerAlignedHero(
      key: key,
      tagName: tagName,
      cards: cards,
      flexWeights: flexWeights ?? const [1, 8, 1],
      maxHeight: maxHeight ?? _maxHeight(),
      blankLastItem: blankLastItem,
      lastItemColor: lastItemColor,
      dsCarouselType: DSCarouselType.centerAlignedHero,
      onTap: onTap,
    );
  }

  DSCarousel multiBrowse({
    Key? key,
    required List<Widget> cards,
    required String tagName,
    List<int>? flexWeights,
    double? maxHeight,
    bool blankLastItem = true,
    Color? lastItemColor,
    ValueChanged<int>? onTap,
  }) {
    return DSCarousel.multiBrowse(
      key: key,
      tagName: tagName,
      cards: cards,
      flexWeights: flexWeights ?? const [3, 2, 1],
      maxHeight: maxHeight ?? _maxHeight(),
      blankLastItem: blankLastItem,
      lastItemColor: lastItemColor,
      dsCarouselType: DSCarouselType.multiBrowse,
      onTap: onTap,
    );
  }

  DSCarousel fullScreen({
    Key? key,
    required List<Widget> cards,
    required String tagName,
    List<int>? flexWeights,
    double? maxHeight,
    bool blankLastItem = false,
    Color? lastItemColor,
    ValueChanged<int>? onTap,
  }) {
    return DSCarousel.fullScreen(
      key: key,
      tagName: tagName,
      cards: cards,
      flexWeights: flexWeights ?? const [1],
      maxHeight: maxHeight ?? _maxHeight(isFullScreen: true),
      blankLastItem: blankLastItem,
      lastItemColor: lastItemColor,
      dsCarouselType: DSCarouselType.fullScreen,
      onTap: onTap,
    );
  }

  double height(DSCarouselType type) {
    switch (type) {
      case DSCarouselType.fullScreen:
        return _maxHeight(isFullScreen: true);
      case DSCarouselType.hero:
      case DSCarouselType.centerAlignedHero:
      case DSCarouselType.multiBrowse:
      case DSCarouselType.uncontained:
        return _maxHeight();
    }
  }

  static DSCarouselPreset fromSize(DSSize size) {
    switch (size) {
      case DSSize.extraSmall:
        return DSCarousel.extraSmall;
      case DSSize.small:
        return DSCarousel.small;
      case DSSize.medium:
        return DSCarousel.medium;
      case DSSize.large:
        return DSCarousel.large;
      case DSSize.extraLarge:
        return DSCarousel.extraLarge;
    }
  }

  double _maxHeight({bool isFullScreen = false}) {
    if (isFullScreen) {
      switch (size) {
        case DSSize.extraSmall:
          return 420.0;
        case DSSize.small:
          return 460.0;
        case DSSize.medium:
          return 500.0;
        case DSSize.large:
          return 560.0;
        case DSSize.extraLarge:
          return 620.0;
      }
    }

    switch (size) {
      case DSSize.extraSmall:
        return 180.0;
      case DSSize.small:
        return 210.0;
      case DSSize.medium:
        return 250.0;
      case DSSize.large:
        return 300.0;
      case DSSize.extraLarge:
        return 360.0;
    }
  }

  double _itemExtent() {
    switch (size) {
      case DSSize.extraSmall:
        return 260.0;
      case DSSize.small:
        return 300.0;
      case DSSize.medium:
        return 350.0;
      case DSSize.large:
        return 420.0;
      case DSSize.extraLarge:
        return 500.0;
    }
  }

  double _shrinkExtent() {
    switch (size) {
      case DSSize.extraSmall:
        return 140.0;
      case DSSize.small:
        return 160.0;
      case DSSize.medium:
        return 180.0;
      case DSSize.large:
        return 200.0;
      case DSSize.extraLarge:
        return 220.0;
    }
  }
}

enum DSCarouselType {
  hero,
  uncontained,
  centerAlignedHero,
  multiBrowse,
  fullScreen,
}

class DSCarousel extends StatefulWidget {
  static const DSCarouselPreset extraSmall =
      DSCarouselPreset._(DSSize.extraSmall);

  static const DSCarouselPreset small = DSCarouselPreset._(DSSize.small);

  static const DSCarouselPreset medium = DSCarouselPreset._(DSSize.medium);

  static const DSCarouselPreset large = DSCarouselPreset._(DSSize.large);

  static const DSCarouselPreset extraLarge =
      DSCarouselPreset._(DSSize.extraLarge);

  static DSCarouselPreset fromSize(DSSize size) {
    return DSCarouselPreset.fromSize(size);
  }

  const DSCarousel.uncontained({
    super.key,
    required this.cards,
    required this.tagName,
    this.flexWeights = const [6, 1],
    this.maxWidth,
    this.maxHeight,
    this.itemExtend,
    this.dsCarouselType = DSCarouselType.uncontained,
    this.shrinkExtend,
    this.blankLastItem = false,
    this.lastItemColor,
    this.onTap,
  });

  const DSCarousel.hero({
    super.key,
    required this.tagName,
    required this.cards,
    this.flexWeights = const [6, 1],
    this.maxHeight = 250,
    this.dsCarouselType = DSCarouselType.hero,
    this.blankLastItem = true,
    this.lastItemColor,
    this.onTap,
  })  : maxWidth = null,
        shrinkExtend = 0,
        itemExtend = 0;

  const DSCarousel.centerAlignedHero({
    super.key,
    required this.tagName,
    required this.cards,
    this.flexWeights = const [1, 8, 1],
    this.maxHeight = 250,
    this.dsCarouselType = DSCarouselType.centerAlignedHero,
    this.blankLastItem = true,
    this.lastItemColor,
    this.onTap,
  })  : maxWidth = null,
        shrinkExtend = 0,
        itemExtend = 0;

  const DSCarousel.multiBrowse({
    super.key,
    required this.tagName,
    required this.cards,
    this.flexWeights = const [3, 2, 1],
    this.maxHeight = 250,
    this.dsCarouselType = DSCarouselType.centerAlignedHero,
    this.blankLastItem = true,
    this.lastItemColor,
    this.onTap,
  })  : maxWidth = null,
        shrinkExtend = 0,
        itemExtend = 0;

  const DSCarousel.fullScreen({
    super.key,
    required this.tagName,
    required this.cards,
    this.flexWeights = const [1],
    this.maxHeight = 500,
    this.dsCarouselType = DSCarouselType.fullScreen,
    this.blankLastItem = true,
    this.lastItemColor,
    this.onTap,
  })  : maxWidth = null,
        shrinkExtend = 0,
        itemExtend = 0;

  final String tagName;
  final List<Widget> cards;
  final List<int> flexWeights;
  final double? maxWidth;
  final double? maxHeight;
  final double? itemExtend;
  final double? shrinkExtend;
  final DSCarouselType dsCarouselType;
  final bool blankLastItem;
  final Color? lastItemColor;
  final ValueChanged<int>? onTap;

  DSCarousel copyWith({
    List<Widget>? cards,
    String? tagName,
    List<int>? flexWeights,
    double? maxWidth,
    double? maxHeight,
    double? itemExtend,
    double? shrinkExtend,
    DSCarouselType? dsCarouselType,
    bool? blankLastItem,
    Color? lastItemColor,
    ValueChanged<int>? onTap,
  }) {
    final resolvedType = dsCarouselType ?? this.dsCarouselType;
    final resolvedBlankLastItem = blankLastItem ?? this.blankLastItem;

    switch (resolvedType) {
      case DSCarouselType.hero:
        return DSCarousel.hero(
          key: key,
          tagName: tagName ?? this.tagName,
          cards: cards ?? this.cards,
          flexWeights: flexWeights ?? this.flexWeights,
          maxHeight: maxHeight ?? this.maxHeight,
          dsCarouselType: resolvedType,
          blankLastItem: resolvedBlankLastItem,
          lastItemColor: lastItemColor ?? this.lastItemColor,
          onTap: onTap ?? this.onTap,
        );
      case DSCarouselType.centerAlignedHero:
        return DSCarousel.centerAlignedHero(
          key: key,
          tagName: tagName ?? this.tagName,
          cards: cards ?? this.cards,
          flexWeights: flexWeights ?? this.flexWeights,
          maxHeight: maxHeight ?? this.maxHeight,
          dsCarouselType: resolvedType,
          blankLastItem: resolvedBlankLastItem,
          lastItemColor: lastItemColor ?? this.lastItemColor,
          onTap: onTap ?? this.onTap,
        );
      case DSCarouselType.multiBrowse:
        return DSCarousel.multiBrowse(
          key: key,
          tagName: tagName ?? this.tagName,
          cards: cards ?? this.cards,
          flexWeights: flexWeights ?? this.flexWeights,
          maxHeight: maxHeight ?? this.maxHeight,
          dsCarouselType: resolvedType,
          blankLastItem: resolvedBlankLastItem,
          lastItemColor: lastItemColor ?? this.lastItemColor,
          onTap: onTap ?? this.onTap,
        );
      case DSCarouselType.fullScreen:
        return DSCarousel.fullScreen(
          key: key,
          tagName: tagName ?? this.tagName,
          cards: cards ?? this.cards,
          flexWeights: flexWeights ?? this.flexWeights,
          maxHeight: maxHeight ?? this.maxHeight,
          dsCarouselType: resolvedType,
          blankLastItem: resolvedBlankLastItem,
          lastItemColor: lastItemColor ?? this.lastItemColor,
          onTap: onTap ?? this.onTap,
        );
      case DSCarouselType.uncontained:
        return DSCarousel.uncontained(
          key: key,
          cards: cards ?? this.cards,
          tagName: tagName ?? this.tagName,
          flexWeights: flexWeights ?? this.flexWeights,
          maxWidth: maxWidth ?? this.maxWidth,
          maxHeight: maxHeight ?? this.maxHeight,
          itemExtend: itemExtend ?? this.itemExtend,
          shrinkExtend: shrinkExtend ?? this.shrinkExtend,
          dsCarouselType: resolvedType,
          blankLastItem: resolvedBlankLastItem,
          lastItemColor: lastItemColor ?? this.lastItemColor,
          onTap: onTap ?? this.onTap,
        );
    }
  }

  @override
  State<DSCarousel> createState() => _DSCarouselState();
}

class _DSCarouselState extends State<DSCarousel> {
  @override
  Widget build(BuildContext context) {
    final children = _buildChildren();

    switch (widget.dsCarouselType) {
      case DSCarouselType.hero:
      case DSCarouselType.centerAlignedHero:
      case DSCarouselType.multiBrowse:
      case DSCarouselType.fullScreen:
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: widget.maxWidth ?? MediaQuery.sizeOf(context).width - 16,
            maxHeight: widget.maxHeight ?? 250,
          ),
          child: CarouselView.weighted(
            flexWeights: widget.flexWeights,
            consumeMaxWeight: false,
            itemSnapping: true,
            scrollDirection: Axis.horizontal,
            onTap: widget.onTap,
            children: children,
          ),
        );
      case DSCarouselType.uncontained:
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: widget.maxWidth ?? MediaQuery.sizeOf(context).width - 16,
            maxHeight: widget.maxHeight ?? 250,
          ),
          child: CarouselView(
            itemExtent: widget.itemExtend ?? 350,
            shrinkExtent: widget.shrinkExtend ?? 180,
            scrollDirection: Axis.horizontal,
            onTap: widget.onTap,
            children: children,
          ),
        );
    }
  }

  List<Widget> _buildChildren() {
    final items = List<Widget>.generate(
      widget.cards.length,
      (index) => buildHero(
        tag: '${widget.tagName}-$index',
        child: widget.cards[index],
      ),
    );

    if (widget.blankLastItem) {
      items.add(_blankItem());
    }

    return items;
  }

  Widget _blankItem() {
    return Container(
      color: widget.lastItemColor ?? context.colors.sysSurface,
    );
  }

  Widget buildHero({
    required String tag,
    required Widget child,
  }) {
    return Hero(
      tag: tag,
      child: FittedBox(
        fit: BoxFit.cover,
        child: child,
      ),
    );
  }
}
