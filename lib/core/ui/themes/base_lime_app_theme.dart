import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_lime_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseLimeAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseLimePalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseLimePalette.dark().scheme.sysPrimary,
    brightness: Brightness.dark,
  );

  static final light = ThemeData.light().copyWith(
    extensions: [_lightAppColors, _lightTextTheme],
    colorScheme: _lightColorScheme,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    extensions: [_darkAppColors, _darkTextTheme],
    colorScheme: _darkColorScheme,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
  );

  static final _lightAppColors = ColorsThemeExtension(
    hyperlinkActive: BaseLimePalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseLimePalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseLimePalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseLimePalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseLimePalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseLimePalette.light().scheme.refErrorE0,
    refErrorE10: BaseLimePalette.light().scheme.refErrorE10,
    refErrorE100: BaseLimePalette.light().scheme.refErrorE100,
    refErrorE15: BaseLimePalette.light().scheme.refErrorE15,
    refErrorE2: BaseLimePalette.light().scheme.refErrorE2,
    refErrorE20: BaseLimePalette.light().scheme.refErrorE20,
    refErrorE30: BaseLimePalette.light().scheme.refErrorE30,
    refErrorE4: BaseLimePalette.light().scheme.refErrorE4,
    refErrorE40: BaseLimePalette.light().scheme.refErrorE40,
    refErrorE50: BaseLimePalette.light().scheme.refErrorE50,
    refErrorE6: BaseLimePalette.light().scheme.refErrorE6,
    refErrorE60: BaseLimePalette.light().scheme.refErrorE60,
    refErrorE70: BaseLimePalette.light().scheme.refErrorE70,
    refErrorE8: BaseLimePalette.light().scheme.refErrorE8,
    refErrorE80: BaseLimePalette.light().scheme.refErrorE80,
    refErrorE85: BaseLimePalette.light().scheme.refErrorE85,
    refErrorE90: BaseLimePalette.light().scheme.refErrorE90,
    refErrorE93: BaseLimePalette.light().scheme.refErrorE93,
    refErrorE95: BaseLimePalette.light().scheme.refErrorE95,
    refErrorE98: BaseLimePalette.light().scheme.refErrorE98,
    refErrorE99: BaseLimePalette.light().scheme.refErrorE99,
    refNeutralN0: BaseLimePalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseLimePalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseLimePalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseLimePalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseLimePalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseLimePalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseLimePalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseLimePalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseLimePalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseLimePalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseLimePalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseLimePalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseLimePalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseLimePalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseLimePalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseLimePalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseLimePalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseLimePalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseLimePalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseLimePalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseLimePalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseLimePalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseLimePalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseLimePalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseLimePalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseLimePalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseLimePalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseLimePalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseLimePalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseLimePalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseLimePalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseLimePalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseLimePalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseLimePalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseLimePalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseLimePalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseLimePalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseLimePalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseLimePalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseLimePalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseLimePalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseLimePalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseLimePalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseLimePalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseLimePalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseLimePalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseLimePalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseLimePalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseLimePalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseLimePalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseLimePalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseLimePalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseLimePalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseLimePalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseLimePalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseLimePalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseLimePalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseLimePalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseLimePalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseLimePalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseLimePalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseLimePalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseLimePalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseLimePalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseLimePalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseLimePalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseLimePalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseLimePalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseLimePalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseLimePalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseLimePalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseLimePalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseLimePalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseLimePalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseLimePalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseLimePalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseLimePalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseLimePalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseLimePalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseLimePalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseLimePalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseLimePalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseLimePalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseLimePalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseLimePalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseLimePalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseLimePalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseLimePalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseLimePalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseLimePalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseLimePalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseLimePalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseLimePalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseLimePalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseLimePalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseLimePalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseLimePalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseLimePalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseLimePalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseLimePalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseLimePalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseLimePalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseLimePalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseLimePalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseLimePalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseLimePalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseLimePalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseLimePalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseLimePalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseLimePalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseLimePalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseLimePalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseLimePalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseLimePalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseLimePalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseLimePalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseLimePalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseLimePalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseLimePalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseLimePalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseLimePalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseLimePalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseLimePalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseLimePalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseLimePalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseLimePalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseLimePalette.light().scheme.refWarnW0,
    refWarnW10: BaseLimePalette.light().scheme.refWarnW10,
    refWarnW100: BaseLimePalette.light().scheme.refWarnW100,
    refWarnW15: BaseLimePalette.light().scheme.refWarnW15,
    refWarnW2: BaseLimePalette.light().scheme.refWarnW2,
    refWarnW20: BaseLimePalette.light().scheme.refWarnW20,
    refWarnW30: BaseLimePalette.light().scheme.refWarnW30,
    refWarnW4: BaseLimePalette.light().scheme.refWarnW4,
    refWarnW40: BaseLimePalette.light().scheme.refWarnW40,
    refWarnW50: BaseLimePalette.light().scheme.refWarnW50,
    refWarnW6: BaseLimePalette.light().scheme.refWarnW6,
    refWarnW60: BaseLimePalette.light().scheme.refWarnW60,
    refWarnW70: BaseLimePalette.light().scheme.refWarnW70,
    refWarnW8: BaseLimePalette.light().scheme.refWarnW8,
    refWarnW80: BaseLimePalette.light().scheme.refWarnW80,
    refWarnW85: BaseLimePalette.light().scheme.refWarnW85,
    refWarnW90: BaseLimePalette.light().scheme.refWarnW90,
    refWarnW93: BaseLimePalette.light().scheme.refWarnW93,
    refWarnW95: BaseLimePalette.light().scheme.refWarnW95,
    refWarnW98: BaseLimePalette.light().scheme.refWarnW98,
    refWarnW99: BaseLimePalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseLimePalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseLimePalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseLimePalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseLimePalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseLimePalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseLimePalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseLimePalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseLimePalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseLimePalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseLimePalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseLimePalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseLimePalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseLimePalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseLimePalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseLimePalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseLimePalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseLimePalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseLimePalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseLimePalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseLimePalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseLimePalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseLimePalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseLimePalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseLimePalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseLimePalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseLimePalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseLimePalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseLimePalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseLimePalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseLimePalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseLimePalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseLimePalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseLimePalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseLimePalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseLimePalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseLimePalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseLimePalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseLimePalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseLimePalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseLimePalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseLimePalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseLimePalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseLimePalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseLimePalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseLimePalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseLimePalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseLimePalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseLimePalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseLimePalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseLimePalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseLimePalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseLimePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseLimePalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseLimePalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseLimePalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseLimePalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseLimePalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseLimePalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseLimePalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseLimePalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseLimePalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseLimePalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseLimePalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseLimePalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseLimePalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseLimePalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseLimePalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseLimePalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseLimePalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseLimePalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseLimePalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseLimePalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseLimePalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseLimePalette.light().scheme.sysError,
    sysErrorContainer: BaseLimePalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseLimePalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseLimePalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseLimePalette.light().scheme.sysInverseSurface,
    sysOnError: BaseLimePalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseLimePalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseLimePalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseLimePalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseLimePalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseLimePalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseLimePalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseLimePalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseLimePalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseLimePalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseLimePalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseLimePalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseLimePalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseLimePalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseLimePalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseLimePalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseLimePalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseLimePalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseLimePalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseLimePalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseLimePalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseLimePalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseLimePalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseLimePalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseLimePalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseLimePalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseLimePalette.light().scheme.sysScrim,
    sysSecondary: BaseLimePalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseLimePalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseLimePalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseLimePalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseLimePalette.light().scheme.sysShadow,
    sysSuccess: BaseLimePalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseLimePalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseLimePalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseLimePalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseLimePalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseLimePalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseLimePalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseLimePalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseLimePalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseLimePalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseLimePalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseLimePalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseLimePalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseLimePalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseLimePalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseLimePalette.light().scheme.sysWarn,
    sysWarnContainer: BaseLimePalette.light().scheme.sysWarnContainer,
    aqua: BaseLimePalette.light().scheme.aqua,
    black: BaseLimePalette.light().scheme.black,
    blue: BaseLimePalette.light().scheme.blue,
    cyan: BaseLimePalette.light().scheme.cyan,
    grape: BaseLimePalette.light().scheme.grape,
    green: BaseLimePalette.light().scheme.green,
    lime: BaseLimePalette.light().scheme.lime,
    magenta: BaseLimePalette.light().scheme.magenta,
    orange: BaseLimePalette.light().scheme.orange,
    pink: BaseLimePalette.light().scheme.pink,
    purple: BaseLimePalette.light().scheme.purple,
    red: BaseLimePalette.light().scheme.red,
    white: BaseLimePalette.light().scheme.white,
    yellow: BaseLimePalette.light().scheme.yellow,
    onRed: BaseLimePalette.light().scheme.onRed,
    onOrange: BaseLimePalette.light().scheme.onOrange,
    onYellow: BaseLimePalette.light().scheme.onYellow,
    onLime: BaseLimePalette.light().scheme.onLime,
    onGreen: BaseLimePalette.light().scheme.onGreen,
    onAqua: BaseLimePalette.light().scheme.onAqua,
    onCyan: BaseLimePalette.light().scheme.onCyan,
    onBlue: BaseLimePalette.light().scheme.onBlue,
    onPurple: BaseLimePalette.light().scheme.onPurple,
    onGrape: BaseLimePalette.light().scheme.onGrape,
    onPink: BaseLimePalette.light().scheme.onPink,
    onMagenta: BaseLimePalette.light().scheme.onMagenta,
  );
  static final _lightTextTheme = TextsThemeExtension(
    displayLarge: BaseTexts().displayLarge,
    displayMedium: BaseTexts().displayMedium,
    displaySmall: BaseTexts().displaySmall,
    headlineLarge: BaseTexts().headlineLarge,
    headlineMedium: BaseTexts().headlineMedium,
    headlineSmall: BaseTexts().headlineSmall,
    titleLarge: BaseTexts().titleLarge,
    titleMedium: BaseTexts().titleMedium,
    titleSmall: BaseTexts().titleSmall,
    bodyLarge: BaseTexts().bodyLarge,
    bodyMedium: BaseTexts().bodyMedium,
    bodySmall: BaseTexts().bodySmall,
    bodySmallBold: BaseTexts().bodySmallBold,
    bodyMediumBold: BaseTexts().bodyMediumBold,
    bodyLargeBold: BaseTexts().bodyLargeBold,
    labelLarge: BaseTexts().labelLarge,
    labelMedium: BaseTexts().labelMedium,
    labelSmall: BaseTexts().labelSmall,
  );

  static final _darkAppColors = ColorsThemeExtension(
    hyperlinkActive: BaseLimePalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseLimePalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseLimePalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseLimePalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseLimePalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseLimePalette.dark().scheme.refErrorE0,
    refErrorE10: BaseLimePalette.dark().scheme.refErrorE10,
    refErrorE100: BaseLimePalette.dark().scheme.refErrorE100,
    refErrorE15: BaseLimePalette.dark().scheme.refErrorE15,
    refErrorE2: BaseLimePalette.dark().scheme.refErrorE2,
    refErrorE20: BaseLimePalette.dark().scheme.refErrorE20,
    refErrorE30: BaseLimePalette.dark().scheme.refErrorE30,
    refErrorE4: BaseLimePalette.dark().scheme.refErrorE4,
    refErrorE40: BaseLimePalette.dark().scheme.refErrorE40,
    refErrorE50: BaseLimePalette.dark().scheme.refErrorE50,
    refErrorE6: BaseLimePalette.dark().scheme.refErrorE6,
    refErrorE60: BaseLimePalette.dark().scheme.refErrorE60,
    refErrorE70: BaseLimePalette.dark().scheme.refErrorE70,
    refErrorE8: BaseLimePalette.dark().scheme.refErrorE8,
    refErrorE80: BaseLimePalette.dark().scheme.refErrorE80,
    refErrorE85: BaseLimePalette.dark().scheme.refErrorE85,
    refErrorE90: BaseLimePalette.dark().scheme.refErrorE90,
    refErrorE93: BaseLimePalette.dark().scheme.refErrorE93,
    refErrorE95: BaseLimePalette.dark().scheme.refErrorE95,
    refErrorE98: BaseLimePalette.dark().scheme.refErrorE98,
    refErrorE99: BaseLimePalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseLimePalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseLimePalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseLimePalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseLimePalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseLimePalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseLimePalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseLimePalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseLimePalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseLimePalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseLimePalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseLimePalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseLimePalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseLimePalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseLimePalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseLimePalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseLimePalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseLimePalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseLimePalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseLimePalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseLimePalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseLimePalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseLimePalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseLimePalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseLimePalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseLimePalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseLimePalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseLimePalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseLimePalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseLimePalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseLimePalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseLimePalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseLimePalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseLimePalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseLimePalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseLimePalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseLimePalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseLimePalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseLimePalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseLimePalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseLimePalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseLimePalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseLimePalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseLimePalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseLimePalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseLimePalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseLimePalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseLimePalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseLimePalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseLimePalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseLimePalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseLimePalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseLimePalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseLimePalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseLimePalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseLimePalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseLimePalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseLimePalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseLimePalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseLimePalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseLimePalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseLimePalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseLimePalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseLimePalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseLimePalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseLimePalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseLimePalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseLimePalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseLimePalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseLimePalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseLimePalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseLimePalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseLimePalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseLimePalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseLimePalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseLimePalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseLimePalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseLimePalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseLimePalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseLimePalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseLimePalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseLimePalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseLimePalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseLimePalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseLimePalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseLimePalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseLimePalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseLimePalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseLimePalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseLimePalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseLimePalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseLimePalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseLimePalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseLimePalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseLimePalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseLimePalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseLimePalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseLimePalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseLimePalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseLimePalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseLimePalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseLimePalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseLimePalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseLimePalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseLimePalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseLimePalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseLimePalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseLimePalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseLimePalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseLimePalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseLimePalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseLimePalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseLimePalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseLimePalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseLimePalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseLimePalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseLimePalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseLimePalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseLimePalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseLimePalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseLimePalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseLimePalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseLimePalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseLimePalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseLimePalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseLimePalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseLimePalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseLimePalette.dark().scheme.refWarnW0,
    refWarnW10: BaseLimePalette.dark().scheme.refWarnW10,
    refWarnW100: BaseLimePalette.dark().scheme.refWarnW100,
    refWarnW15: BaseLimePalette.dark().scheme.refWarnW15,
    refWarnW2: BaseLimePalette.dark().scheme.refWarnW2,
    refWarnW20: BaseLimePalette.dark().scheme.refWarnW20,
    refWarnW30: BaseLimePalette.dark().scheme.refWarnW30,
    refWarnW4: BaseLimePalette.dark().scheme.refWarnW4,
    refWarnW40: BaseLimePalette.dark().scheme.refWarnW40,
    refWarnW50: BaseLimePalette.dark().scheme.refWarnW50,
    refWarnW6: BaseLimePalette.dark().scheme.refWarnW6,
    refWarnW60: BaseLimePalette.dark().scheme.refWarnW60,
    refWarnW70: BaseLimePalette.dark().scheme.refWarnW70,
    refWarnW8: BaseLimePalette.dark().scheme.refWarnW8,
    refWarnW80: BaseLimePalette.dark().scheme.refWarnW80,
    refWarnW85: BaseLimePalette.dark().scheme.refWarnW85,
    refWarnW90: BaseLimePalette.dark().scheme.refWarnW90,
    refWarnW93: BaseLimePalette.dark().scheme.refWarnW93,
    refWarnW95: BaseLimePalette.dark().scheme.refWarnW95,
    refWarnW98: BaseLimePalette.dark().scheme.refWarnW98,
    refWarnW99: BaseLimePalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseLimePalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseLimePalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseLimePalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseLimePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseLimePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseLimePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseLimePalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseLimePalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseLimePalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseLimePalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseLimePalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseLimePalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseLimePalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseLimePalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseLimePalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseLimePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseLimePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseLimePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseLimePalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseLimePalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseLimePalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseLimePalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseLimePalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseLimePalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseLimePalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseLimePalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseLimePalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseLimePalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseLimePalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseLimePalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseLimePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseLimePalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseLimePalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseLimePalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseLimePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseLimePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseLimePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseLimePalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseLimePalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseLimePalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseLimePalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseLimePalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseLimePalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseLimePalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseLimePalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseLimePalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseLimePalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseLimePalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseLimePalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseLimePalette.dark().scheme.sysError,
    sysErrorContainer: BaseLimePalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseLimePalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseLimePalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseLimePalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseLimePalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseLimePalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseLimePalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseLimePalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseLimePalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseLimePalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseLimePalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseLimePalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseLimePalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseLimePalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseLimePalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseLimePalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseLimePalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseLimePalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseLimePalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseLimePalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseLimePalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseLimePalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseLimePalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseLimePalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseLimePalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseLimePalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseLimePalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseLimePalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseLimePalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseLimePalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseLimePalette.dark().scheme.sysScrim,
    sysSecondary: BaseLimePalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseLimePalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseLimePalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseLimePalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseLimePalette.dark().scheme.sysShadow,
    sysSuccess: BaseLimePalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseLimePalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseLimePalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseLimePalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseLimePalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseLimePalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseLimePalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseLimePalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseLimePalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseLimePalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseLimePalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseLimePalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseLimePalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseLimePalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseLimePalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseLimePalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseLimePalette.dark().scheme.sysWarnContainer,
    aqua: BaseLimePalette.dark().scheme.aqua,
    black: BaseLimePalette.dark().scheme.black,
    blue: BaseLimePalette.dark().scheme.blue,
    cyan: BaseLimePalette.dark().scheme.cyan,
    grape: BaseLimePalette.dark().scheme.grape,
    green: BaseLimePalette.dark().scheme.green,
    lime: BaseLimePalette.dark().scheme.lime,
    magenta: BaseLimePalette.dark().scheme.magenta,
    orange: BaseLimePalette.dark().scheme.orange,
    pink: BaseLimePalette.dark().scheme.pink,
    purple: BaseLimePalette.dark().scheme.purple,
    red: BaseLimePalette.dark().scheme.red,
    white: BaseLimePalette.dark().scheme.white,
    yellow: BaseLimePalette.dark().scheme.yellow,
    onRed: BaseLimePalette.dark().scheme.onRed,
    onOrange: BaseLimePalette.dark().scheme.onOrange,
    onYellow: BaseLimePalette.dark().scheme.onYellow,
    onLime: BaseLimePalette.dark().scheme.onLime,
    onGreen: BaseLimePalette.dark().scheme.onGreen,
    onAqua: BaseLimePalette.dark().scheme.onAqua,
    onCyan: BaseLimePalette.dark().scheme.onCyan,
    onBlue: BaseLimePalette.dark().scheme.onBlue,
    onPurple: BaseLimePalette.dark().scheme.onPurple,
    onGrape: BaseLimePalette.dark().scheme.onGrape,
    onPink: BaseLimePalette.dark().scheme.onPink,
    onMagenta: BaseLimePalette.dark().scheme.onMagenta,
  );
  static final _darkTextTheme = TextsThemeExtension(
    displayLarge: BaseTexts().displayLarge,
    displayMedium: BaseTexts().displayMedium,
    displaySmall: BaseTexts().displaySmall,
    headlineLarge: BaseTexts().headlineLarge,
    headlineMedium: BaseTexts().headlineMedium,
    headlineSmall: BaseTexts().headlineSmall,
    titleLarge: BaseTexts().titleLarge,
    titleMedium: BaseTexts().titleMedium,
    titleSmall: BaseTexts().titleSmall,
    bodyLarge: BaseTexts().bodyLarge,
    bodyMedium: BaseTexts().bodyMedium,
    bodySmall: BaseTexts().bodySmall,
    bodySmallBold: BaseTexts().bodySmallBold,
    bodyMediumBold: BaseTexts().bodyMediumBold,
    bodyLargeBold: BaseTexts().bodyLargeBold,
    labelLarge: BaseTexts().labelLarge,
    labelMedium: BaseTexts().labelMedium,
    labelSmall: BaseTexts().labelSmall,
  );
}
