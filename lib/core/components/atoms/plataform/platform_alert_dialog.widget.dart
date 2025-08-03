import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'platform.widget.dart';

class DSPlatformAlertDialog extends DSPlatformWidget {
  const DSPlatformAlertDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.cancelActionText,
      required this.defaultActionText,
      this.cancelationOption = true,
      this.onConfirm,
      this.onCancel,
      this.backgroundColor});

  final String title;
  final String content;
  final String cancelActionText;
  final String defaultActionText;
  final bool cancelationOption;
  final Color? backgroundColor;

  final void Function()? onConfirm;
  final void Function()? onCancel;

  Future<bool?> show(BuildContext context) async {
    if (kIsWeb) {
      return showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          title: Text(title),
          content: Text(content),
          backgroundColor: backgroundColor,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
                onCancel?.call();
              },
              child: Text(cancelActionText),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                onConfirm?.call();
              },
              child: Text(defaultActionText),
            ),
          ],
        ),
      );
    }
    return Platform.isIOS
        ? await showCupertinoDialog<bool>(
            context: context,
            builder: (context) => this,
          )
        : await showDialog<bool>(
            context: context,
            barrierDismissible: false,
            builder: (context) => this,
          );
  }

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: _buildActions(context),
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
        ),
      ),
      content: Text(
        content,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
        ),
      ),
      backgroundColor: backgroundColor,
      actions: _buildActions(context),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    final actions = <Widget>[];
    if (cancelationOption) {
      actions.add(DSPlatformAlertDialogAction(
        onPressed: () {
          Navigator.of(context).pop(false);
          onCancel?.call();
        },
        child: Text(cancelActionText),
      ));
    }
    actions.add(DSPlatformAlertDialogAction(
      onPressed: () {
        Navigator.of(context).pop(true);
        onConfirm?.call();
      },
      child: Text(defaultActionText),
    ));
    return actions;
  }
}

class DSPlatformAlertDialogAction extends DSPlatformWidget {
  const DSPlatformAlertDialogAction({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoDialogAction(
      onPressed: onPressed,
      child: child,
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
