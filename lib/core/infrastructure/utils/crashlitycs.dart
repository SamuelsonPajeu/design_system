import 'package:datadog_flutter_plugin/datadog_flutter_plugin.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';

registerRequestError(
    {required String httpCode,
    required String requestName,
    required String requestUrl,
    required String errorMessage}) {
  var message =
      'http code: $httpCode - request name: $requestName - request url: $requestUrl - error message: $errorMessage';
  FirebaseCrashlytics.instance
      .recordFlutterError(FlutterErrorDetails(exception: Exception(message)));
  DatadogSdk.instance.rum?.addAction(RumActionType.custom, 'Request error', {
    'http code': httpCode,
    'request name': requestName,
    'request url': requestUrl,
    'error message': errorMessage,
  });
}

registerCrashlyticsLog(String message) {
  FirebaseCrashlytics.instance.recordFlutterError(
    FlutterErrorDetails(
      exception: message,
      library: 'CrashlyticsLog',
    ),
  );
  DatadogSdk.instance.rum?.addAction(RumActionType.custom, 'Generic error', {
    'message': message,
  });
}
