import 'package:design_system/core/components/atoms/badge/ds_badge.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/navigation_bar/ds_navigation_bar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system_exemplo/features/atoms/content_placeholder/content_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({super.key});

  @override
  State<NavigationBarExample> createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---

    final destinationCount = context.knobs.sliderInt(
      label: 'Destination Count',
      initial: 3,
      min: 3,
      max: 5,
      divisions: 2,
    );

    final labelBehavior = context.knobs.options(
      label: 'Label Behavior',
      initial: NavigationDestinationLabelBehavior.alwaysShow,
      options: const [
        Option(
          label: 'Always Show',
          value: NavigationDestinationLabelBehavior.alwaysShow,
        ),
        Option(
          label: 'Always Hide',
          value: NavigationDestinationLabelBehavior.alwaysHide,
        ),
        Option(
          label: 'Only Show Selected',
          value: NavigationDestinationLabelBehavior.onlyShowSelected,
        ),
      ],
    );

    final showBadges = context.knobs.boolean(
      label: 'Show Badges',
      initial: true,
    );

    final showBadgeNumbers = context.knobs.boolean(
      label: 'Show Badge Numbers',
      description: 'If false (and badges are on), shows a red dot.',
      initial: false,
    );

    if (_selectedIndex >= destinationCount) {
      _selectedIndex = destinationCount - 1;
    }

    return DSScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DSBadge(
              label: (showBadges && showBadgeNumbers && _selectedIndex == 2)
                  ? const DSText(
                      '3',
                      autoSize: false,
                    )
                  : null,
              isLabelVisible:
                  showBadges && (_selectedIndex == 2 || _selectedIndex == 4),
              child: ContentPlaceholder(
                variant: _selectedIndex,
                iconSize: DSSize.large,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Selected Page: Item ${_selectedIndex + 1}',
              style: context.texts.titleMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: DSNavigationBar(
        selectedIndex: _selectedIndex,
        labelBehavior: labelBehavior,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: List.generate(destinationCount, (index) {
          // Demo Logic for Badges:
          // Index 2 and 4: Shows badge (dot or number) if enabled.
          final shouldShowBadge = showBadges && (index == 2 || index == 4);

          String? badgeText;
          if (shouldShowBadge && showBadgeNumbers) {
            badgeText = index == 2 ? '3' : '10+';
          }

          return DSNavigationDestination(
            icon: ContentPlaceholder(
              variant: index,
              size: DSSize.extraSmall,
              iconSize: DSSize.medium,
            ),
            label: 'Item ${index + 1}',
            showBadge: shouldShowBadge,
            badgeLabel: badgeText,
          );
        }),
      ),
    );
  }
}
