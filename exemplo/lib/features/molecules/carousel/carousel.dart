import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/carousel/ds_carousel.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:flutter/material.dart';

import '../../../ui/knobs_utils.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.knobSliderDSSize(
      label: 'Size',
      initial: DSSize.medium,
    );

    final preset = DSCarousel.fromSize(size);
    final cards = _buildCards();
    final uncontainedHeight = preset.height(DSCarouselType.uncontained);
    final heroHeight = preset.height(DSCarouselType.hero);
    final centerHeroHeight = preset.height(DSCarouselType.centerAlignedHero);
    final multiBrowseHeight = preset.height(DSCarouselType.multiBrowse);
    final fullScreenHeight = preset.height(DSCarouselType.fullScreen);

    return DSScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DSText('Uncontained',
                    style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
                  height: uncontainedHeight,
                  width: double.infinity,
                  child: preset.uncontained(
                    cards: cards,
                    tagName: 'carousel-uncontained',
                  ),
                ),
                const SizedBox(height: 30),
                DSText('Hero', style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
                  height: heroHeight,
                  width: double.infinity,
                  child: preset.hero(
                    cards: cards,
                    tagName: 'carousel-hero',
                  ),
                ),
                const SizedBox(height: 30),
                DSText('Center Aligned Hero',
                    style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
                  height: centerHeroHeight,
                  width: double.infinity,
                  child: preset.centerAlignedHero(
                    cards: cards,
                    tagName: 'carousel-center-hero',
                  ),
                ),
                const SizedBox(height: 30),
                DSText('Multi Browse',
                    style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
                  height: multiBrowseHeight,
                  width: double.infinity,
                  child: preset.multiBrowse(
                    cards: cards,
                    tagName: 'carousel-multi-browse',
                  ),
                ),
                const SizedBox(height: 30),
                DSText('Full Screen',
                    style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
                  height: fullScreenHeight,
                  width: double.infinity,
                  child: preset.fullScreen(
                    cards: cards,
                    tagName: 'carousel-fullscreen',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildCards() {
    return List.generate(
      10,
      (index) => Image.asset(
        'assets/exemple_media.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
