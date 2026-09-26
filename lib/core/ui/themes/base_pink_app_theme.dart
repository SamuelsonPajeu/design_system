import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_pink_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BasePinkAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BasePinkPalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BasePinkPalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BasePinkPalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BasePinkPalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePinkPalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePinkPalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePinkPalette.light().scheme.hyperlinkVisited,
    refErrorE0: BasePinkPalette.light().scheme.refErrorE0,
    refErrorE10: BasePinkPalette.light().scheme.refErrorE10,
    refErrorE100: BasePinkPalette.light().scheme.refErrorE100,
    refErrorE15: BasePinkPalette.light().scheme.refErrorE15,
    refErrorE2: BasePinkPalette.light().scheme.refErrorE2,
    refErrorE20: BasePinkPalette.light().scheme.refErrorE20,
    refErrorE30: BasePinkPalette.light().scheme.refErrorE30,
    refErrorE4: BasePinkPalette.light().scheme.refErrorE4,
    refErrorE40: BasePinkPalette.light().scheme.refErrorE40,
    refErrorE50: BasePinkPalette.light().scheme.refErrorE50,
    refErrorE6: BasePinkPalette.light().scheme.refErrorE6,
    refErrorE60: BasePinkPalette.light().scheme.refErrorE60,
    refErrorE70: BasePinkPalette.light().scheme.refErrorE70,
    refErrorE8: BasePinkPalette.light().scheme.refErrorE8,
    refErrorE80: BasePinkPalette.light().scheme.refErrorE80,
    refErrorE85: BasePinkPalette.light().scheme.refErrorE85,
    refErrorE90: BasePinkPalette.light().scheme.refErrorE90,
    refErrorE93: BasePinkPalette.light().scheme.refErrorE93,
    refErrorE95: BasePinkPalette.light().scheme.refErrorE95,
    refErrorE98: BasePinkPalette.light().scheme.refErrorE98,
    refErrorE99: BasePinkPalette.light().scheme.refErrorE99,
    refNeutralN0: BasePinkPalette.light().scheme.refNeutralN0,
    refNeutralN10: BasePinkPalette.light().scheme.refNeutralN10,
    refNeutralN100: BasePinkPalette.light().scheme.refNeutralN100,
    refNeutralN15: BasePinkPalette.light().scheme.refNeutralN15,
    refNeutralN2: BasePinkPalette.light().scheme.refNeutralN2,
    refNeutralN20: BasePinkPalette.light().scheme.refNeutralN20,
    refNeutralN30: BasePinkPalette.light().scheme.refNeutralN30,
    refNeutralN4: BasePinkPalette.light().scheme.refNeutralN4,
    refNeutralN40: BasePinkPalette.light().scheme.refNeutralN40,
    refNeutralN50: BasePinkPalette.light().scheme.refNeutralN50,
    refNeutralN6: BasePinkPalette.light().scheme.refNeutralN6,
    refNeutralN60: BasePinkPalette.light().scheme.refNeutralN60,
    refNeutralN70: BasePinkPalette.light().scheme.refNeutralN70,
    refNeutralN8: BasePinkPalette.light().scheme.refNeutralN8,
    refNeutralN80: BasePinkPalette.light().scheme.refNeutralN80,
    refNeutralN85: BasePinkPalette.light().scheme.refNeutralN85,
    refNeutralN90: BasePinkPalette.light().scheme.refNeutralN90,
    refNeutralN93: BasePinkPalette.light().scheme.refNeutralN93,
    refNeutralN95: BasePinkPalette.light().scheme.refNeutralN95,
    refNeutralN98: BasePinkPalette.light().scheme.refNeutralN98,
    refNeutralN99: BasePinkPalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BasePinkPalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BasePinkPalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BasePinkPalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BasePinkPalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BasePinkPalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BasePinkPalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BasePinkPalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BasePinkPalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BasePinkPalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BasePinkPalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BasePinkPalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BasePinkPalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BasePinkPalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BasePinkPalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BasePinkPalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BasePinkPalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BasePinkPalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BasePinkPalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BasePinkPalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BasePinkPalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BasePinkPalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BasePinkPalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BasePinkPalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BasePinkPalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BasePinkPalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BasePinkPalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BasePinkPalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BasePinkPalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BasePinkPalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BasePinkPalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BasePinkPalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BasePinkPalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BasePinkPalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BasePinkPalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BasePinkPalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BasePinkPalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BasePinkPalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BasePinkPalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BasePinkPalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BasePinkPalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BasePinkPalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BasePinkPalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BasePinkPalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BasePinkPalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BasePinkPalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BasePinkPalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BasePinkPalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BasePinkPalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BasePinkPalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BasePinkPalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BasePinkPalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BasePinkPalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BasePinkPalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BasePinkPalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BasePinkPalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BasePinkPalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BasePinkPalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BasePinkPalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BasePinkPalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BasePinkPalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BasePinkPalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BasePinkPalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BasePinkPalette.light().scheme.refSecondaryS99,
    refSuccessU0: BasePinkPalette.light().scheme.refSuccessU0,
    refSuccessU10: BasePinkPalette.light().scheme.refSuccessU10,
    refSuccessU100: BasePinkPalette.light().scheme.refSuccessU100,
    refSuccessU15: BasePinkPalette.light().scheme.refSuccessU15,
    refSuccessU2: BasePinkPalette.light().scheme.refSuccessU2,
    refSuccessU20: BasePinkPalette.light().scheme.refSuccessU20,
    refSuccessU30: BasePinkPalette.light().scheme.refSuccessU30,
    refSuccessU4: BasePinkPalette.light().scheme.refSuccessU4,
    refSuccessU40: BasePinkPalette.light().scheme.refSuccessU40,
    refSuccessU50: BasePinkPalette.light().scheme.refSuccessU50,
    refSuccessU6: BasePinkPalette.light().scheme.refSuccessU6,
    refSuccessU60: BasePinkPalette.light().scheme.refSuccessU60,
    refSuccessU70: BasePinkPalette.light().scheme.refSuccessU70,
    refSuccessU8: BasePinkPalette.light().scheme.refSuccessU8,
    refSuccessU80: BasePinkPalette.light().scheme.refSuccessU80,
    refSuccessU85: BasePinkPalette.light().scheme.refSuccessU85,
    refSuccessU90: BasePinkPalette.light().scheme.refSuccessU90,
    refSuccessU93: BasePinkPalette.light().scheme.refSuccessU93,
    refSuccessU95: BasePinkPalette.light().scheme.refSuccessU95,
    refSuccessU98: BasePinkPalette.light().scheme.refSuccessU98,
    refSuccessU99: BasePinkPalette.light().scheme.refSuccessU99,
    refTertiaryT0: BasePinkPalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BasePinkPalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BasePinkPalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BasePinkPalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BasePinkPalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BasePinkPalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BasePinkPalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BasePinkPalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BasePinkPalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BasePinkPalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BasePinkPalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BasePinkPalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BasePinkPalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BasePinkPalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BasePinkPalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BasePinkPalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BasePinkPalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BasePinkPalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BasePinkPalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BasePinkPalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BasePinkPalette.light().scheme.refTertiaryT99,
    refWarnW0: BasePinkPalette.light().scheme.refWarnW0,
    refWarnW10: BasePinkPalette.light().scheme.refWarnW10,
    refWarnW100: BasePinkPalette.light().scheme.refWarnW100,
    refWarnW15: BasePinkPalette.light().scheme.refWarnW15,
    refWarnW2: BasePinkPalette.light().scheme.refWarnW2,
    refWarnW20: BasePinkPalette.light().scheme.refWarnW20,
    refWarnW30: BasePinkPalette.light().scheme.refWarnW30,
    refWarnW4: BasePinkPalette.light().scheme.refWarnW4,
    refWarnW40: BasePinkPalette.light().scheme.refWarnW40,
    refWarnW50: BasePinkPalette.light().scheme.refWarnW50,
    refWarnW6: BasePinkPalette.light().scheme.refWarnW6,
    refWarnW60: BasePinkPalette.light().scheme.refWarnW60,
    refWarnW70: BasePinkPalette.light().scheme.refWarnW70,
    refWarnW8: BasePinkPalette.light().scheme.refWarnW8,
    refWarnW80: BasePinkPalette.light().scheme.refWarnW80,
    refWarnW85: BasePinkPalette.light().scheme.refWarnW85,
    refWarnW90: BasePinkPalette.light().scheme.refWarnW90,
    refWarnW93: BasePinkPalette.light().scheme.refWarnW93,
    refWarnW95: BasePinkPalette.light().scheme.refWarnW95,
    refWarnW98: BasePinkPalette.light().scheme.refWarnW98,
    refWarnW99: BasePinkPalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BasePinkPalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BasePinkPalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BasePinkPalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BasePinkPalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BasePinkPalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BasePinkPalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BasePinkPalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BasePinkPalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BasePinkPalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BasePinkPalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BasePinkPalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BasePinkPalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BasePinkPalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BasePinkPalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BasePinkPalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BasePinkPalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BasePinkPalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BasePinkPalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BasePinkPalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BasePinkPalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BasePinkPalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BasePinkPalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BasePinkPalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BasePinkPalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BasePinkPalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BasePinkPalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BasePinkPalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BasePinkPalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BasePinkPalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BasePinkPalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BasePinkPalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BasePinkPalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BasePinkPalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BasePinkPalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BasePinkPalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BasePinkPalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BasePinkPalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BasePinkPalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BasePinkPalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BasePinkPalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BasePinkPalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BasePinkPalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BasePinkPalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BasePinkPalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BasePinkPalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BasePinkPalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BasePinkPalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BasePinkPalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BasePinkPalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BasePinkPalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BasePinkPalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BasePinkPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BasePinkPalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BasePinkPalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BasePinkPalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BasePinkPalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BasePinkPalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BasePinkPalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BasePinkPalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BasePinkPalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BasePinkPalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BasePinkPalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BasePinkPalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BasePinkPalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BasePinkPalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BasePinkPalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BasePinkPalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BasePinkPalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BasePinkPalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BasePinkPalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BasePinkPalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BasePinkPalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BasePinkPalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BasePinkPalette.light().scheme.sysError,
    sysErrorContainer: BasePinkPalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePinkPalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePinkPalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BasePinkPalette.light().scheme.sysInverseSurface,
    sysOnError: BasePinkPalette.light().scheme.sysOnError,
    sysOnErrorContainer: BasePinkPalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePinkPalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BasePinkPalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePinkPalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePinkPalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePinkPalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BasePinkPalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePinkPalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePinkPalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePinkPalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BasePinkPalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePinkPalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePinkPalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePinkPalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BasePinkPalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BasePinkPalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BasePinkPalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BasePinkPalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BasePinkPalette.light().scheme.sysOnWarnContainer,
    sysOutline: BasePinkPalette.light().scheme.sysOutline,
    sysOutlineVariant: BasePinkPalette.light().scheme.sysOutlineVariant,
    sysPrimary: BasePinkPalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BasePinkPalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BasePinkPalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BasePinkPalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BasePinkPalette.light().scheme.sysScrim,
    sysSecondary: BasePinkPalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BasePinkPalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePinkPalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePinkPalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BasePinkPalette.light().scheme.sysShadow,
    sysSuccess: BasePinkPalette.light().scheme.sysSuccess,
    sysSuccessContainer: BasePinkPalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BasePinkPalette.light().scheme.sysSurfaceTinted,
    sysSurface: BasePinkPalette.light().scheme.sysSurface,
    sysSurfaceBright: BasePinkPalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePinkPalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BasePinkPalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePinkPalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BasePinkPalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePinkPalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePinkPalette.light().scheme.sysSurfaceDim,
    sysTertiary: BasePinkPalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BasePinkPalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePinkPalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePinkPalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BasePinkPalette.light().scheme.sysWarn,
    sysWarnContainer: BasePinkPalette.light().scheme.sysWarnContainer,
    aqua: BasePinkPalette.light().scheme.aqua,
    black: BasePinkPalette.light().scheme.black,
    blue: BasePinkPalette.light().scheme.blue,
    cyan: BasePinkPalette.light().scheme.cyan,
    grape: BasePinkPalette.light().scheme.grape,
    green: BasePinkPalette.light().scheme.green,
    lime: BasePinkPalette.light().scheme.lime,
    magenta: BasePinkPalette.light().scheme.magenta,
    orange: BasePinkPalette.light().scheme.orange,
    pink: BasePinkPalette.light().scheme.pink,
    purple: BasePinkPalette.light().scheme.purple,
    red: BasePinkPalette.light().scheme.red,
    white: BasePinkPalette.light().scheme.white,
    yellow: BasePinkPalette.light().scheme.yellow,
    onRed: BasePinkPalette.light().scheme.onRed,
    onOrange: BasePinkPalette.light().scheme.onOrange,
    onYellow: BasePinkPalette.light().scheme.onYellow,
    onLime: BasePinkPalette.light().scheme.onLime,
    onGreen: BasePinkPalette.light().scheme.onGreen,
    onAqua: BasePinkPalette.light().scheme.onAqua,
    onCyan: BasePinkPalette.light().scheme.onCyan,
    onBlue: BasePinkPalette.light().scheme.onBlue,
    onPurple: BasePinkPalette.light().scheme.onPurple,
    onGrape: BasePinkPalette.light().scheme.onGrape,
    onPink: BasePinkPalette.light().scheme.onPink,
    onMagenta: BasePinkPalette.light().scheme.onMagenta,
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
    hyperlinkActive: BasePinkPalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BasePinkPalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePinkPalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePinkPalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePinkPalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BasePinkPalette.dark().scheme.refErrorE0,
    refErrorE10: BasePinkPalette.dark().scheme.refErrorE10,
    refErrorE100: BasePinkPalette.dark().scheme.refErrorE100,
    refErrorE15: BasePinkPalette.dark().scheme.refErrorE15,
    refErrorE2: BasePinkPalette.dark().scheme.refErrorE2,
    refErrorE20: BasePinkPalette.dark().scheme.refErrorE20,
    refErrorE30: BasePinkPalette.dark().scheme.refErrorE30,
    refErrorE4: BasePinkPalette.dark().scheme.refErrorE4,
    refErrorE40: BasePinkPalette.dark().scheme.refErrorE40,
    refErrorE50: BasePinkPalette.dark().scheme.refErrorE50,
    refErrorE6: BasePinkPalette.dark().scheme.refErrorE6,
    refErrorE60: BasePinkPalette.dark().scheme.refErrorE60,
    refErrorE70: BasePinkPalette.dark().scheme.refErrorE70,
    refErrorE8: BasePinkPalette.dark().scheme.refErrorE8,
    refErrorE80: BasePinkPalette.dark().scheme.refErrorE80,
    refErrorE85: BasePinkPalette.dark().scheme.refErrorE85,
    refErrorE90: BasePinkPalette.dark().scheme.refErrorE90,
    refErrorE93: BasePinkPalette.dark().scheme.refErrorE93,
    refErrorE95: BasePinkPalette.dark().scheme.refErrorE95,
    refErrorE98: BasePinkPalette.dark().scheme.refErrorE98,
    refErrorE99: BasePinkPalette.dark().scheme.refErrorE99,
    refNeutralN0: BasePinkPalette.dark().scheme.refNeutralN0,
    refNeutralN10: BasePinkPalette.dark().scheme.refNeutralN10,
    refNeutralN100: BasePinkPalette.dark().scheme.refNeutralN100,
    refNeutralN15: BasePinkPalette.dark().scheme.refNeutralN15,
    refNeutralN2: BasePinkPalette.dark().scheme.refNeutralN2,
    refNeutralN20: BasePinkPalette.dark().scheme.refNeutralN20,
    refNeutralN30: BasePinkPalette.dark().scheme.refNeutralN30,
    refNeutralN4: BasePinkPalette.dark().scheme.refNeutralN4,
    refNeutralN40: BasePinkPalette.dark().scheme.refNeutralN40,
    refNeutralN50: BasePinkPalette.dark().scheme.refNeutralN50,
    refNeutralN6: BasePinkPalette.dark().scheme.refNeutralN6,
    refNeutralN60: BasePinkPalette.dark().scheme.refNeutralN60,
    refNeutralN70: BasePinkPalette.dark().scheme.refNeutralN70,
    refNeutralN8: BasePinkPalette.dark().scheme.refNeutralN8,
    refNeutralN80: BasePinkPalette.dark().scheme.refNeutralN80,
    refNeutralN85: BasePinkPalette.dark().scheme.refNeutralN85,
    refNeutralN90: BasePinkPalette.dark().scheme.refNeutralN90,
    refNeutralN93: BasePinkPalette.dark().scheme.refNeutralN93,
    refNeutralN95: BasePinkPalette.dark().scheme.refNeutralN95,
    refNeutralN98: BasePinkPalette.dark().scheme.refNeutralN98,
    refNeutralN99: BasePinkPalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BasePinkPalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BasePinkPalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BasePinkPalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BasePinkPalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BasePinkPalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BasePinkPalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BasePinkPalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BasePinkPalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BasePinkPalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BasePinkPalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BasePinkPalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BasePinkPalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BasePinkPalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BasePinkPalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BasePinkPalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BasePinkPalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BasePinkPalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BasePinkPalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BasePinkPalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BasePinkPalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BasePinkPalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BasePinkPalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BasePinkPalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BasePinkPalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BasePinkPalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BasePinkPalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BasePinkPalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BasePinkPalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BasePinkPalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BasePinkPalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BasePinkPalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BasePinkPalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BasePinkPalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BasePinkPalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BasePinkPalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BasePinkPalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BasePinkPalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BasePinkPalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BasePinkPalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BasePinkPalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BasePinkPalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BasePinkPalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BasePinkPalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BasePinkPalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BasePinkPalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BasePinkPalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BasePinkPalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BasePinkPalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BasePinkPalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BasePinkPalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BasePinkPalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BasePinkPalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BasePinkPalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BasePinkPalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BasePinkPalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BasePinkPalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BasePinkPalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BasePinkPalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BasePinkPalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BasePinkPalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BasePinkPalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BasePinkPalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BasePinkPalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BasePinkPalette.dark().scheme.refSuccessU0,
    refSuccessU10: BasePinkPalette.dark().scheme.refSuccessU10,
    refSuccessU100: BasePinkPalette.dark().scheme.refSuccessU100,
    refSuccessU15: BasePinkPalette.dark().scheme.refSuccessU15,
    refSuccessU2: BasePinkPalette.dark().scheme.refSuccessU2,
    refSuccessU20: BasePinkPalette.dark().scheme.refSuccessU20,
    refSuccessU30: BasePinkPalette.dark().scheme.refSuccessU30,
    refSuccessU4: BasePinkPalette.dark().scheme.refSuccessU4,
    refSuccessU40: BasePinkPalette.dark().scheme.refSuccessU40,
    refSuccessU50: BasePinkPalette.dark().scheme.refSuccessU50,
    refSuccessU6: BasePinkPalette.dark().scheme.refSuccessU6,
    refSuccessU60: BasePinkPalette.dark().scheme.refSuccessU60,
    refSuccessU70: BasePinkPalette.dark().scheme.refSuccessU70,
    refSuccessU8: BasePinkPalette.dark().scheme.refSuccessU8,
    refSuccessU80: BasePinkPalette.dark().scheme.refSuccessU80,
    refSuccessU85: BasePinkPalette.dark().scheme.refSuccessU85,
    refSuccessU90: BasePinkPalette.dark().scheme.refSuccessU90,
    refSuccessU93: BasePinkPalette.dark().scheme.refSuccessU93,
    refSuccessU95: BasePinkPalette.dark().scheme.refSuccessU95,
    refSuccessU98: BasePinkPalette.dark().scheme.refSuccessU98,
    refSuccessU99: BasePinkPalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BasePinkPalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BasePinkPalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BasePinkPalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BasePinkPalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BasePinkPalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BasePinkPalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BasePinkPalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BasePinkPalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BasePinkPalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BasePinkPalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BasePinkPalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BasePinkPalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BasePinkPalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BasePinkPalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BasePinkPalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BasePinkPalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BasePinkPalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BasePinkPalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BasePinkPalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BasePinkPalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BasePinkPalette.dark().scheme.refTertiaryT99,
    refWarnW0: BasePinkPalette.dark().scheme.refWarnW0,
    refWarnW10: BasePinkPalette.dark().scheme.refWarnW10,
    refWarnW100: BasePinkPalette.dark().scheme.refWarnW100,
    refWarnW15: BasePinkPalette.dark().scheme.refWarnW15,
    refWarnW2: BasePinkPalette.dark().scheme.refWarnW2,
    refWarnW20: BasePinkPalette.dark().scheme.refWarnW20,
    refWarnW30: BasePinkPalette.dark().scheme.refWarnW30,
    refWarnW4: BasePinkPalette.dark().scheme.refWarnW4,
    refWarnW40: BasePinkPalette.dark().scheme.refWarnW40,
    refWarnW50: BasePinkPalette.dark().scheme.refWarnW50,
    refWarnW6: BasePinkPalette.dark().scheme.refWarnW6,
    refWarnW60: BasePinkPalette.dark().scheme.refWarnW60,
    refWarnW70: BasePinkPalette.dark().scheme.refWarnW70,
    refWarnW8: BasePinkPalette.dark().scheme.refWarnW8,
    refWarnW80: BasePinkPalette.dark().scheme.refWarnW80,
    refWarnW85: BasePinkPalette.dark().scheme.refWarnW85,
    refWarnW90: BasePinkPalette.dark().scheme.refWarnW90,
    refWarnW93: BasePinkPalette.dark().scheme.refWarnW93,
    refWarnW95: BasePinkPalette.dark().scheme.refWarnW95,
    refWarnW98: BasePinkPalette.dark().scheme.refWarnW98,
    refWarnW99: BasePinkPalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BasePinkPalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BasePinkPalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BasePinkPalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BasePinkPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BasePinkPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BasePinkPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BasePinkPalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BasePinkPalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BasePinkPalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BasePinkPalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BasePinkPalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BasePinkPalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BasePinkPalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BasePinkPalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BasePinkPalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BasePinkPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BasePinkPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BasePinkPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BasePinkPalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BasePinkPalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BasePinkPalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BasePinkPalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BasePinkPalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BasePinkPalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BasePinkPalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BasePinkPalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BasePinkPalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BasePinkPalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BasePinkPalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BasePinkPalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BasePinkPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BasePinkPalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BasePinkPalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BasePinkPalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BasePinkPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BasePinkPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BasePinkPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BasePinkPalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BasePinkPalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BasePinkPalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BasePinkPalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BasePinkPalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BasePinkPalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BasePinkPalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BasePinkPalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BasePinkPalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BasePinkPalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BasePinkPalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BasePinkPalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BasePinkPalette.dark().scheme.sysError,
    sysErrorContainer: BasePinkPalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePinkPalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePinkPalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BasePinkPalette.dark().scheme.sysInverseSurface,
    sysOnError: BasePinkPalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BasePinkPalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePinkPalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BasePinkPalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePinkPalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePinkPalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePinkPalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BasePinkPalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePinkPalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePinkPalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePinkPalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BasePinkPalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePinkPalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePinkPalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePinkPalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BasePinkPalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BasePinkPalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BasePinkPalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BasePinkPalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BasePinkPalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BasePinkPalette.dark().scheme.sysOutline,
    sysOutlineVariant: BasePinkPalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BasePinkPalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BasePinkPalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BasePinkPalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BasePinkPalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BasePinkPalette.dark().scheme.sysScrim,
    sysSecondary: BasePinkPalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BasePinkPalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePinkPalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePinkPalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BasePinkPalette.dark().scheme.sysShadow,
    sysSuccess: BasePinkPalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BasePinkPalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BasePinkPalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BasePinkPalette.dark().scheme.sysSurface,
    sysSurfaceBright: BasePinkPalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePinkPalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BasePinkPalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePinkPalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BasePinkPalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePinkPalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePinkPalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BasePinkPalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BasePinkPalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePinkPalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePinkPalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BasePinkPalette.dark().scheme.sysWarn,
    sysWarnContainer: BasePinkPalette.dark().scheme.sysWarnContainer,
    aqua: BasePinkPalette.dark().scheme.aqua,
    black: BasePinkPalette.dark().scheme.black,
    blue: BasePinkPalette.dark().scheme.blue,
    cyan: BasePinkPalette.dark().scheme.cyan,
    grape: BasePinkPalette.dark().scheme.grape,
    green: BasePinkPalette.dark().scheme.green,
    lime: BasePinkPalette.dark().scheme.lime,
    magenta: BasePinkPalette.dark().scheme.magenta,
    orange: BasePinkPalette.dark().scheme.orange,
    pink: BasePinkPalette.dark().scheme.pink,
    purple: BasePinkPalette.dark().scheme.purple,
    red: BasePinkPalette.dark().scheme.red,
    white: BasePinkPalette.dark().scheme.white,
    yellow: BasePinkPalette.dark().scheme.yellow,
    onRed: BasePinkPalette.dark().scheme.onRed,
    onOrange: BasePinkPalette.dark().scheme.onOrange,
    onYellow: BasePinkPalette.dark().scheme.onYellow,
    onLime: BasePinkPalette.dark().scheme.onLime,
    onGreen: BasePinkPalette.dark().scheme.onGreen,
    onAqua: BasePinkPalette.dark().scheme.onAqua,
    onCyan: BasePinkPalette.dark().scheme.onCyan,
    onBlue: BasePinkPalette.dark().scheme.onBlue,
    onPurple: BasePinkPalette.dark().scheme.onPurple,
    onGrape: BasePinkPalette.dark().scheme.onGrape,
    onPink: BasePinkPalette.dark().scheme.onPink,
    onMagenta: BasePinkPalette.dark().scheme.onMagenta,
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
