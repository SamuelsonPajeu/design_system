import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';

class DSScaffold extends StatefulWidget {
  const DSScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.appBar,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(0),
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.removeSafeArea = false,
    this.persistentFooterButtons,
    this.endDrawer,
    this.resizeToAvoidBottomInset = true,
  });

  final Widget body;
  final Color? backgroundColor;
  final AppBar? appBar;
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

  @override
  State<DSScaffold> createState() => _DSScaffoldState();
}

class _DSScaffoldState extends State<DSScaffold> {
  Color get _backgroundColor =>
      widget.backgroundColor ?? Theme.of(context).colors.sysSurface;

  @override
  Widget build(BuildContext context) {
    if (widget.removeSafeArea) {
      return Scaffold(
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        backgroundColor: _backgroundColor,
        appBar: widget.appBar,
        drawer: widget.drawer,
        floatingActionButton: widget.floatingActionButton,
        bottomNavigationBar: widget.bottomNavigationBar,
        bottomSheet: widget.bottomSheet,
        body: Container(
          padding: widget.padding,
          margin: widget.margin,
          child: widget.body,
        ),
        persistentFooterButtons: widget.persistentFooterButtons,
        endDrawer: widget.endDrawer,
      );
    } else {
      return Scaffold(
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        backgroundColor: _backgroundColor,
        appBar: widget.appBar,
        drawer: widget.drawer,
        floatingActionButton: widget.floatingActionButton,
        bottomNavigationBar: widget.bottomNavigationBar,
        bottomSheet: widget.bottomSheet,
        body: SafeArea(
          child: Container(
            padding: widget.padding,
            margin: widget.margin,
            child: widget.body,
          ),
        ),
        persistentFooterButtons: widget.persistentFooterButtons,
        endDrawer: widget.endDrawer,
      );
    }
  }
}
