import 'package:design_system/core/components/molecules/back_gesture_manager/ds_back_gesture_manager.dart';
import 'package:design_system/core/components/molecules/top_app_bar/ds_top_app_bar.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSScaffold extends StatelessWidget {
  const DSScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.appBar,
    this.padding,
    this.margin = EdgeInsets.zero,
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.removeSafeArea = false,
    this.persistentFooterButtons,
    this.endDrawer,
    this.resizeToAvoidBottomInset = true,
    this.onPopInvoked,
    this.endDrawerEnableOpenDragGesture,
  });

  final Widget body;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final bool removeSafeArea;
  final List<Widget>? persistentFooterButtons;
  final Widget? endDrawer;
  final bool? resizeToAvoidBottomInset;
  final void Function(bool, dynamic)? onPopInvoked;
  final bool? endDrawerEnableOpenDragGesture;

  @override
  Widget build(BuildContext context) {
    Widget contentBody = Container(
      padding: padding,
      margin: margin,
      child: body,
    );

    if (!removeSafeArea) {
      contentBody = SafeArea(child: contentBody);
    }

    // --- Automatic DSTopAppBar Resizing Logic ---
    PreferredSizeWidget? effectiveAppBar = appBar;

    if (appBar is DSTopAppBar) {
      final dsAppBar = appBar as DSTopAppBar;
      final double width = MediaQuery.sizeOf(context).width;

      // Calculate the precise height needed for the current screen width & variant
      final double height = DSTopAppBar.getHeightForWidth(
        width: width,
        type: dsAppBar.type,
        isSearchVisible: dsAppBar.isSearchBarVisible,
        searchBehavior: dsAppBar.searchBehavior,
        bottom: dsAppBar.bottom,
        toolbarHeight: dsAppBar.toolbarHeight,
        topPadding: dsAppBar.topPadding,
        bottomPadding: dsAppBar.bottomPadding,
        primaryBandHeight: dsAppBar.primaryBandHeight,
        showPrimaryBand: dsAppBar.showPrimaryBand,
        isWeb: dsAppBar.isWeb,
      );

      // Wrap in PreferredSize to override the default height
      effectiveAppBar = PreferredSize(
        preferredSize: Size.fromHeight(height),
        child: dsAppBar,
      );
    }

    final scaffoldWidget = Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor ?? context.colors.sysSurfaceContainerLow,
      appBar: effectiveAppBar,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      body: contentBody,
      persistentFooterButtons: persistentFooterButtons,
      endDrawer: endDrawer,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture ?? false,
    );

    return DSBackGestureRoot(
      onPopInvoked: onPopInvoked,
      child: scaffoldWidget,
    );
  }
}
