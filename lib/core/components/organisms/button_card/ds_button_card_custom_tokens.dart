import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/infrastructure/utils/color_formater.dart';
import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/get.dart';

T? parseNamedEnum<T extends Enum>(List<T> values, dynamic raw) {
  if (raw == null) {
    return null;
  }
  if (raw is int && raw >= 0 && raw < values.length) {
    return values[raw];
  }
  if (raw is String) {
    for (final value in values) {
      if (value.name == raw) {
        return value;
      }
    }
  }
  return null;
}

TextStyle resolveCardTextStyle(TextsThemeExtension texts, String? name) {
  switch (name) {
    case 'displayLarge':
      return texts.displayLarge;
    case 'displayMedium':
      return texts.displayMedium;
    case 'displaySmall':
      return texts.displaySmall;
    case 'headlineLarge':
      return texts.headlineLarge;
    case 'headlineMedium':
      return texts.headlineMedium;
    case 'headlineSmall':
      return texts.headlineSmall;
    case 'titleLarge':
      return texts.titleLarge;
    case 'titleMedium':
      return texts.titleMedium;
    case 'titleSmall':
      return texts.titleSmall;
    case 'bodyLarge':
      return texts.bodyLarge;
    case 'bodyMedium':
      return texts.bodyMedium;
    case 'bodySmall':
      return texts.bodySmall;
    case 'bodySmallBold':
      return texts.bodySmallBold;
    case 'bodyMediumBold':
      return texts.bodyMediumBold;
    case 'bodyLargeBold':
      return texts.bodyLargeBold;
    case 'labelLarge':
      return texts.labelLarge;
    case 'labelMedium':
      return texts.labelMedium;
    case 'labelSmall':
      return texts.labelSmall;
    default:
      return texts.bodyMedium;
  }
}

Color resolveCardColor(
  ColorsThemeExtension colors, {
  String? name,
  String? hexColor,
  required Color fallback,
}) {
  if (hexColor != null && hexColor.isNotEmpty) {
    final parsed = ColorFormater.tryFromHex(hexColor);
    if (parsed != null) {
      return parsed;
    }
  }
  if (name != null && name.isNotEmpty) {
    return resolveSysColor(colors, name, fallback: fallback);
  }
  return fallback;
}

Color resolveSysColor(
  ColorsThemeExtension colors,
  String? name, {
  required Color fallback,
}) {
  switch (name) {
    case 'sysError':
      return colors.sysError;
    case 'sysErrorContainer':
      return colors.sysErrorContainer;
    case 'sysInverseOnSurface':
      return colors.sysInverseOnSurface;
    case 'sysInversePrimary':
      return colors.sysInversePrimary;
    case 'sysInverseSurface':
      return colors.sysInverseSurface;
    case 'sysOnError':
      return colors.sysOnError;
    case 'sysOnErrorContainer':
      return colors.sysOnErrorContainer;
    case 'sysOnPrimary':
      return colors.sysOnPrimary;
    case 'sysOnPrimaryContainer':
      return colors.sysOnPrimaryContainer;
    case 'sysOnPrimaryFixed':
      return colors.sysOnPrimaryFixed;
    case 'sysOnPrimaryFixedVariant':
      return colors.sysOnPrimaryFixedVariant;
    case 'sysOnSecondary':
      return colors.sysOnSecondary;
    case 'sysOnSecondaryContainer':
      return colors.sysOnSecondaryContainer;
    case 'sysOnSecondaryFixed':
      return colors.sysOnSecondaryFixed;
    case 'sysOnSecondaryFixedVariant':
      return colors.sysOnSecondaryFixedVariant;
    case 'sysOnSuccess':
      return colors.sysOnSuccess;
    case 'sysOnSuccessContainer':
      return colors.sysOnSuccessContainer;
    case 'sysOnSurface':
      return colors.sysOnSurface;
    case 'sysOnSurfaceVariant':
      return colors.sysOnSurfaceVariant;
    case 'sysOnTertiary':
      return colors.sysOnTertiary;
    case 'sysOnTertiaryContainer':
      return colors.sysOnTertiaryContainer;
    case 'sysOnTertiaryFixed':
      return colors.sysOnTertiaryFixed;
    case 'sysOnTertiaryFixedVariant':
      return colors.sysOnTertiaryFixedVariant;
    case 'sysOnWarn':
      return colors.sysOnWarn;
    case 'sysOnWarnContainer':
      return colors.sysOnWarnContainer;
    case 'sysOutline':
      return colors.sysOutline;
    case 'sysOutlineVariant':
      return colors.sysOutlineVariant;
    case 'sysPrimary':
      return colors.sysPrimary;
    case 'sysPrimaryContainer':
      return colors.sysPrimaryContainer;
    case 'sysPrimaryFixed':
      return colors.sysPrimaryFixed;
    case 'sysPrimaryFixedDim':
      return colors.sysPrimaryFixedDim;
    case 'sysScrim':
      return colors.sysScrim;
    case 'sysSecondary':
      return colors.sysSecondary;
    case 'sysSecondaryContainer':
      return colors.sysSecondaryContainer;
    case 'sysSecondaryFixed':
      return colors.sysSecondaryFixed;
    case 'sysSecondaryFixedDim':
      return colors.sysSecondaryFixedDim;
    case 'sysShadow':
      return colors.sysShadow;
    case 'sysSuccess':
      return colors.sysSuccess;
    case 'sysSuccessContainer':
      return colors.sysSuccessContainer;
    case 'sysSurfaceTinted':
      return colors.sysSurfaceTinted;
    case 'sysSurface':
      return colors.sysSurface;
    case 'sysSurfaceBright':
      return colors.sysSurfaceBright;
    case 'sysSurfaceContainer':
      return colors.sysSurfaceContainer;
    case 'sysSurfaceContainerHigh':
      return colors.sysSurfaceContainerHigh;
    case 'sysSurfaceContainerHighest':
      return colors.sysSurfaceContainerHighest;
    case 'sysSurfaceContainerLow':
      return colors.sysSurfaceContainerLow;
    case 'sysSurfaceContainerLowest':
      return colors.sysSurfaceContainerLowest;
    case 'sysSurfaceDim':
      return colors.sysSurfaceDim;
    case 'sysTertiary':
      return colors.sysTertiary;
    case 'sysTertiaryContainer':
      return colors.sysTertiaryContainer;
    case 'sysTertiaryFixed':
      return colors.sysTertiaryFixed;
    case 'sysTertiaryFixedDim':
      return colors.sysTertiaryFixedDim;
    case 'sysWarn':
      return colors.sysWarn;
    case 'sysWarnContainer':
      return colors.sysWarnContainer;
    default:
      return fallback;
  }
}

DSSize resolveDsSize(String? name) {
  return parseNamedEnum(DSSize.values, name) ?? DSSize.medium;
}

BoxFit resolveBoxFit(String? name) {
  switch (name) {
    case 'contain':
      return BoxFit.contain;
    case 'fill':
      return BoxFit.fill;
    case 'cover':
    default:
      return BoxFit.cover;
  }
}

int? resolveCardIconCodePoint({String? name, int? codePoint}) {
  return codePoint ?? (name != null ? SymbolsGet.map[name] : null);
}

Widget buildCardImage(String src, BoxFit fit) {
  final isNetwork = src.startsWith('http://') || src.startsWith('https://');
  if (isNetwork) {
    return Image.network(src, fit: fit);
  }
  return Image.asset(src, fit: fit);
}

const dsSpacingTokens = <String, double>{
  'spacing-xs': 8.0,
  'spacing-sm': 16.0,
  'spacing-md': 24.0,
  'spacing-lg': 32.0,
  'spacing-xl': 48.0,
  'spacing-2xl': 56.0,
  'spacing-3xl': 64.0,
};

double resolveCardSpacing(String? token) {
  if (token == null || token.trim().isEmpty) {
    return 0.0;
  }
  final trimmed = token.trim();
  final lower = trimmed.toLowerCase().replaceAll('_', '-');
  if (dsSpacingTokens.containsKey(lower)) {
    return dsSpacingTokens[lower]!;
  }
  final kebab = trimmed
      .replaceAllMapped(RegExp(r'([a-z])([A-Z0-9])'), (m) => '${m[1]}-${m[2]}')
      .toLowerCase();
  if (dsSpacingTokens.containsKey(kebab)) {
    return dsSpacingTokens[kebab]!;
  }
  return double.tryParse(trimmed) ?? 0.0;
}
