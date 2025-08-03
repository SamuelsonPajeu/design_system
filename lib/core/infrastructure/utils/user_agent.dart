import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

getUserAgent() async {
  var userAgent = '';

  var dadosVersao = Platform.version.split('.');
  String versao = '${dadosVersao[0]}.${dadosVersao[1]}';

  userAgent += 'Dart/$versao (dart:io) ';

  if (Platform.isAndroid) {
    var androidInfo = await DeviceInfoPlugin().androidInfo;
    var release = androidInfo.version.release;
    var sdkInt = androidInfo.version.sdkInt;
    var manufacturer = androidInfo.manufacturer;
    var model = androidInfo.model;
    userAgent +=
        '- Android: $release (SDK $sdkInt) - fabricante: $manufacturer - device: $model ';
  }

  if (Platform.isIOS) {
    var iosInfo = await DeviceInfoPlugin().iosInfo;
    var version = iosInfo.systemVersion;
    var machine = iosInfo.utsname.machine;
    userAgent += '- $version - $machine ';
  }

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String version = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;
  userAgent += '- $version+$buildNumber';

  return userAgent;
}
