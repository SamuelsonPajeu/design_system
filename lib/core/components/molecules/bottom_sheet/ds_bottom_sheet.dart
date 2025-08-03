import 'dart:async';

import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';

Future<void> DSBottomSheet(BuildContext context,
    {AnimationController? transitionAnimationController,
    required Widget child,
    double? elevation = 0,
    double? heightFactor,
    double? height,
    bool isScrollControlled = false,
    bool dragHandle = false,
    double borderRadius = 28.0}) {
  return showModalBottomSheet<void>(
    barrierColor: Theme.of(context).colors.sysOutline,
    isDismissible: true,
    isScrollControlled: isScrollControlled,
    transitionAnimationController: transitionAnimationController,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
    ),
    useRootNavigator: false,
    context: context,
    elevation: elevation,
    builder: (_) => _showModalWith(context, borderRadius,
        heightFactor: heightFactor,
        height: height,
        child: child,
        dragHandle: dragHandle),
  );
}

Widget _showModalWith(
  BuildContext context,
  double borderRadius, {
  required Widget child,
  double? heightFactor,
  double? height,
  bool dragHandle = false,
}) {
  final double height0 = height ?? 1;

  return SafeArea(
    child: Container(
      height: MediaQuery.of(context).copyWith().size.height * height0,
      decoration: BoxDecoration(
        color: Theme.of(context).colors.sysSurface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: child,
          ),
          Align(
            alignment: dragHandle ? Alignment.topCenter : Alignment.topRight,
            child: IconButton(
              onPressed: dragHandle
                  ? null
                  : () {
                      Navigator.pop(context);
                    },
              icon: dragHandle
                  ? const Icon(
                      Icons.maximize_rounded,
                      size: 50,
                    )
                  : const Icon(Icons.close),
            ),
          ),
        ],
      ),
    ),
  );
}
