import 'package:design_system/core/components/atoms/plataform/platform_alert_dialog.widget.dart';
import 'package:design_system/core/components/molecules/notifications/ds_notification.dart';
import 'package:flutter/material.dart';

const snackBarNotificationDuration = Duration(seconds: 7);

void vethxNotify(
  BuildContext context,
  VethxNotification notification, {
  bool cancelationOption = false,
  void Function()? onConfirm,
  void Function()? onCancel,
}) {
  String title = '';
  String message = '';

  if (notification.isFromLocalization) {
    title = notification.title ?? '';
    title = notification.titleFromLocalization ?? '';
    message = notification.messageFromLocalization ?? '';
  } else {
    title = notification.title ?? '';
    message = notification.message ?? '';
  }

  switch (notification.type) {
    case DSVethxNotificationType.snack:
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.4,
              ),
            ),
            duration: snackBarNotificationDuration,
            behavior: SnackBarBehavior.floating,
            backgroundColor: notification.backgroundColor,
          ),
        );
      });
      break;
    case DSVethxNotificationType.alert:
      DSPlatformAlertDialog(
        title: title,
        content: message,
        defaultActionText: 'OK',
        cancelActionText: 'CANCELAR',
        cancelationOption: cancelationOption,
        onConfirm: onConfirm,
        onCancel: onCancel,
        backgroundColor: notification.backgroundColor,
      ).show(context);
      break;
    case DSVethxNotificationType.notification:
      break;
  }
}
