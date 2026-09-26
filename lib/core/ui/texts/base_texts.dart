import 'package:flutter/material.dart';

class BaseTexts {
  factory BaseTexts() => BaseTexts.create(
        fontFamily: _fontFamily,
        package: _package,
        displayLarge: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 80,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: -1.2,
          height: 1.2,
          decoration: TextDecoration.none,
        ),
        displayMedium: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 57,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.28,
          height: 1.12,
          decoration: TextDecoration.none,
        ),
        displaySmall: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 45,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.42,
          decoration: TextDecoration.none,
        ),
        headlineLarge: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 32,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          height: 1.25,
          decoration: TextDecoration.none,
        ),
        headlineMedium: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          height: 1.29,
          decoration: TextDecoration.none,
        ),
        headlineSmall: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          height: 1.33,
          decoration: TextDecoration.none,
        ),
        titleLarge: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.27,
          decoration: TextDecoration.none,
        ),
        titleMedium: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.5,
          decoration: TextDecoration.none,
        ),
        titleSmall: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.04,
          height: 1.43,
          decoration: TextDecoration.none,
        ),
        bodyLarge: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.5,
          decoration: TextDecoration.none,
        ),
        bodyMedium: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.43,
          decoration: TextDecoration.none,
        ),
        bodySmall: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.03,
          height: 1.33,
          decoration: TextDecoration.none,
        ),
        bodySmallBold: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.03,
          height: 1.33,
          decoration: TextDecoration.none,
        ),
        bodyMediumBold: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.43,
          decoration: TextDecoration.none,
        ),
        bodyLargeBold: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.5,
          decoration: TextDecoration.none,
        ),
        labelLarge: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.43,
          decoration: TextDecoration.none,
        ),
        labelMedium: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.03,
          height: 1.33,
          decoration: TextDecoration.none,
        ),
        labelSmall: TextStyle(
          package: _package,
          fontFamily: _fontFamily,
          fontSize: 11,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.03,
          height: 1.45,
          decoration: TextDecoration.none,
        ),
      );

  const BaseTexts.create({
    required String fontFamily,
    String? package,
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.bodySmallBold,
    required this.bodyMediumBold,
    required this.bodyLargeBold,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  static const _package = 'design_system';
  static const _fontFamily = 'Noto Sans';

  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle bodySmallBold;
  final TextStyle bodyMediumBold;
  final TextStyle bodyLargeBold;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
}
