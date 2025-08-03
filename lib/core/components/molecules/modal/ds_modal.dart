import 'dart:async';

import 'package:flutter/material.dart';

Future<void> DSShowModalPage(
  BuildContext context, {
  AnimationController? transitionAnimationController,
  required Widget child,
  double? heightFactor,
  double? height,
  bool isScrollControlled = false,
  bool dragHandle = false,
}) {
  return showModalBottomSheet<void>(
    isDismissible: true,
    isScrollControlled: isScrollControlled,
    transitionAnimationController: transitionAnimationController,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
    ),
    useRootNavigator: false,
    context: context,
    elevation: 0,
    builder: (_) => _showModalWith(
      context,
      heightFactor: heightFactor,
      height: height,
      child: child,
      dragHandle: dragHandle,
    ),
  );
}

Widget _showModalWith(
  BuildContext context, {
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
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
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
