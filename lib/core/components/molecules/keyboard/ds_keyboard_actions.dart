import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

KeyboardActionsConfig buildConfig(BuildContext context, FocusNode node) {
  return KeyboardActionsConfig(
    keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
    keyboardBarColor: Colors.grey[700],
    nextFocus: false,
    actions: [
      KeyboardActionsItem(
        focusNode: node,
        toolbarButtons: [
          (node) {
            return GestureDetector(
              onTap: () => node.unfocus(),
              child: const Padding(
                padding: EdgeInsets.only(right: 22),
                child: Row(
                  children: <Widget>[
                    Text("Ocultar",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            );
          }
        ],
      ),
    ],
  );
}

class DSKeyboardActionDoneWidget extends StatelessWidget {
  final Widget child;
  final FocusNode? focusNode;
  final double? height;
  final bool disableScroll;

  const DSKeyboardActionDoneWidget({
    super.key,
    required this.child,
    this.focusNode,
    this.height,
    this.disableScroll = false,
  });

  @override
  Widget build(BuildContext context) {
    if (focusNode == null) {
      return child;
    }

    return SizedBox(
      height: height,
      child: KeyboardActions(
        autoScroll: false,
        disableScroll: disableScroll,
        config: buildConfig(context, focusNode!),
        child: child,
      ),
    );
  }
}
