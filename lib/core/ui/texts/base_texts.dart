import 'package:flutter/material.dart';

class BaseTexts {
  factory BaseTexts([String? fontFamily, String? package]) => BaseTexts.create(
        displayLarge: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 80,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: -2.5,
          height: 1.2,
        ),
        displayMedium: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 57,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: -1,
          height: 1.12,
        ),
        displaySmall: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 45,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.5,
          height: 1.16,
        ),
        headlineLarge: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 32,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.5,
          height: 1.25,
        ),
        headlineMedium: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.5,
          height: 1.29,
        ),
        headlineSmall: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.5,
          height: 1.33,
        ),
        titleLarge: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.25,
          height: 1.27,
        ),
        titleMedium: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.5,
          height: 1.5,
        ),
        titleSmall: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          letterSpacing: 1,
          height: 1.43,
        ),
        bodyLarge: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          height: 1.5,
        ),
        bodyMedium: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.25,
          height: 1.43,
        ),
        bodySmall: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.5,
          height: 1.33,
        ),
        labelLarge: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          height: 1.43,
        ),
        labelMedium: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          height: 1.33,
        ),
        labelSmall: TextStyle(
          package: package ?? _package,
          fontFamily: fontFamily ?? 'Plus Jakarta Sans',
          fontSize: 11,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          height: 1.45,
        ),
      );

  const BaseTexts.create({
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
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  static const _package = 'theme';

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
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
}
