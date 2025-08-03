import 'package:flutter/material.dart';

class DSAnimatedCollapse extends StatefulWidget {
  const DSAnimatedCollapse({
    super.key,
    this.child,
    required this.collapsed,
    this.axis = Axis.vertical,
    this.axisAlignment = 0.0,
    this.curve = Curves.fastOutSlowIn,
    required this.duration,
    this.reverseDuration,
  });

  final Widget? child;
  final bool collapsed;
  final Axis axis;
  final double axisAlignment;
  final Curve curve;
  final Duration duration;
  final Duration? reverseDuration;

  @override
  _DSAnimatedCollapseState createState() => _DSAnimatedCollapseState();
}

class _DSAnimatedCollapseState extends State<DSAnimatedCollapse>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
      reverseDuration: widget.reverseDuration,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    );

    if (!widget.collapsed) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(covariant DSAnimatedCollapse oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.collapsed != oldWidget.collapsed) {
      if (widget.collapsed) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      axis: widget.axis,
      axisAlignment: widget.axisAlignment,
      child: widget.child,
    );
  }
}
