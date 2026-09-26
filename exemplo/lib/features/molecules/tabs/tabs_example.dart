import 'package:design_system/core/components/molecules/tabs/ds_tabs.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TabsExample extends StatefulWidget {
  const TabsExample({super.key});

  @override
  State<TabsExample> createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample>
    with TickerProviderStateMixin {
  late TabController _interactiveTabController;
  late TabController _visualTabController;

  @override
  void initState() {
    super.initState();
    _interactiveTabController = TabController(length: 6, vsync: this);
    _visualTabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _interactiveTabController.dispose();
    _visualTabController.dispose();
    super.dispose();
  }

  void _updateInteractiveController(int length) {
    if (_interactiveTabController.length != length) {
      _interactiveTabController.dispose();
      _interactiveTabController = TabController(length: length, vsync: this);
    }
  }

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final type = context.knobs.options(
      label: 'Type',
      description: 'Determines the visual style and layout of the tabs',
      initial: DSTabsType.title,
      options: const [
        Option(label: 'Title Only', value: DSTabsType.title),
        Option(label: 'Bullet Top', value: DSTabsType.bulletTop),
        Option(label: 'Bullet Only', value: DSTabsType.bulletOnly),
        Option(
            label: 'Title Only (Full Indicator)',
            value: DSTabsType.titleOnlyFullIndicator),
        Option(label: 'Bullet Left', value: DSTabsType.bulletLeft),
      ],
    );

    final isScrollableKnob = context.knobs.boolean(
      label: 'Is Scrollable',
      description: 'Enables horizontal scrolling for the tab bar',
      initial: false,
    );

    final tabAlignmentKnob = context.knobs.options(
      label: 'Tab Alignment',
      description: 'Controls how tabs are aligned within the bar',
      initial: TabAlignment.fill,
      options: const [
        Option(label: 'Fill', value: TabAlignment.fill),
        Option(label: 'Start', value: TabAlignment.start),
        Option(label: 'Center', value: TabAlignment.center),
        Option(label: 'Start Offset', value: TabAlignment.startOffset),
      ],
    );

    // Safety Logic
    bool effectiveIsScrollable = isScrollableKnob;
    TabAlignment effectiveTabAlignment = tabAlignmentKnob;

    if (tabAlignmentKnob == TabAlignment.start ||
        tabAlignmentKnob == TabAlignment.startOffset) {
      effectiveIsScrollable = true;
    }

    if (effectiveIsScrollable && tabAlignmentKnob == TabAlignment.fill) {
      effectiveTabAlignment = TabAlignment.start;
    } else if (!effectiveIsScrollable &&
        (tabAlignmentKnob == TabAlignment.start ||
            tabAlignmentKnob == TabAlignment.startOffset)) {
      effectiveTabAlignment = TabAlignment.fill;
    }

    final tabCount = context.knobs.sliderInt(
        label: 'Tab Count',
        description: 'Controls the number of tabs in the interactive demo',
        initial: 3,
        min: 3,
        max: 6,
        divisions: 3);

    final dividerHeight = context.knobs.slider(
      label: 'Divider Height',
      description: 'Sets the height of the divider line at the bottom',
      initial: 1.0,
      min: 0.0,
      max: 5.0,
    );

    final indicatorWeight = context.knobs.slider(
      label: 'Indicator Weight',
      description: 'Sets the thickness of the selection indicator line',
      initial: 3.0,
      min: 1.0,
      max: 10.0,
    );

    // --- Interactive Data ---
    _updateInteractiveController(tabCount);

    final allTabs = <DSTabModel>[
      DSTabModel(title: 'Tab 1', icon: Symbols.circle),
      DSTabModel(title: 'Tab 2', icon: Symbols.square),
      DSTabModel(title: 'Tab 3', icon: Symbols.diamond),
      DSTabModel(title: 'Tab 4', icon: Symbols.star),
      DSTabModel(title: 'Tab 5', icon: Symbols.rectangle),
      DSTabModel(title: 'Tab 6', icon: Symbols.bolt),
    ];

    final currentTabs = allTabs.take(tabCount).toList();

    return DSScaffold(
      appBar: AppBar(
        title: Text('Tabs Component', style: context.texts.titleLarge),
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
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colors.sysOutlineVariant),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    if (effectiveIsScrollable != isScrollableKnob ||
                        effectiveTabAlignment != tabAlignmentKnob)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Note: Tab Alignment adjusted to $effectiveTabAlignment and Scrollable to $effectiveIsScrollable to prevent invalid configuration.',
                          style: context.texts.bodySmall
                              .copyWith(color: context.colors.sysError),
                        ),
                      ),
                    _buildTabsByType(
                      type: type,
                      controller: _interactiveTabController,
                      tabs: currentTabs,
                      isScrollable: effectiveIsScrollable,
                      dividerHeight: dividerHeight,
                      indicatorWeight: indicatorWeight,
                      tabAlignment: effectiveTabAlignment,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 100,
                      child: TabBarView(
                        controller: _interactiveTabController,
                        children: List.generate(
                          tabCount,
                          (index) =>
                              Center(child: Text('Content ${index + 1}')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL VERIFICATION BLOCKS =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              // --- Non-Scrollable Section ---
              _buildSectionTitle(context, 'Non-Scrollable'),

              _buildSectionHeader(context, '1. Title Only'),
              _buildStaticBlock(DSTabsType.title, _visualTabController,
                  isScrollable: false),
              const SizedBox(height: 32),

              _buildSectionHeader(context, '2. Bullet Top'),
              _buildStaticBlock(DSTabsType.bulletTop, _visualTabController,
                  isScrollable: false),
              const SizedBox(height: 32),

              _buildSectionHeader(context, '3. Bullet Only'),
              _buildStaticBlock(
                DSTabsType.bulletOnly,
                _visualTabController,
                isScrollable: false,
              ),
              const SizedBox(height: 32),

              _buildSectionHeader(context, '4. Title Only (Full Indicator)'),
              _buildStaticBlock(
                DSTabsType.titleOnlyFullIndicator,
                _visualTabController,
                isScrollable: false,
              ),
              const SizedBox(height: 32),

              _buildSectionHeader(context, '5. Bullet Left'),
              _buildStaticBlock(DSTabsType.bulletLeft, _visualTabController,
                  isScrollable: false),
              const SizedBox(height: 60),

              // --- Scrollable Section ---
              _buildSectionTitle(context, 'Scrollable (Horizontally)'),

              _buildSectionHeader(context, '1. Title Only (Scrollable)'),
              _buildStaticBlock(DSTabsType.title, _visualTabController,
                  isScrollable: true),
              const SizedBox(height: 32),

              _buildSectionHeader(context, '2. Bullet Top (Scrollable)'),
              _buildStaticBlock(DSTabsType.bulletTop, _visualTabController,
                  isScrollable: true),
              const SizedBox(height: 32),

              _buildSectionHeader(context, '3. Bullet Only (Scrollable)'),
              _buildStaticBlock(
                DSTabsType.bulletOnly,
                _visualTabController,
                isScrollable: true,
              ),
              const SizedBox(height: 32),

              _buildSectionHeader(
                  context, '4. Title Only (Full Indicator, Scrollable)'),
              _buildStaticBlock(
                DSTabsType.titleOnlyFullIndicator,
                _visualTabController,
                isScrollable: true,
              ),
              const SizedBox(height: 32),

              _buildSectionHeader(context, '5. Bullet Left (Scrollable)'),
              _buildStaticBlock(DSTabsType.bulletLeft, _visualTabController,
                  isScrollable: true),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Text(
        title,
        style: context.texts.headlineSmall
            .copyWith(color: context.colors.sysPrimary),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: context.texts.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildStaticBlock(
    DSTabsType type,
    TabController controller, {
    required bool isScrollable,
  }) {
    List<DSTabModel> tabs = [
      DSTabModel(title: 'Tab 1', icon: Symbols.circle),
      DSTabModel(title: 'Tab 2', icon: Symbols.square),
      DSTabModel(title: 'Tab 3', icon: Symbols.diamond),
      DSTabModel(title: 'Tab 4', icon: Symbols.star),
      DSTabModel(title: 'Tab 5', icon: Symbols.rectangle),
      DSTabModel(title: 'Tab 6', icon: Symbols.bolt),
    ];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.sysOutlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      child: _buildTabsByType(
        type: type,
        controller: controller,
        tabs: tabs,
        isScrollable: isScrollable,
        tabAlignment: isScrollable ? TabAlignment.start : TabAlignment.fill,
      ),
    );
  }

  Widget _buildTabsByType({
    required DSTabsType type,
    required TabController controller,
    required List<DSTabModel> tabs,
    bool isScrollable = false,
    double dividerHeight = 1.0,
    double indicatorWeight = 2.0,
    TabAlignment tabAlignment = TabAlignment.fill,
    TabBarIndicatorSize? indicatorSize,
  }) {
    final common = _DSTabsCommonParams(
      tabs: tabs,
      tabController: controller,
      isScrollable: isScrollable,
      dividerHeight: dividerHeight,
      indicatorWeight: indicatorWeight,
      tabAlignment: tabAlignment,
      indicatorSize: indicatorSize,
    );

    switch (type) {
      case DSTabsType.title:
        return DSTabs.title(
          tabs: common.tabs,
          tabController: common.tabController,
          isScrollable: common.isScrollable,
          dividerHeight: common.dividerHeight,
          indicatorWeight: common.indicatorWeight,
          tabAlignment: common.tabAlignment,
          indicatorSize: common.indicatorSize,
        );
      case DSTabsType.bulletTop:
        return DSTabs.bulletTop(
          tabs: common.tabs,
          tabController: common.tabController,
          isScrollable: common.isScrollable,
          dividerHeight: common.dividerHeight,
          indicatorWeight: common.indicatorWeight,
          tabAlignment: common.tabAlignment,
          indicatorSize: common.indicatorSize,
        );
      case DSTabsType.bulletLeft:
        return DSTabs.bulletLeft(
          tabs: common.tabs,
          tabController: common.tabController,
          isScrollable: common.isScrollable,
          dividerHeight: common.dividerHeight,
          indicatorWeight: common.indicatorWeight,
          tabAlignment: common.tabAlignment,
          indicatorSize: common.indicatorSize,
        );
      case DSTabsType.bulletOnly:
        return DSTabs.bulletOnly(
          tabs: common.tabs,
          tabController: common.tabController,
          isScrollable: common.isScrollable,
          dividerHeight: common.dividerHeight,
          indicatorWeight: common.indicatorWeight,
          tabAlignment: common.tabAlignment,
          indicatorSize: common.indicatorSize,
        );
      case DSTabsType.titleOnlyFullIndicator:
        return DSTabs.titleOnlyFullIndicator(
          tabs: common.tabs,
          tabController: common.tabController,
          isScrollable: common.isScrollable,
          dividerHeight: common.dividerHeight,
          indicatorWeight: common.indicatorWeight,
          tabAlignment: common.tabAlignment,
          indicatorSize: common.indicatorSize,
        );
    }
  }
}

class _DSTabsCommonParams {
  final List<DSTabModel> tabs;
  final TabController tabController;
  final bool isScrollable;
  final double dividerHeight;
  final double indicatorWeight;
  final TabAlignment tabAlignment;
  final TabBarIndicatorSize? indicatorSize;

  _DSTabsCommonParams({
    required this.tabs,
    required this.tabController,
    required this.isScrollable,
    required this.dividerHeight,
    required this.indicatorWeight,
    required this.tabAlignment,
    this.indicatorSize,
  });
}
