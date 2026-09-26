import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/components/molecules/top_app_bar/ds_top_app_bar.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

enum _ScreenSize {
  small('Small (< 600)', 400.0),
  medium('Medium (600-840)', 700.0),
  large('Large (> 840)', 900.0);

  final String label;
  final double width;
  const _ScreenSize(this.label, this.width);
}

class TopAppBarExample extends StatefulWidget {
  const TopAppBarExample({super.key});

  @override
  State<TopAppBarExample> createState() => _TopAppBarExampleState();
}

class _TopAppBarExampleState extends State<TopAppBarExample> {
  bool _isSearchBarVisible = false;

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final variant = context.knobs.options(
      label: 'Variant',
      initial: DSTopAppBarType.home,
      options: const [
        Option(label: 'Home', value: DSTopAppBarType.home),
        Option(label: 'Centered', value: DSTopAppBarType.centered),
        Option(label: 'Responsive', value: DSTopAppBarType.responsive),
        Option(label: 'Fixed Small', value: DSTopAppBarType.small),
        Option(label: 'Fixed Medium', value: DSTopAppBarType.medium),
        Option(label: 'Fixed Large', value: DSTopAppBarType.large),
      ],
    );

    final screenSize = context.knobs.options(
      label: 'Screen Size (Responsive)',
      initial: _ScreenSize.medium,
      options: _ScreenSize.values
          .map((e) => Option(label: e.label, value: e))
          .toList(),
    );

    final titleSpacing = context.knobs.slider(
      label: 'Title Spacing',
      initial: 8.0,
      min: 0.0,
      max: 48.0,
    );

    final showPrimaryBand =
        context.knobs.boolean(label: 'Show Primary Band', initial: true);

    final primaryBandHeight = context.knobs.slider(
      label: 'Primary Band Height',
      initial: 24.0,
      min: 0.0,
      max: 64.0,
    );

    final borderRadius = context.knobs.slider(
      label: 'Border Radius (Curvature)',
      initial: 16.0,
      min: 0.0,
      max: 48.0,
    );

    final notificationCount = context.knobs.sliderInt(
      label: 'Notification Count',
      initial: 0,
      min: 0,
      max: 20,
    );

    final searchBehavior = context.knobs.options(
      label: 'Search Behavior',
      initial: DSTopAppBarSearchBehavior.persistent,
      options: const [
        Option(label: 'None', value: DSTopAppBarSearchBehavior.none),
        Option(
            label: 'Icon (Toggle Bar)', value: DSTopAppBarSearchBehavior.icon),
        Option(
            label: 'Persistent Bar',
            value: DSTopAppBarSearchBehavior.persistent),
      ],
    );

    final showNotify =
        context.knobs.boolean(label: 'Show Notification', initial: true);
    final showSettings =
        context.knobs.boolean(label: 'Show Settings', initial: true);
    final showMenu =
        context.knobs.boolean(label: 'Show Overflow Menu', initial: false);

    final showAvatar =
        context.knobs.boolean(label: 'Show Avatar (Home)', initial: true);

    final showReturnAction = context.knobs
        .boolean(label: 'Show Return Action (Home)', initial: false);

    final menuItems = showMenu
        ? [
            DSMenuItemButton(onPressed: () {}, child: const Text('Option 1')),
            DSMenuItemButton(onPressed: () {}, child: const Text('Option 2')),
          ]
        : null;

    List<DSListTile> searchBuilder(
        BuildContext context, SearchController controller) {
      return List.generate(
          3,
          (index) => DSListTile(
                title: Text('Search Result ${index + 1}'),
                density: DSListTileDensity.compact,
                onTap: () {
                  controller.closeView('Result ${index + 1}');
                },
              ));
    }

    return DSScaffold(
      appBar: AppBar(title: const Text('Top App Bar Inspection')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Interactive Demo', style: context.texts.titleMedium),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  width: screenSize.width,
                  height: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colors.sysOutlineVariant),
                    color: context.colors.sysSurface,
                  ),
                  child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      size: Size(screenSize.width, 500),
                    ),
                    child: Scaffold(
                      backgroundColor: context.colors.sysSurface,
                      appBar: _buildAppBar(
                        context,
                        screenSize.width,
                        variant,
                        searchBehavior,
                        showNotify,
                        showSettings,
                        menuItems,
                        searchBuilder,
                        showAvatar,
                        titleSpacing,
                        notificationCount,
                        showReturnAction: showReturnAction,
                        borderRadius: borderRadius,
                        primaryBandHeight: primaryBandHeight,
                        showPrimaryBand: showPrimaryBand,
                      ),
                      body: ListView.builder(
                        itemCount: 50,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text('Scrollable Content Item $index'),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),
              Text('Visual Verification (Static)',
                  style: context.texts.titleMedium),
              const SizedBox(height: 24),
              _buildSectionTitle(context, '1. Home Variant'),
              _buildStaticFrame(
                _buildAppBar(
                  context,
                  400,
                  DSTopAppBarType.home,
                  DSTopAppBarSearchBehavior.persistent,
                  true,
                  true,
                  null,
                  searchBuilder,
                  true,
                  8.0,
                  3,
                ),
                height: 160,
              ),
              const SizedBox(height: 32),
              _buildSectionTitle(context, '2. Centered Variant'),
              _buildStaticFrame(
                _buildAppBar(
                  context,
                  400,
                  DSTopAppBarType.centered,
                  DSTopAppBarSearchBehavior.none,
                  true,
                  false,
                  null,
                  searchBuilder,
                  false,
                  8.0,
                  0,
                ),
                height: 100,
              ),
              const SizedBox(height: 32),
              _buildSectionTitle(context, '3. Responsive - Small (<600)'),
              _buildStaticFrame(
                _buildAppBar(
                    context,
                    700,
                    DSTopAppBarType.responsive,
                    DSTopAppBarSearchBehavior.none,
                    true,
                    false,
                    null,
                    searchBuilder,
                    false,
                    8.0,
                    0),
                height: 100,
                width: 700,
              ),
              const SizedBox(height: 16),
              _buildSectionTitle(context, '4. Responsive - Medium (600-840)'),
              _buildStaticFrame(
                _buildAppBar(
                    context,
                    400,
                    DSTopAppBarType.responsive,
                    DSTopAppBarSearchBehavior.none,
                    true,
                    false,
                    null,
                    searchBuilder,
                    false,
                    8.0,
                    0),
                height: 130,
                width: 400,
              ),
              const SizedBox(height: 16),
              _buildSectionTitle(context, '5. Responsive - Large (>840)'),
              _buildStaticFrame(
                _buildAppBar(
                    context,
                    900,
                    DSTopAppBarType.responsive,
                    DSTopAppBarSearchBehavior.none,
                    true,
                    false,
                    null,
                    searchBuilder,
                    false,
                    8.0,
                    0),
                height: 190,
                width: 900,
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    double width,
    DSTopAppBarType type,
    DSTopAppBarSearchBehavior searchBehavior,
    bool showNotify,
    bool showSettings,
    List<DSMenuItemButton>? menuItems,
    SuggestionsBuilder searchBuilder,
    bool showAvatar,
    double titleSpacing,
    int notificationCount, {
    bool forceSearchVisible = false,
    bool showReturnAction = false,
    double? borderRadius,
    double? primaryBandHeight,
    bool? showPrimaryBand,
  }) {
    void onSearchTap() {
      setState(() {
        _isSearchBarVisible = !_isSearchBarVisible;
      });
    }

    void onActionTap(String action) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('$action tapped'),
            duration: const Duration(seconds: 1)),
      );
    }

    final bool isVisible = forceSearchVisible || _isSearchBarVisible;

    final double height = DSTopAppBar.getHeightForWidth(
        width: width,
        type: type,
        isSearchVisible: isVisible,
        searchBehavior: searchBehavior,
        primaryBandHeight: primaryBandHeight,
        showPrimaryBand: showPrimaryBand ?? _defaultBand(type));

    Widget appBarWidget;

    switch (type) {
      case DSTopAppBarType.home:
        appBarWidget = DSTopAppBar.home(
          title: 'Title',
          subtitle: 'Subhead',
          searchBehavior: searchBehavior,
          isSearchBarVisible: isVisible,
          onSearchTap: onSearchTap,
          showNotificationAction: showNotify,
          notificationCount: notificationCount,
          onNotificationTap: () => onActionTap('Notification'),
          showSettingsAction: showSettings,
          onSettingsTap: () => onActionTap('Settings'),
          menuItems: menuItems,
          searchSuggestionsBuilder: searchBuilder,
          showAvatar: showAvatar,
          showReturnAction: showReturnAction,
          avatar: DSAvatar.image(
            avatarSize: DSSize.small,
            containerSize: DSSize.small,
            child: Container(color: Colors.cyan[100]),
          ),
          titleSpacing: titleSpacing,
          borderRadius: borderRadius,
          primaryBandHeight: primaryBandHeight,
          showPrimaryBand: showPrimaryBand ?? _defaultBand(type),
        );
        break;
      case DSTopAppBarType.centered:
        appBarWidget = DSTopAppBar.centered(
          title: 'Title',
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => onActionTap('Menu'),
          ),
          searchBehavior: searchBehavior,
          isSearchBarVisible: isVisible,
          onSearchTap: onSearchTap,
          showNotificationAction: showNotify,
          onNotificationTap: () => onActionTap('Notification'),
          showSettingsAction: showSettings,
          onSettingsTap: () => onActionTap('Settings'),
          menuItems: menuItems,
          searchSuggestionsBuilder: searchBuilder,
          titleSpacing: titleSpacing,
          borderRadius: borderRadius,
          primaryBandHeight: primaryBandHeight,
          showPrimaryBand: showPrimaryBand ?? _defaultBand(type),
        );
        break;
      case DSTopAppBarType.responsive:
        appBarWidget = DSTopAppBar.responsive(
          title: 'Title',
          searchBehavior: searchBehavior,
          isSearchBarVisible: isVisible,
          onSearchTap: onSearchTap,
          showNotificationAction: showNotify,
          onNotificationTap: () => onActionTap('Notification'),
          showSettingsAction: showSettings,
          onSettingsTap: () => onActionTap('Settings'),
          menuItems: menuItems,
          searchSuggestionsBuilder: searchBuilder,
          titleSpacing: titleSpacing,
          borderRadius: borderRadius,
          primaryBandHeight: primaryBandHeight,
          showPrimaryBand: showPrimaryBand ?? _defaultBand(type),
        );
        break;
      case DSTopAppBarType.small:
        appBarWidget = DSTopAppBar.small(
          title: 'Title',
          searchBehavior: searchBehavior,
          isSearchBarVisible: isVisible,
          onSearchTap: onSearchTap,
          showNotificationAction: showNotify,
          onNotificationTap: () => onActionTap('Notification'),
          showSettingsAction: showSettings,
          onSettingsTap: () => onActionTap('Settings'),
          menuItems: menuItems,
          searchSuggestionsBuilder: searchBuilder,
          titleSpacing: titleSpacing,
          borderRadius: borderRadius,
          primaryBandHeight: primaryBandHeight,
          showPrimaryBand: showPrimaryBand ?? _defaultBand(type),
        );
        break;
      case DSTopAppBarType.medium:
        appBarWidget = DSTopAppBar.medium(
          title: 'Title',
          searchBehavior: searchBehavior,
          isSearchBarVisible: isVisible,
          onSearchTap: onSearchTap,
          showNotificationAction: showNotify,
          onNotificationTap: () => onActionTap('Notification'),
          showSettingsAction: showSettings,
          onSettingsTap: () => onActionTap('Settings'),
          menuItems: menuItems,
          searchSuggestionsBuilder: searchBuilder,
          titleSpacing: titleSpacing,
          borderRadius: borderRadius,
          primaryBandHeight: primaryBandHeight,
          showPrimaryBand: showPrimaryBand ?? _defaultBand(type),
        );
        break;
      case DSTopAppBarType.large:
        appBarWidget = DSTopAppBar.large(
          title: 'Title',
          searchBehavior: searchBehavior,
          isSearchBarVisible: isVisible,
          onSearchTap: onSearchTap,
          showNotificationAction: showNotify,
          onNotificationTap: () => onActionTap('Notification'),
          showSettingsAction: showSettings,
          onSettingsTap: () => onActionTap('Settings'),
          menuItems: menuItems,
          searchSuggestionsBuilder: searchBuilder,
          titleSpacing: titleSpacing,
          borderRadius: borderRadius,
          primaryBandHeight: primaryBandHeight,
          showPrimaryBand: showPrimaryBand ?? _defaultBand(type),
        );
        break;
    }

    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: appBarWidget,
    );
  }

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(text, style: context.texts.labelLarge),
    );
  }

  /// Mirrors the per-constructor default of `showPrimaryBand`.
  static bool _defaultBand(DSTopAppBarType type) =>
      type != DSTopAppBarType.home;

  Widget _buildStaticFrame(PreferredSizeWidget appBar,
      {double height = 120, double? width}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        Widget content = Scaffold(
          appBar: appBar,
          body: Container(),
        );

        if (width != null) {
          final currentSize = MediaQuery.of(context).size;
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              size: Size(width, currentSize.height),
            ),
            child: content,
          );
        }

        return content;
      }),
    );
  }
}
