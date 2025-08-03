import 'package:design_system/core/components/molecules/notifications/ds_messages.dart';
import 'package:flutter/material.dart';

extension DSVethxNotificationPush on VethxNotification {
  void push(BuildContext context) {
    vethxNotify(context, this);
  }
}

enum DSVethxNotificationType {
  alert,
  snack,
  notification,
}

class VethxNotification {
  final DSVethxNotificationType type;
  final String? messageFromLocalization;
  final String? titleFromLocalization;

  final String? message;
  final String? title;
  final Color? backgroundColor;

  bool get isFromLocalization => messageFromLocalization != null;

  const VethxNotification._internal({
    required this.type,
    this.messageFromLocalization,
    this.titleFromLocalization,
    this.message,
    this.title,
    this.backgroundColor,
  });

  factory VethxNotification.snack({
    required String message,
    Color? backgroundColor,
  }) =>
      VethxNotification._internal(
        message: message,
        type: DSVethxNotificationType.snack,
        backgroundColor: backgroundColor,
      );

  factory VethxNotification.alert({
    required String message,
    required String title,
    Color? backgroundColor,
  }) =>
      VethxNotification._internal(
        title: title,
        message: message,
        type: DSVethxNotificationType.alert,
        backgroundColor: backgroundColor,
      );

  factory VethxNotification.snackFromLocalization({
    required String message,
    Color? backgroundColor,
  }) =>
      VethxNotification._internal(
        messageFromLocalization: message,
        type: DSVethxNotificationType.snack,
        backgroundColor: backgroundColor,
      );

  factory VethxNotification.alertFromLocalization({
    required String message,
    required String title,
    Color? backgroundColor,
  }) =>
      VethxNotification._internal(
        titleFromLocalization: title,
        messageFromLocalization: message,
        type: DSVethxNotificationType.alert,
        backgroundColor: backgroundColor,
      );

  static void snackBarSucessMessage(
    BuildContext context, {
    required String message,
    Color? backgroundColor,
  }) {
    VethxNotification.snack(message: message, backgroundColor: backgroundColor)
        .push(context);
  }

  List<Object?> get props => [
        type,
        messageFromLocalization,
        message,
        title,
        backgroundColor,
      ];
}
