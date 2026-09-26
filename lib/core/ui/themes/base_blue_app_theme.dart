import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_blue_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseBlueAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseBluePalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseBluePalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseBluePalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseBluePalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseBluePalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseBluePalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseBluePalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseBluePalette.light().scheme.refErrorE0,
    refErrorE10: BaseBluePalette.light().scheme.refErrorE10,
    refErrorE100: BaseBluePalette.light().scheme.refErrorE100,
    refErrorE15: BaseBluePalette.light().scheme.refErrorE15,
    refErrorE2: BaseBluePalette.light().scheme.refErrorE2,
    refErrorE20: BaseBluePalette.light().scheme.refErrorE20,
    refErrorE30: BaseBluePalette.light().scheme.refErrorE30,
    refErrorE4: BaseBluePalette.light().scheme.refErrorE4,
    refErrorE40: BaseBluePalette.light().scheme.refErrorE40,
    refErrorE50: BaseBluePalette.light().scheme.refErrorE50,
    refErrorE6: BaseBluePalette.light().scheme.refErrorE6,
    refErrorE60: BaseBluePalette.light().scheme.refErrorE60,
    refErrorE70: BaseBluePalette.light().scheme.refErrorE70,
    refErrorE8: BaseBluePalette.light().scheme.refErrorE8,
    refErrorE80: BaseBluePalette.light().scheme.refErrorE80,
    refErrorE85: BaseBluePalette.light().scheme.refErrorE85,
    refErrorE90: BaseBluePalette.light().scheme.refErrorE90,
    refErrorE93: BaseBluePalette.light().scheme.refErrorE93,
    refErrorE95: BaseBluePalette.light().scheme.refErrorE95,
    refErrorE98: BaseBluePalette.light().scheme.refErrorE98,
    refErrorE99: BaseBluePalette.light().scheme.refErrorE99,
    refNeutralN0: BaseBluePalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseBluePalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseBluePalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseBluePalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseBluePalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseBluePalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseBluePalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseBluePalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseBluePalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseBluePalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseBluePalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseBluePalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseBluePalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseBluePalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseBluePalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseBluePalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseBluePalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseBluePalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseBluePalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseBluePalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseBluePalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseBluePalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseBluePalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseBluePalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseBluePalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseBluePalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseBluePalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseBluePalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseBluePalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseBluePalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseBluePalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseBluePalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseBluePalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseBluePalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseBluePalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseBluePalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseBluePalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseBluePalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseBluePalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseBluePalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseBluePalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseBluePalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseBluePalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseBluePalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseBluePalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseBluePalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseBluePalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseBluePalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseBluePalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseBluePalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseBluePalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseBluePalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseBluePalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseBluePalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseBluePalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseBluePalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseBluePalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseBluePalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseBluePalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseBluePalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseBluePalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseBluePalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseBluePalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseBluePalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseBluePalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseBluePalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseBluePalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseBluePalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseBluePalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseBluePalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseBluePalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseBluePalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseBluePalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseBluePalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseBluePalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseBluePalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseBluePalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseBluePalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseBluePalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseBluePalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseBluePalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseBluePalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseBluePalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseBluePalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseBluePalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseBluePalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseBluePalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseBluePalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseBluePalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseBluePalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseBluePalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseBluePalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseBluePalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseBluePalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseBluePalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseBluePalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseBluePalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseBluePalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseBluePalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseBluePalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseBluePalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseBluePalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseBluePalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseBluePalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseBluePalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseBluePalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseBluePalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseBluePalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseBluePalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseBluePalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseBluePalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseBluePalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseBluePalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseBluePalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseBluePalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseBluePalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseBluePalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseBluePalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseBluePalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseBluePalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseBluePalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseBluePalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseBluePalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseBluePalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseBluePalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseBluePalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseBluePalette.light().scheme.refWarnW0,
    refWarnW10: BaseBluePalette.light().scheme.refWarnW10,
    refWarnW100: BaseBluePalette.light().scheme.refWarnW100,
    refWarnW15: BaseBluePalette.light().scheme.refWarnW15,
    refWarnW2: BaseBluePalette.light().scheme.refWarnW2,
    refWarnW20: BaseBluePalette.light().scheme.refWarnW20,
    refWarnW30: BaseBluePalette.light().scheme.refWarnW30,
    refWarnW4: BaseBluePalette.light().scheme.refWarnW4,
    refWarnW40: BaseBluePalette.light().scheme.refWarnW40,
    refWarnW50: BaseBluePalette.light().scheme.refWarnW50,
    refWarnW6: BaseBluePalette.light().scheme.refWarnW6,
    refWarnW60: BaseBluePalette.light().scheme.refWarnW60,
    refWarnW70: BaseBluePalette.light().scheme.refWarnW70,
    refWarnW8: BaseBluePalette.light().scheme.refWarnW8,
    refWarnW80: BaseBluePalette.light().scheme.refWarnW80,
    refWarnW85: BaseBluePalette.light().scheme.refWarnW85,
    refWarnW90: BaseBluePalette.light().scheme.refWarnW90,
    refWarnW93: BaseBluePalette.light().scheme.refWarnW93,
    refWarnW95: BaseBluePalette.light().scheme.refWarnW95,
    refWarnW98: BaseBluePalette.light().scheme.refWarnW98,
    refWarnW99: BaseBluePalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseBluePalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseBluePalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseBluePalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseBluePalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseBluePalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseBluePalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseBluePalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseBluePalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseBluePalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseBluePalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseBluePalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseBluePalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseBluePalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseBluePalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseBluePalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseBluePalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseBluePalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseBluePalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseBluePalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseBluePalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseBluePalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseBluePalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseBluePalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseBluePalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseBluePalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseBluePalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseBluePalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseBluePalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseBluePalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseBluePalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseBluePalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseBluePalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseBluePalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseBluePalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseBluePalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseBluePalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseBluePalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseBluePalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseBluePalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseBluePalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseBluePalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseBluePalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseBluePalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseBluePalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseBluePalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseBluePalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseBluePalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseBluePalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseBluePalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseBluePalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseBluePalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseBluePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseBluePalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseBluePalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseBluePalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseBluePalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseBluePalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseBluePalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseBluePalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseBluePalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseBluePalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseBluePalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseBluePalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseBluePalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseBluePalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseBluePalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseBluePalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseBluePalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseBluePalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseBluePalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseBluePalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseBluePalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseBluePalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseBluePalette.light().scheme.sysError,
    sysErrorContainer: BaseBluePalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseBluePalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseBluePalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseBluePalette.light().scheme.sysInverseSurface,
    sysOnError: BaseBluePalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseBluePalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseBluePalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseBluePalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseBluePalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseBluePalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseBluePalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseBluePalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseBluePalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseBluePalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseBluePalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseBluePalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseBluePalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseBluePalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseBluePalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseBluePalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseBluePalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseBluePalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseBluePalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseBluePalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseBluePalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseBluePalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseBluePalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseBluePalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseBluePalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseBluePalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseBluePalette.light().scheme.sysScrim,
    sysSecondary: BaseBluePalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseBluePalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseBluePalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseBluePalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseBluePalette.light().scheme.sysShadow,
    sysSuccess: BaseBluePalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseBluePalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseBluePalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseBluePalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseBluePalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseBluePalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseBluePalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseBluePalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseBluePalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseBluePalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseBluePalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseBluePalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseBluePalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseBluePalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseBluePalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseBluePalette.light().scheme.sysWarn,
    sysWarnContainer: BaseBluePalette.light().scheme.sysWarnContainer,
    aqua: BaseBluePalette.light().scheme.aqua,
    black: BaseBluePalette.light().scheme.black,
    blue: BaseBluePalette.light().scheme.blue,
    cyan: BaseBluePalette.light().scheme.cyan,
    grape: BaseBluePalette.light().scheme.grape,
    green: BaseBluePalette.light().scheme.green,
    lime: BaseBluePalette.light().scheme.lime,
    magenta: BaseBluePalette.light().scheme.magenta,
    orange: BaseBluePalette.light().scheme.orange,
    pink: BaseBluePalette.light().scheme.pink,
    purple: BaseBluePalette.light().scheme.purple,
    red: BaseBluePalette.light().scheme.red,
    white: BaseBluePalette.light().scheme.white,
    yellow: BaseBluePalette.light().scheme.yellow,
    onRed: BaseBluePalette.light().scheme.onRed,
    onOrange: BaseBluePalette.light().scheme.onOrange,
    onYellow: BaseBluePalette.light().scheme.onYellow,
    onLime: BaseBluePalette.light().scheme.onLime,
    onGreen: BaseBluePalette.light().scheme.onGreen,
    onAqua: BaseBluePalette.light().scheme.onAqua,
    onCyan: BaseBluePalette.light().scheme.onCyan,
    onBlue: BaseBluePalette.light().scheme.onBlue,
    onPurple: BaseBluePalette.light().scheme.onPurple,
    onGrape: BaseBluePalette.light().scheme.onGrape,
    onPink: BaseBluePalette.light().scheme.onPink,
    onMagenta: BaseBluePalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseBluePalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseBluePalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseBluePalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseBluePalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseBluePalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseBluePalette.dark().scheme.refErrorE0,
    refErrorE10: BaseBluePalette.dark().scheme.refErrorE10,
    refErrorE100: BaseBluePalette.dark().scheme.refErrorE100,
    refErrorE15: BaseBluePalette.dark().scheme.refErrorE15,
    refErrorE2: BaseBluePalette.dark().scheme.refErrorE2,
    refErrorE20: BaseBluePalette.dark().scheme.refErrorE20,
    refErrorE30: BaseBluePalette.dark().scheme.refErrorE30,
    refErrorE4: BaseBluePalette.dark().scheme.refErrorE4,
    refErrorE40: BaseBluePalette.dark().scheme.refErrorE40,
    refErrorE50: BaseBluePalette.dark().scheme.refErrorE50,
    refErrorE6: BaseBluePalette.dark().scheme.refErrorE6,
    refErrorE60: BaseBluePalette.dark().scheme.refErrorE60,
    refErrorE70: BaseBluePalette.dark().scheme.refErrorE70,
    refErrorE8: BaseBluePalette.dark().scheme.refErrorE8,
    refErrorE80: BaseBluePalette.dark().scheme.refErrorE80,
    refErrorE85: BaseBluePalette.dark().scheme.refErrorE85,
    refErrorE90: BaseBluePalette.dark().scheme.refErrorE90,
    refErrorE93: BaseBluePalette.dark().scheme.refErrorE93,
    refErrorE95: BaseBluePalette.dark().scheme.refErrorE95,
    refErrorE98: BaseBluePalette.dark().scheme.refErrorE98,
    refErrorE99: BaseBluePalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseBluePalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseBluePalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseBluePalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseBluePalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseBluePalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseBluePalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseBluePalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseBluePalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseBluePalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseBluePalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseBluePalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseBluePalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseBluePalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseBluePalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseBluePalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseBluePalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseBluePalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseBluePalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseBluePalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseBluePalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseBluePalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseBluePalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseBluePalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseBluePalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseBluePalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseBluePalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseBluePalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseBluePalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseBluePalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseBluePalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseBluePalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseBluePalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseBluePalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseBluePalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseBluePalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseBluePalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseBluePalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseBluePalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseBluePalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseBluePalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseBluePalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseBluePalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseBluePalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseBluePalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseBluePalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseBluePalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseBluePalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseBluePalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseBluePalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseBluePalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseBluePalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseBluePalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseBluePalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseBluePalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseBluePalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseBluePalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseBluePalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseBluePalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseBluePalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseBluePalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseBluePalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseBluePalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseBluePalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseBluePalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseBluePalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseBluePalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseBluePalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseBluePalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseBluePalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseBluePalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseBluePalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseBluePalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseBluePalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseBluePalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseBluePalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseBluePalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseBluePalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseBluePalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseBluePalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseBluePalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseBluePalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseBluePalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseBluePalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseBluePalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseBluePalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseBluePalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseBluePalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseBluePalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseBluePalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseBluePalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseBluePalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseBluePalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseBluePalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseBluePalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseBluePalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseBluePalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseBluePalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseBluePalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseBluePalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseBluePalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseBluePalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseBluePalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseBluePalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseBluePalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseBluePalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseBluePalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseBluePalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseBluePalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseBluePalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseBluePalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseBluePalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseBluePalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseBluePalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseBluePalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseBluePalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseBluePalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseBluePalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseBluePalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseBluePalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseBluePalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseBluePalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseBluePalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseBluePalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseBluePalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseBluePalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseBluePalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseBluePalette.dark().scheme.refWarnW0,
    refWarnW10: BaseBluePalette.dark().scheme.refWarnW10,
    refWarnW100: BaseBluePalette.dark().scheme.refWarnW100,
    refWarnW15: BaseBluePalette.dark().scheme.refWarnW15,
    refWarnW2: BaseBluePalette.dark().scheme.refWarnW2,
    refWarnW20: BaseBluePalette.dark().scheme.refWarnW20,
    refWarnW30: BaseBluePalette.dark().scheme.refWarnW30,
    refWarnW4: BaseBluePalette.dark().scheme.refWarnW4,
    refWarnW40: BaseBluePalette.dark().scheme.refWarnW40,
    refWarnW50: BaseBluePalette.dark().scheme.refWarnW50,
    refWarnW6: BaseBluePalette.dark().scheme.refWarnW6,
    refWarnW60: BaseBluePalette.dark().scheme.refWarnW60,
    refWarnW70: BaseBluePalette.dark().scheme.refWarnW70,
    refWarnW8: BaseBluePalette.dark().scheme.refWarnW8,
    refWarnW80: BaseBluePalette.dark().scheme.refWarnW80,
    refWarnW85: BaseBluePalette.dark().scheme.refWarnW85,
    refWarnW90: BaseBluePalette.dark().scheme.refWarnW90,
    refWarnW93: BaseBluePalette.dark().scheme.refWarnW93,
    refWarnW95: BaseBluePalette.dark().scheme.refWarnW95,
    refWarnW98: BaseBluePalette.dark().scheme.refWarnW98,
    refWarnW99: BaseBluePalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseBluePalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseBluePalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseBluePalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseBluePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseBluePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseBluePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseBluePalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseBluePalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseBluePalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseBluePalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseBluePalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseBluePalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseBluePalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseBluePalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseBluePalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseBluePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseBluePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseBluePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseBluePalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseBluePalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseBluePalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseBluePalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseBluePalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseBluePalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseBluePalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseBluePalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseBluePalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseBluePalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseBluePalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseBluePalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseBluePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseBluePalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseBluePalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseBluePalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseBluePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseBluePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseBluePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseBluePalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseBluePalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseBluePalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseBluePalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseBluePalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseBluePalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseBluePalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseBluePalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseBluePalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseBluePalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseBluePalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseBluePalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseBluePalette.dark().scheme.sysError,
    sysErrorContainer: BaseBluePalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseBluePalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseBluePalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseBluePalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseBluePalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseBluePalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseBluePalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseBluePalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseBluePalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseBluePalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseBluePalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseBluePalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseBluePalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseBluePalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseBluePalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseBluePalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseBluePalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseBluePalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseBluePalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseBluePalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseBluePalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseBluePalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseBluePalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseBluePalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseBluePalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseBluePalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseBluePalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseBluePalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseBluePalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseBluePalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseBluePalette.dark().scheme.sysScrim,
    sysSecondary: BaseBluePalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseBluePalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseBluePalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseBluePalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseBluePalette.dark().scheme.sysShadow,
    sysSuccess: BaseBluePalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseBluePalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseBluePalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseBluePalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseBluePalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseBluePalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseBluePalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseBluePalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseBluePalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseBluePalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseBluePalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseBluePalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseBluePalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseBluePalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseBluePalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseBluePalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseBluePalette.dark().scheme.sysWarnContainer,
    aqua: BaseBluePalette.dark().scheme.aqua,
    black: BaseBluePalette.dark().scheme.black,
    blue: BaseBluePalette.dark().scheme.blue,
    cyan: BaseBluePalette.dark().scheme.cyan,
    grape: BaseBluePalette.dark().scheme.grape,
    green: BaseBluePalette.dark().scheme.green,
    lime: BaseBluePalette.dark().scheme.lime,
    magenta: BaseBluePalette.dark().scheme.magenta,
    orange: BaseBluePalette.dark().scheme.orange,
    pink: BaseBluePalette.dark().scheme.pink,
    purple: BaseBluePalette.dark().scheme.purple,
    red: BaseBluePalette.dark().scheme.red,
    white: BaseBluePalette.dark().scheme.white,
    yellow: BaseBluePalette.dark().scheme.yellow,
    onRed: BaseBluePalette.dark().scheme.onRed,
    onOrange: BaseBluePalette.dark().scheme.onOrange,
    onYellow: BaseBluePalette.dark().scheme.onYellow,
    onLime: BaseBluePalette.dark().scheme.onLime,
    onGreen: BaseBluePalette.dark().scheme.onGreen,
    onAqua: BaseBluePalette.dark().scheme.onAqua,
    onCyan: BaseBluePalette.dark().scheme.onCyan,
    onBlue: BaseBluePalette.dark().scheme.onBlue,
    onPurple: BaseBluePalette.dark().scheme.onPurple,
    onGrape: BaseBluePalette.dark().scheme.onGrape,
    onPink: BaseBluePalette.dark().scheme.onPink,
    onMagenta: BaseBluePalette.dark().scheme.onMagenta,
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
