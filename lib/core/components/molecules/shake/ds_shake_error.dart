import 'dart:math';

import 'package:design_system/core/components/atoms/animation_controller/ds_animation_controller_state.widget.dart';
import 'package:flutter/material.dart';

class DSShakeError extends StatefulWidget {
  const DSShakeError({
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.shakeCount = 3,
    this.shakeOffset = 10,
    super.key,
  });

  final Widget child;
  final double? shakeOffset;
  final int? shakeCount;
  final Duration? duration;

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => DSShakeErrorState(
        duration!,
      );
}

class DSShakeErrorState extends DSAnimationControllerState<DSShakeError> {
  DSShakeErrorState(super.animationDuration);

  @override
  void initState() {
    animationController.addStatusListener(_updateStatus);
    super.initState();
  }

  @override
  void dispose() {
    animationController.removeStatusListener(_updateStatus);
    super.dispose();
  }

  void _updateStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      animationController.reset();
    }
  }

  void shake() {
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: widget.child,
      builder: (context, child) {
        final sineValue =
            sin(widget.shakeCount! * 2 * pi * animationController.value);
        return Transform.translate(
          offset: Offset(sineValue * widget.shakeOffset!, 0),
          child: child,
        );
      },
    );
  }
}
