import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'size_adapters.dart';

enum DeviceScreenType { mobile, tablet, desktop }

class SizeConfig {
  static Size viewPort =
      SizeConfig.isMobile ? const Size(360, 850) : _mediaQueryData.size;

  static late MediaQueryData _mediaQueryData;

  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;

  static late double safeBlockHorizontal;
  static late double safeBlockVertical;

  static late double screenWidth;
  static late double screenHeight;

  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  static double get aspectRatio => size.aspectRatio;

  static EdgeInsetsGeometry get defaultEdgeInsetsAll =>
      EdgeInsets.all(defaultEdgeSpace);

  static double get defaultEdgeSpace => screenWidth * 0.05;

  static EdgeInsets get desktopAdapterMargin {
    if (!isDesktop) {
      return EdgeInsets.zero;
    }
    const gmbrrtmprr_ = 600;
    final mdd_ = SizeConfig.screenWidth < gmbrrtmprr_
        ? 1.0
        : (SizeConfig.screenWidth - gmbrrtmprr_) / 2;
    return EdgeInsets.only(
      left: mdd_,
      right: mdd_,
    );
  }

  static double get devicePixelRatio => _mediaQueryData.devicePixelRatio;

  // static double get figmaTextScaleFactor => screenWidth / viewPort.width;

  static DeviceScreenType get getDeviceType {
    final orientation = _mediaQueryData.orientation;

    double deviceWidth = 0;

    if (orientation == Orientation.landscape) {
      deviceWidth = size.height;
    } else {
      deviceWidth = size.width;
    }

    if (deviceWidth > 600) {
      return DeviceScreenType.desktop;
    }

    if (deviceWidth > 550) {
      return DeviceScreenType.tablet;
    }

    return DeviceScreenType.mobile;
  }

  static String get info => '''\n
        from: MediaQuery\n
        size (pixels): w=${pixels.width}, h=${pixels.height}
        devicePixelRatio: $devicePixelRatio
        size: w=${size.width}, h=${size.height}
        textScaler: ${_mediaQueryData.textScaler}
        figmaTextScaleFactor: ${screenWidth / 360}
        \n
        padding: \n
        ${_mediaQueryData.padding.vertical}
        ${_mediaQueryData.padding.vertical * _mediaQueryData.devicePixelRatio}\n
        viewInsets: \n
        ${_mediaQueryData.viewInsets}
        ${_mediaQueryData.viewInsets * _mediaQueryData.devicePixelRatio}
        ''';

  static bool get isDesktop => getDeviceType == DeviceScreenType.desktop;

  static bool get isMobile => getDeviceType == DeviceScreenType.mobile;

  static bool get isSmallDevice => size.height < 720;

  static bool get isTablet => getDeviceType == DeviceScreenType.tablet;

  static double get marginValues =>
      _mediaQueryData.viewPadding.vertical +
      _mediaQueryData.viewInsets.vertical;

  static Size get physicalSize =>
      PlatformDispatcher.instance.views.first.physicalSize;

  static Size get pixels =>
      Size(size.width * devicePixelRatio, size.height * devicePixelRatio);

  static double get scaleSmallDevice => isSmallDevice ? 0.7 : 1.0;

  static Size get size => _mediaQueryData.size;

  /// _mediaQueryData.viewPadding.vertical +
  /// _mediaQueryData.viewInsets.vertical;
  static double get statusBar => _mediaQueryData.viewPadding.top;

  static TextScaler get textScaleFactor => _mediaQueryData.textScaler;

  static EdgeInsets edgeInsets({
    required EdgeInsets all,
    EdgeInsets? desktop,
    EdgeInsets? tablet,
    EdgeInsets? mobile,
    EdgeInsets? mobileSmallDevice,
  }) =>
      value<EdgeInsets>(
        all: all.fromSize,
        desktop: desktop?.fromSize,
        mobile: mobile?.fromSize,
        tablet: tablet?.fromSize,
        mobileSmallDevice: mobileSmallDevice?.fromSize,
      );

  static double fontSize(SizeTo size) => value(
        desktop: size.desktop?.width,
        mobile: size.mobile?.width,
        tablet: size.tablet?.width,
        mobileSmallDevice: size.mobileSmallDevice?.width,
      );
  static Size fromSize(
    SizeTo size,
  ) =>
      value(
        all: size.all,
        desktop: size.desktop,
        mobile: size.mobile,
        tablet: size.tablet,
        mobileSmallDevice: size.mobileSmallDevice,
      );
  static double getHorizontalSize(double px) =>
      px * (screenWidth / viewPort.width);

  static double getMaxSize(double px) =>
      max(getVerticalSize(px), getHorizontalSize(px));

  static double getSize(double px) =>
      min(getVerticalSize(px), getHorizontalSize(px));

  static double getVerticalSize(double px) {
    final newScreenHeight = screenHeight - statusBar;
    return px * (newScreenHeight / viewPort.height);
  }

  static double height(
    SizeTo size,
  ) =>
      value(
        all: size.all?.height,
        desktop: size.desktop?.height,
        mobile: size.mobile?.height,
        tablet: size.tablet?.height,
        mobileSmallDevice: size.mobileSmallDevice?.height,
      );

  static void init({BuildContext? context}) {
    _mediaQueryData = MediaQuery.of(context!);

    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }

  static double getTotalRelativeHeight(double percentSize) {
    return blockSizeVertical * percentSize;
  }

  static double getTotalRelativeWidth(double percentSize) {
    return blockSizeHorizontal * percentSize;
  }

  static double getSafeRelativeHeight(double percentSize) {
    return safeBlockVertical * percentSize;
  }

  static double getSafeRelativeWidth(double percentSize) {
    return safeBlockHorizontal * percentSize;
  }

  static T value<T>({
    T? all,
    T? desktop,
    T? tablet,
    T? mobile,
    T? mobileSmallDevice,
  }) {
    try {
      if (all == null &&
          desktop == null &&
          tablet == null &&
          mobile == null &&
          mobileSmallDevice == null) {
        throw Exception('SizeConfig: INVALID VALUE');
      }

      if (isDesktop) {
        return (desktop ?? all) as T;
      }
      if (isTablet) {
        return (tablet ?? all) as T;
      }
      if (isMobile) {
        if (SizeConfig.isSmallDevice && mobileSmallDevice != null) {
          return mobileSmallDevice;
        }
        return (mobile ?? all) as T;
      }

      throw Exception('DeviceScreenType NOT FOUND!');
    } catch (e, s) {
      print('message ex: $e, stacktrace: $s');
    }
    throw Exception('DeviceScreenType NOT FOUND!');
  }

  static double width(
    SizeTo size,
  ) =>
      value<double>(
        all: size.all?.width,
        desktop: size.desktop?.width,
        mobile: size.mobile?.width,
        tablet: size.tablet?.width,
        mobileSmallDevice: size.mobileSmallDevice?.width,
      );
}

extension SizeConfigExtension on num {
  double get h => SizeConfig.getVerticalSize(toDouble());
  double get r => SizeConfig.getMaxSize(toDouble());
  double get w => SizeConfig.getHorizontalSize(toDouble());
}
