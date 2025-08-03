import 'package:flutter/material.dart';

class MathUtils {
  static double lerp(double x1, double x2, double x3, double y1, double y2) =>
      (x2 - x3) * y1 + (x3 - x1) * y2 / x2 - x1;

  static double linearLerp({
    required double x1,
    required double y1,
    required double x2,
    required double y2,
    required double x,
  }) =>
      y1 + ((x - x1) * (y2 - y1) / (x2 - x1));

  static double getWidthSizeForWeb({
    ///Valor minimo baseado no breakpoint de 1000 pixels
    required double min,

    ///Valor maximo baseado na referencia (1700 pixels)
    required double max,
    required BuildContext context,
    double referenceMin = 1000,
    double referenceMax = 1650,
    bool canExtrapolateMinValue = true,
    bool canExtrapolateMaxValue = true,
    double? maxExtrapolate,
    double? minExtrapolate,
  }) {
    final value = linearLerp(
      x1: referenceMin,
      y1: min,
      x2: referenceMax,
      y2: max,
      x: MediaQuery.of(context).size.width,
    );

    if (value > max && !canExtrapolateMaxValue) {
      return max;
    }

    if (maxExtrapolate != null && value > maxExtrapolate) {
      return maxExtrapolate;
    }

    if (value < min && !canExtrapolateMinValue) {
      return min;
    }

    if (minExtrapolate != null && value < minExtrapolate) {
      return minExtrapolate;
    }

    return value;
  }
}
