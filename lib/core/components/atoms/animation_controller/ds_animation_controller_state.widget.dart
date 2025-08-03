import 'package:flutter/material.dart';

abstract class DSAnimationControllerState<T extends StatefulWidget>
    extends State<T> with SingleTickerProviderStateMixin {
  DSAnimationControllerState(this.animationDuration);
  final Duration animationDuration;
  late final animationController =
      AnimationController(vsync: this, duration: animationDuration);

  @override
  void dispose() {
    try {
      animationController.dispose();
    } catch (_) {}
    super.dispose();
  }
}
