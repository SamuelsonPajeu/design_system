import 'package:design_system/core/components/molecules/carousel/ds_carousel.dart';
import 'package:flutter/material.dart';

import 'package:storybook_flutter/storybook_flutter.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DSCarousel.uncontained(
                itemExtend: context.knobs.slider(
                  label: 'itemExtend',
                  initial: 350,
                  min: 100,
                  max: 1000,
                ),
                shrinkExtend: context.knobs.slider(
                  label: 'shrinkExtend',
                  initial: 180,
                  min: 100,
                  max: 300,
                ),
                maxHeight: context.knobs.slider(
                  label: 'maxHeight',
                  initial: 250,
                  min: 0,
                  max: 1000,
                ),
                maxWidth: context.knobs.slider(
                  label: 'maxWidth',
                  initial: MediaQuery.sizeOf(context).width - 16,
                  min: 0,
                  max: 1920,
                ),
                cards: List.generate(
                  20,
                  (index) => Container(
                    color: getColor(context, index),
                    child: Padding(
                      padding: EdgeInsets.all(
                        context.knobs.slider(
                          label: 'Content Pading',
                          initial: 16,
                          min: 0,
                          max: 100,
                        ),
                      ),
                      child: Center(
                        child: Text('Container $index'),
                      ),
                    ),
                  ),
                ),
                dsCarouselType: DSCarouselType.uncontained,
                tagName: 'container',
              ),
              const SizedBox(height: 30),
              DSCarousel.hero(
                cards: List.generate(
                  10,
                  (index) => Container(
                    color: getColor(context, index),
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Center(
                        child: Text('Hero $index'),
                      ),
                    ),
                  ),
                ),
                tagName: 'container_hero',
              ),
              const SizedBox(height: 30),
              DSCarousel.centerAlignedHero(
                cards: List.generate(
                  10,
                  (index) => Container(
                    color: getColor(context, index),
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Center(
                        child: Text('Center Hero $index'),
                      ),
                    ),
                  ),
                ),
                tagName: 'center_hero',
              ),
              const SizedBox(height: 30),
              DSCarousel.multiBrowse(
                cards: List.generate(
                  10,
                  (index) => Container(
                    color: getColor(context, index),
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Center(
                        child: Text('Multi Browse $index'),
                      ),
                    ),
                  ),
                ),
                tagName: 'multi_browse',
              ),
              const SizedBox(height: 30),
              DSCarousel.uncontained(
                cards: List.generate(
                  10,
                  (index) => Container(
                    color: getColor(context, index),
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Center(
                        child: Text('Uncontained $index'),
                      ),
                    ),
                  ),
                ),
                tagName: 'uncontained',
              ),
              const SizedBox(height: 30),
              DSCarousel.fullScreen(
                cards: List.generate(
                  10,
                  (index) => Container(
                    color: getColor(context, index),
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Center(
                        child: Text('FullScreen $index'),
                      ),
                    ),
                  ),
                ),
                tagName: 'fullscreen',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getColor(BuildContext context, int index) {
    List<Color> colors = [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.tertiary,
      Theme.of(context).colorScheme.surfaceContainer,
    ];

    return colors[index % colors.length];
  }
}
