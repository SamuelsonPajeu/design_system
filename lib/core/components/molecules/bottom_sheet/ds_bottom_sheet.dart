import 'dart:async';

import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Future<T?> DSBottomSheet<T>(
  BuildContext context, {
  AnimationController? transitionAnimationController,
  required Widget child,
  double? elevation = 0,
  double? heightFactor,
  double? height,
  double? maxWidth = 450,
  bool isScrollControlled = false,
  bool dragHandle = true,
  bool transparent = false,
  Color? barrierColor,
  Color? backgroundColor,
}) {
  final double borderRadius = 28;
  final resolvedBackgroundColor = backgroundColor ??
      (transparent ? Colors.transparent : context.colors.sysSurface);

  return showModalBottomSheet<T?>(
    barrierColor: barrierColor ?? (transparent ? Colors.transparent : null),
    backgroundColor: resolvedBackgroundColor,
    isDismissible: true,
    isScrollControlled: isScrollControlled,
    transitionAnimationController: transitionAnimationController,
    constraints: maxWidth != null ? BoxConstraints(maxWidth: maxWidth) : null,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
    ),
    useRootNavigator: false,
    context: context,
    elevation: 0,
    builder: (_) => _showModalWith(
      context,
      borderRadius,
      heightFactor: heightFactor,
      height: height,
      dragHandle: dragHandle,
      backgroundColor: resolvedBackgroundColor,
      child: child,
    ),
  );
}

Widget _showModalWith(
  BuildContext context,
  double borderRadius, {
  required Widget child,
  double? heightFactor,
  double? height,
  bool dragHandle = false,
  Color? backgroundColor,
}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final double? containerHeight =
      height ?? (heightFactor != null ? screenHeight * heightFactor : null);

  return Container(
    height: containerHeight,
    decoration: BoxDecoration(
      color: backgroundColor ?? context.colors.sysSurfaceContainerLow,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.30),
          offset: Offset(0, 1),
          blurRadius: 3,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.15),
          offset: Offset(0, 4),
          blurRadius: 8,
          spreadRadius: 3,
        ),
      ],
    ),
    child: Column(
      mainAxisSize:
          containerHeight != null ? MainAxisSize.max : MainAxisSize.min,
      children: [
        if (dragHandle)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Container(
              width: 32,
              height: 4,
              decoration: BoxDecoration(
                color: context.colors.sysOutline,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        if (!dragHandle)
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, right: 8),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: context.colors.sysOutline,
                ),
              ),
            ),
          ),
        Flexible(
          fit: containerHeight != null ? FlexFit.tight : FlexFit.loose,
          child: child,
        ),
      ],
    ),
  );
}
