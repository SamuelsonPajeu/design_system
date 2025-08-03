import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeConfigSizeExtension on Size {
  Size get fromViewPort => Size(
        width.w,
        height.h,
      );
  Size get fromViewPortRadius => Size(
        width.r,
        height.r,
      );
}

extension SizeConfigEdgeInsetsExtension on EdgeInsets {
  EdgeInsets get fromSize => EdgeInsets.only(
        top: top.h,
        bottom: bottom.h,
        left: left.w,
        right: right.w,
      );
}

abstract class ISizeTo<T> {
  T? all;
  T? desktop;
  T? tablet;
  T? mobile;
  T? mobileSmallDevice;
  bool? useRadius;
  ISizeTo({
    this.all,
    this.desktop,
    this.tablet,
    this.mobile,
    this.mobileSmallDevice,
    this.useRadius,
  });
}

class EdgeInsetsTo extends ISizeTo<EdgeInsets> {
  EdgeInsetsTo._({
    super.all,
    super.desktop,
    super.tablet,
    super.mobile,
    super.mobileSmallDevice,
  });

  factory EdgeInsetsTo.all(EdgeInsets value) {
    return EdgeInsetsTo._(all: value.fromSize);
  }

  factory EdgeInsetsTo.specific({
    EdgeInsets? others,
    EdgeInsets? mobileSmallDevice,
    EdgeInsets? tablet,
    required EdgeInsets desktop,
    required EdgeInsets mobile,
  }) {
    return EdgeInsetsTo._(
      all: others?.fromSize,
      desktop: desktop.fromSize,
      tablet: tablet?.fromSize,
      mobile: mobile.fromSize,
      mobileSmallDevice: mobileSmallDevice?.fromSize,
    );
  }
}

class SizeTo extends ISizeTo<Size> {
  SizeTo._({
    super.all,
    super.desktop,
    super.tablet,
    super.mobile,
    super.mobileSmallDevice,
  });

  factory SizeTo.all(
    double value, {
    bool useRadius = false,
  }) {
    return SizeTo._(
      all: useRadius
          ? Size(value, value).fromViewPortRadius
          : Size(value, value).fromViewPort,
    );
  }

  factory SizeTo.specific({
    Size? others,
    Size? mobileSmallDevice,
    required Size tablet,
    required Size desktop,
    required Size mobile,
  }) {
    return SizeTo._(
      all: others?.fromViewPort,
      desktop: desktop.fromViewPort,
      tablet: tablet.fromViewPort,
      mobile: mobile.fromViewPort,
      mobileSmallDevice: mobileSmallDevice?.fromViewPort,
    );
  }
}
