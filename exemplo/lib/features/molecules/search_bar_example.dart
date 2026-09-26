import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/components/molecules/search/ds_search_bar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class SearchBarExample extends StatefulWidget {
  const SearchBarExample({super.key});

  @override
  State<SearchBarExample> createState() => _SearchBarExampleState();
}

class _SearchBarExampleState extends State<SearchBarExample> {
  final List<_MockItem> _allItems = List.generate(
    20,
    (index) => _MockItem(
      title: 'Item Title ${index + 1}',
      description:
          'This is a supporting expanded text description for item ${index + 1} to demonstrate multi-line search results.',
      initial: String.fromCharCode(65 + (index % 26)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final showLeading = context.knobs.boolean(
      label: 'Show Leading Icon',
      initial: true,
    );

    final showTrailingSearch = context.knobs.boolean(
      label: 'Show Trailing Search Icon',
      initial: true,
    );

    final showTrailingAvatar = context.knobs.boolean(
      label: 'Show Trailing Avatar',
      initial: true,
    );

    // --- Icons ---
    final Color iconColor = context.colors.sysOnSurfaceVariant;

    final Widget leadingWidget = showLeading
        ? DSIcon.custom(
            icon: Icons.menu,
            color: iconColor,
            size: 24,
          )
        : const SizedBox.shrink();

    final List<Widget> trailingWidgets = [
      if (showTrailingSearch)
        DSIcon.custom(
          icon: Icons.search,
          color: iconColor,
          size: 26,
        ),
      if (showTrailingAvatar) ...[
        const SizedBox(width: 16),
        DSAvatar.initial(
                containerSize: DSSize.small,
                avatarSize: DSSize.medium,
                widgetColor: context.colors.sysOnPrimaryContainer,
                initial: 'A')
            .copyWith(borderRadius: 100),
      ]
    ];

    return DSScaffold(
      appBar: AppBar(
        title: Text('Search Bar', style: context.texts.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================= INTERACTIVE DEMO =================
              Text('Interactive Demo', style: context.texts.titleMedium),
              const SizedBox(height: 16),
              const Text('Tap to search list items:'),
              const SizedBox(height: 8),

              Center(
                child: DSSearchAnchor.searchBar(
                  barHintText: 'Search items...',
                  barLeading: leadingWidget,
                  barTrailing: trailingWidgets,
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    final keyword = controller.text.toLowerCase();
                    final results = _allItems
                        .where((item) =>
                            item.title.toLowerCase().contains(keyword) ||
                            item.description.toLowerCase().contains(keyword))
                        .toList();

                    return results.map((item) {
                      return DSListTile(
                        title: Text(item.title),
                        density: DSListTileDensity.compact,
                        supportingText: Text(item.description),
                        leading: DSAvatar.medium.initial(initial: item.initial),
                        onTap: () {
                          controller.closeView(item.title);
                        },
                      );
                    });
                  },
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL VERIFICATION =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 8),
              Text(
                'Static simulation using DSSearchViewStatic (Internal component)',
                style: context.texts.bodyMedium
                    .copyWith(color: context.colors.sysOnSurfaceVariant),
              ),
              const SizedBox(height: 24),

              // 1. Standard View - No Results
              _buildVisualSection(context, '1. Standard View - No Results'),
              Center(
                child: _DSSearchViewStatic(
                  isFullScreen: false,
                  hintText: 'Search items...',
                  leading: leadingWidget,
                  trailing: trailingWidgets,
                  children: const [],
                ),
              ),

              const SizedBox(height: 32),

              // 2. Standard View - With Results
              _buildVisualSection(context, '2. Standard View - 3 Results'),
              Center(
                child: _DSSearchViewStatic(
                  isFullScreen: false,
                  hintText: 'Search items...',
                  leading: leadingWidget,
                  trailing: trailingWidgets,
                  children: _buildStaticListItems(_allItems.take(3).toList()),
                ),
              ),

              const SizedBox(height: 32),

              // 3. Full Screen View - No Results
              _buildVisualSection(context, '3. Full Screen - No Results'),
              _DSSearchViewStatic(
                isFullScreen: true,
                hintText: 'Search items...',
                leading: const Icon(Icons.arrow_back),
                trailing: trailingWidgets,
                children: const [],
              ),

              const SizedBox(height: 32),

              // 4. Full Screen View - With Results
              _buildVisualSection(context, '4. Full Screen - 3 Results'),
              _DSSearchViewStatic(
                isFullScreen: true,
                hintText: 'Search items...',
                leading: const Icon(Icons.arrow_back),
                trailing: trailingWidgets,
                children: _buildStaticListItems(_allItems.take(3).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVisualSection(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: context.texts.titleSmall.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  List<Widget> _buildStaticListItems(List<_MockItem> items) {
    return items.map((item) {
      return DSListTile(
        title: Text(item.title),
        density: DSListTileDensity.standard,
        supportingText: Text(item.description),
        leading: DSAvatar.medium.initial(
            initial: item.initial,
            widgetColor: context.colors.sysOnPrimaryContainer),
        onTap: () {},
      );
    }).toList();
  }
}

class _MockItem {
  final String title;
  final String description;
  final String initial;

  _MockItem({
    required this.title,
    required this.description,
    required this.initial,
  });
}

/// A static view of the [DSSearchAnchor] opened state.
class _DSSearchViewStatic extends StatelessWidget {
  const _DSSearchViewStatic({
    required this.children,
    this.leading,
    this.trailing,
    this.hintText,
    this.isFullScreen = false,
  });

  final List<Widget> children;
  final Widget? leading;
  final List<Widget>? trailing;
  final String? hintText;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final backgroundColor = colors.sysSurfaceContainerHigh;
    final dividerColor = colors.sysOutlineVariant;
    final textStyle =
        texts.bodyLarge.copyWith(color: colors.sysOnSurfaceVariant);
    final hintStyle = texts.bodyLarge
        .copyWith(color: colors.sysOnSurfaceVariant.withValues(alpha: 0.7));

    final shape = isFullScreen
        ? const RoundedRectangleBorder(borderRadius: BorderRadius.zero)
        : RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));

    final double width = isFullScreen ? double.infinity : 360;

    const double headerHeight = 56.0;

    return Container(
      width: width,
      constraints: BoxConstraints(
        minHeight: isFullScreen ? 100 : 0,
        maxHeight: isFullScreen ? double.infinity : 400,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: shape,
        shadows: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header (SearchBar)
          SizedBox(
            height: headerHeight,
            child: SearchBar(
              leading: leading ?? const Icon(Icons.arrow_back),
              trailing: trailing,
              hintText: hintText,
              controller: TextEditingController(),
              backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
              elevation: const WidgetStatePropertyAll(0),
              overlayColor: const WidgetStatePropertyAll(Colors.transparent),
              textStyle: WidgetStatePropertyAll(textStyle),
              hintStyle: WidgetStatePropertyAll(hintStyle),
              constraints: const BoxConstraints(minHeight: headerHeight),
              shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
            ),
          ),
          Divider(height: 1, color: dividerColor),
          // Suggestions List
          children.isEmpty
              ? SizedBox(
                  height: 80,
                  child: Center(
                    child: Text(
                      'No recent history',
                      style: texts.bodyMedium
                          .copyWith(color: colors.sysOnSurfaceVariant),
                    ),
                  ),
                )
              : Flexible(
                  fit: FlexFit.loose,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: children,
                  ),
                ),
        ],
      ),
    );
  }
}
