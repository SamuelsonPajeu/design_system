import 'dart:async';

import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DSTimelineSidebar extends StatefulWidget {
  const DSTimelineSidebar({
    super.key,
    required this.dates,
    required this.scrollController,
    this.isAlwaysVisible = false,
    this.showScrollKnob = true,
  });

  final List<DateTime> dates;
  final ScrollController scrollController;
  final bool isAlwaysVisible;
  final bool showScrollKnob;

  @override
  State<DSTimelineSidebar> createState() => _DSTimelineSidebarState();
}

class _DSTimelineSidebarState extends State<DSTimelineSidebar> {
  double _scrollerPosition = 0.0;
  bool _isDragging = false;
  String _bubbleText = '';
  double _opacity = 0.0;
  Timer? _hideTimer;

  @override
  void initState() {
    super.initState();
    // If always visible (Desktop), set opacity immediately
    if (widget.isAlwaysVisible) {
      _opacity = 1.0;
    }
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(DSTimelineSidebar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAlwaysVisible != oldWidget.isAlwaysVisible) {
      if (widget.isAlwaysVisible) {
        _cancelHideTimer();
        setState(() => _opacity = 1.0);
      } else {
        // If switching to mobile mode, start hide timer
        _startHideTimer();
      }
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    _cancelHideTimer();
    super.dispose();
  }

  void _onScroll() {
    if (!widget.scrollController.hasClients) return;
    _showSidebar();

    if (_isDragging) return;

    final maxScroll = widget.scrollController.position.maxScrollExtent;
    if (maxScroll <= 0) return;

    final currentScroll = widget.scrollController.offset;
    final progress = (currentScroll / maxScroll).clamp(0.0, 1.0);

    setState(() {
      _scrollerPosition = progress;
      _updateBubbleTextFromProgress(progress);
    });
  }

  void _showSidebar() {
    if (widget.isAlwaysVisible) return;
    if (_opacity == 0.0) {
      setState(() => _opacity = 1.0);
    }
    _startHideTimer();
  }

  void _startHideTimer() {
    _cancelHideTimer();
    _hideTimer = Timer(const Duration(seconds: 1), () {
      if (mounted && !widget.isAlwaysVisible && !_isDragging) {
        setState(() => _opacity = 0.0);
      }
    });
  }

  void _cancelHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = null;
  }

  void _updateBubbleTextFromProgress(double progress) {
    if (widget.dates.isEmpty) return;
    final int index = (progress * (widget.dates.length - 1)).round();
    final date = widget.dates[index];
    _bubbleText = DateFormat('MMMM yyyy', 'pt_BR').format(date);
    _bubbleText = _bubbleText[0].toUpperCase() + _bubbleText.substring(1);
  }

  void _handleDrag(double dy, double maxHeight) {
    _showSidebar();
    _cancelHideTimer();

    final double newProgress = (dy / maxHeight).clamp(0.0, 1.0);

    setState(() {
      _scrollerPosition = newProgress;
      _isDragging = true;
      _updateBubbleTextFromProgress(newProgress);
    });

    if (widget.scrollController.hasClients) {
      final maxScroll = widget.scrollController.position.maxScrollExtent;
      widget.scrollController.jumpTo(newProgress * maxScroll);
    }
  }

  void _handleDragEnd() {
    setState(() => _isDragging = false);
    _startHideTimer();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final List<Widget> yearMarkers = [];
    final List<Widget> monthTicks = [];

    final double yearRightPadding = widget.showScrollKnob ? 40.0 : 20.0;

    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(milliseconds: 200),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double height = constraints.maxHeight;

          // --- Build Markers (Years and Months) ---
          if (widget.dates.isNotEmpty) {
            int? lastYear;
            int? lastMonth;

            for (int i = 0; i < widget.dates.length; i++) {
              final date = widget.dates[i];
              final double relativePos = i / (widget.dates.length - 1);
              final double top = relativePos * height;

              if (top < 10 || top > height - 10) continue;

              // Year Change -> Pill
              if (date.year != lastYear) {
                lastYear = date.year;
                lastMonth = date.month;

                yearMarkers.add(
                  Positioned(
                    top: top - 10,
                    right: yearRightPadding,
                    child: _YearMarker(year: date.year.toString()),
                  ),
                );
                continue;
              }

              // Month Change -> Tick
              if (date.month != lastMonth) {
                lastMonth = date.month;
                monthTicks.add(
                  Positioned(
                    top: top,
                    right: 16,
                    child: Container(
                      width: 12,
                      height: 1,
                      color: colors.sysOutline,
                    ),
                  ),
                );
              }
            }
          }

          // Knob Position
          final double bubbleY =
              (_scrollerPosition * height).clamp(20.0, height - 20.0);

          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onVerticalDragUpdate: (details) =>
                _handleDrag(details.localPosition.dy, height),
            onVerticalDragStart: (details) =>
                _handleDrag(details.localPosition.dy, height),
            onVerticalDragEnd: (_) => _handleDragEnd(),
            onTapUp: (details) => _handleDrag(details.localPosition.dy, height),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // 1. Month Ticks (Bottom Layer)
                ...monthTicks,

                // 2. Year Markers (Middle Layer - Above Ticks)
                ...yearMarkers,

                // 3. Bubble & Knob (Top Layer)
                Positioned(
                  top: bubbleY - 16,
                  right: 12,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Bubble
                      if (_isDragging)
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: colors.sysOnSurfaceVariant,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.30),
                                blurRadius: 1,
                                offset: const Offset(0, 1),
                              )
                            ],
                          ),
                          child: Text(
                            _bubbleText,
                            style: context.texts.labelLarge.copyWith(
                              color: colors.sysSurface,
                            ),
                          ),
                        ),

                      // Knob
                      if (widget.showScrollKnob) ...[
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: _isDragging
                                ? colors.sysOnSurfaceVariant
                                : colors.sysSurface,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.30),
                                blurRadius: 1,
                                offset: const Offset(0, 1),
                              )
                            ],
                          ),
                          child: DSIcon.extraSmall(
                            icon: Icons.unfold_more,
                            color: _isDragging
                                ? colors.sysOnPrimary
                                : colors.sysPrimary,
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _YearMarker extends StatelessWidget {
  const _YearMarker({required this.year});
  final String year;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colors.sysSurface,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.30),
            blurRadius: 1,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Text(
        year,
        style: context.texts.labelLarge.copyWith(
          color: colors.sysOnSurface,
        ),
      ),
    );
  }
}
