import 'package:flutter/material.dart';

enum DSCarouselType {
  hero,
  uncontained,
  centerAlignedHero,
  multiBrowse,
  fullScreen,
}

class DSCarousel extends StatefulWidget {
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
  });

  const DSCarousel.hero({
    super.key,
    required this.tagName,
    required this.cards,
    this.flexWeights = const [6, 1],
    this.maxHeight = 250,
    this.dsCarouselType = DSCarouselType.hero,
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

  @override
  State<DSCarousel> createState() => _DSCarouselState();
}

class _DSCarouselState extends State<DSCarousel> {
  @override
  Widget build(BuildContext context) {
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
            children: List.generate(
              widget.cards.length,
              (index) => buildHero(
                tag: '${widget.tagName}-$index',
                child: widget.cards[index],
              ),
            ),
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
            children: List.generate(
              widget.cards.length,
              (index) => buildHero(
                tag: '${widget.tagName}-$index',
                child: widget.cards[index],
              ),
            ),
          ),
        );
    }
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
