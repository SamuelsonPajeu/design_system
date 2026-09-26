import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_purple_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BasePurpleAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BasePurplePalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BasePurplePalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BasePurplePalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BasePurplePalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePurplePalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePurplePalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePurplePalette.light().scheme.hyperlinkVisited,
    refErrorE0: BasePurplePalette.light().scheme.refErrorE0,
    refErrorE10: BasePurplePalette.light().scheme.refErrorE10,
    refErrorE100: BasePurplePalette.light().scheme.refErrorE100,
    refErrorE15: BasePurplePalette.light().scheme.refErrorE15,
    refErrorE2: BasePurplePalette.light().scheme.refErrorE2,
    refErrorE20: BasePurplePalette.light().scheme.refErrorE20,
    refErrorE30: BasePurplePalette.light().scheme.refErrorE30,
    refErrorE4: BasePurplePalette.light().scheme.refErrorE4,
    refErrorE40: BasePurplePalette.light().scheme.refErrorE40,
    refErrorE50: BasePurplePalette.light().scheme.refErrorE50,
    refErrorE6: BasePurplePalette.light().scheme.refErrorE6,
    refErrorE60: BasePurplePalette.light().scheme.refErrorE60,
    refErrorE70: BasePurplePalette.light().scheme.refErrorE70,
    refErrorE8: BasePurplePalette.light().scheme.refErrorE8,
    refErrorE80: BasePurplePalette.light().scheme.refErrorE80,
    refErrorE85: BasePurplePalette.light().scheme.refErrorE85,
    refErrorE90: BasePurplePalette.light().scheme.refErrorE90,
    refErrorE93: BasePurplePalette.light().scheme.refErrorE93,
    refErrorE95: BasePurplePalette.light().scheme.refErrorE95,
    refErrorE98: BasePurplePalette.light().scheme.refErrorE98,
    refErrorE99: BasePurplePalette.light().scheme.refErrorE99,
    refNeutralN0: BasePurplePalette.light().scheme.refNeutralN0,
    refNeutralN10: BasePurplePalette.light().scheme.refNeutralN10,
    refNeutralN100: BasePurplePalette.light().scheme.refNeutralN100,
    refNeutralN15: BasePurplePalette.light().scheme.refNeutralN15,
    refNeutralN2: BasePurplePalette.light().scheme.refNeutralN2,
    refNeutralN20: BasePurplePalette.light().scheme.refNeutralN20,
    refNeutralN30: BasePurplePalette.light().scheme.refNeutralN30,
    refNeutralN4: BasePurplePalette.light().scheme.refNeutralN4,
    refNeutralN40: BasePurplePalette.light().scheme.refNeutralN40,
    refNeutralN50: BasePurplePalette.light().scheme.refNeutralN50,
    refNeutralN6: BasePurplePalette.light().scheme.refNeutralN6,
    refNeutralN60: BasePurplePalette.light().scheme.refNeutralN60,
    refNeutralN70: BasePurplePalette.light().scheme.refNeutralN70,
    refNeutralN8: BasePurplePalette.light().scheme.refNeutralN8,
    refNeutralN80: BasePurplePalette.light().scheme.refNeutralN80,
    refNeutralN85: BasePurplePalette.light().scheme.refNeutralN85,
    refNeutralN90: BasePurplePalette.light().scheme.refNeutralN90,
    refNeutralN93: BasePurplePalette.light().scheme.refNeutralN93,
    refNeutralN95: BasePurplePalette.light().scheme.refNeutralN95,
    refNeutralN98: BasePurplePalette.light().scheme.refNeutralN98,
    refNeutralN99: BasePurplePalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BasePurplePalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BasePurplePalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BasePurplePalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BasePurplePalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BasePurplePalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BasePurplePalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BasePurplePalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BasePurplePalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BasePurplePalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BasePurplePalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BasePurplePalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BasePurplePalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BasePurplePalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BasePurplePalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BasePurplePalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BasePurplePalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BasePurplePalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BasePurplePalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BasePurplePalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BasePurplePalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BasePurplePalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BasePurplePalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BasePurplePalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BasePurplePalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BasePurplePalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BasePurplePalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BasePurplePalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BasePurplePalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BasePurplePalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BasePurplePalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BasePurplePalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BasePurplePalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BasePurplePalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BasePurplePalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BasePurplePalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BasePurplePalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BasePurplePalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BasePurplePalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BasePurplePalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BasePurplePalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BasePurplePalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BasePurplePalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BasePurplePalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BasePurplePalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BasePurplePalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BasePurplePalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BasePurplePalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BasePurplePalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BasePurplePalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BasePurplePalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BasePurplePalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BasePurplePalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BasePurplePalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BasePurplePalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BasePurplePalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BasePurplePalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BasePurplePalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BasePurplePalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BasePurplePalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BasePurplePalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BasePurplePalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BasePurplePalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BasePurplePalette.light().scheme.refSecondaryS99,
    refSuccessU0: BasePurplePalette.light().scheme.refSuccessU0,
    refSuccessU10: BasePurplePalette.light().scheme.refSuccessU10,
    refSuccessU100: BasePurplePalette.light().scheme.refSuccessU100,
    refSuccessU15: BasePurplePalette.light().scheme.refSuccessU15,
    refSuccessU2: BasePurplePalette.light().scheme.refSuccessU2,
    refSuccessU20: BasePurplePalette.light().scheme.refSuccessU20,
    refSuccessU30: BasePurplePalette.light().scheme.refSuccessU30,
    refSuccessU4: BasePurplePalette.light().scheme.refSuccessU4,
    refSuccessU40: BasePurplePalette.light().scheme.refSuccessU40,
    refSuccessU50: BasePurplePalette.light().scheme.refSuccessU50,
    refSuccessU6: BasePurplePalette.light().scheme.refSuccessU6,
    refSuccessU60: BasePurplePalette.light().scheme.refSuccessU60,
    refSuccessU70: BasePurplePalette.light().scheme.refSuccessU70,
    refSuccessU8: BasePurplePalette.light().scheme.refSuccessU8,
    refSuccessU80: BasePurplePalette.light().scheme.refSuccessU80,
    refSuccessU85: BasePurplePalette.light().scheme.refSuccessU85,
    refSuccessU90: BasePurplePalette.light().scheme.refSuccessU90,
    refSuccessU93: BasePurplePalette.light().scheme.refSuccessU93,
    refSuccessU95: BasePurplePalette.light().scheme.refSuccessU95,
    refSuccessU98: BasePurplePalette.light().scheme.refSuccessU98,
    refSuccessU99: BasePurplePalette.light().scheme.refSuccessU99,
    refTertiaryT0: BasePurplePalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BasePurplePalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BasePurplePalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BasePurplePalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BasePurplePalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BasePurplePalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BasePurplePalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BasePurplePalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BasePurplePalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BasePurplePalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BasePurplePalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BasePurplePalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BasePurplePalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BasePurplePalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BasePurplePalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BasePurplePalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BasePurplePalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BasePurplePalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BasePurplePalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BasePurplePalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BasePurplePalette.light().scheme.refTertiaryT99,
    refWarnW0: BasePurplePalette.light().scheme.refWarnW0,
    refWarnW10: BasePurplePalette.light().scheme.refWarnW10,
    refWarnW100: BasePurplePalette.light().scheme.refWarnW100,
    refWarnW15: BasePurplePalette.light().scheme.refWarnW15,
    refWarnW2: BasePurplePalette.light().scheme.refWarnW2,
    refWarnW20: BasePurplePalette.light().scheme.refWarnW20,
    refWarnW30: BasePurplePalette.light().scheme.refWarnW30,
    refWarnW4: BasePurplePalette.light().scheme.refWarnW4,
    refWarnW40: BasePurplePalette.light().scheme.refWarnW40,
    refWarnW50: BasePurplePalette.light().scheme.refWarnW50,
    refWarnW6: BasePurplePalette.light().scheme.refWarnW6,
    refWarnW60: BasePurplePalette.light().scheme.refWarnW60,
    refWarnW70: BasePurplePalette.light().scheme.refWarnW70,
    refWarnW8: BasePurplePalette.light().scheme.refWarnW8,
    refWarnW80: BasePurplePalette.light().scheme.refWarnW80,
    refWarnW85: BasePurplePalette.light().scheme.refWarnW85,
    refWarnW90: BasePurplePalette.light().scheme.refWarnW90,
    refWarnW93: BasePurplePalette.light().scheme.refWarnW93,
    refWarnW95: BasePurplePalette.light().scheme.refWarnW95,
    refWarnW98: BasePurplePalette.light().scheme.refWarnW98,
    refWarnW99: BasePurplePalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BasePurplePalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BasePurplePalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BasePurplePalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BasePurplePalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BasePurplePalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BasePurplePalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BasePurplePalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BasePurplePalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BasePurplePalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BasePurplePalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BasePurplePalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BasePurplePalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BasePurplePalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BasePurplePalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BasePurplePalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BasePurplePalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BasePurplePalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BasePurplePalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BasePurplePalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BasePurplePalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BasePurplePalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BasePurplePalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BasePurplePalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BasePurplePalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BasePurplePalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BasePurplePalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BasePurplePalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BasePurplePalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BasePurplePalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BasePurplePalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BasePurplePalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BasePurplePalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BasePurplePalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BasePurplePalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BasePurplePalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BasePurplePalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BasePurplePalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BasePurplePalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BasePurplePalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BasePurplePalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BasePurplePalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BasePurplePalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BasePurplePalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BasePurplePalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BasePurplePalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BasePurplePalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BasePurplePalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BasePurplePalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BasePurplePalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BasePurplePalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BasePurplePalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BasePurplePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BasePurplePalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BasePurplePalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BasePurplePalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BasePurplePalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BasePurplePalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BasePurplePalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BasePurplePalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BasePurplePalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BasePurplePalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BasePurplePalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BasePurplePalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BasePurplePalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BasePurplePalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BasePurplePalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BasePurplePalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BasePurplePalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BasePurplePalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BasePurplePalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BasePurplePalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BasePurplePalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BasePurplePalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BasePurplePalette.light().scheme.sysError,
    sysErrorContainer: BasePurplePalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePurplePalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePurplePalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BasePurplePalette.light().scheme.sysInverseSurface,
    sysOnError: BasePurplePalette.light().scheme.sysOnError,
    sysOnErrorContainer: BasePurplePalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePurplePalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BasePurplePalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePurplePalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePurplePalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePurplePalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BasePurplePalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePurplePalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePurplePalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePurplePalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BasePurplePalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePurplePalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePurplePalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePurplePalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BasePurplePalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BasePurplePalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BasePurplePalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BasePurplePalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BasePurplePalette.light().scheme.sysOnWarnContainer,
    sysOutline: BasePurplePalette.light().scheme.sysOutline,
    sysOutlineVariant: BasePurplePalette.light().scheme.sysOutlineVariant,
    sysPrimary: BasePurplePalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BasePurplePalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BasePurplePalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BasePurplePalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BasePurplePalette.light().scheme.sysScrim,
    sysSecondary: BasePurplePalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BasePurplePalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePurplePalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePurplePalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BasePurplePalette.light().scheme.sysShadow,
    sysSuccess: BasePurplePalette.light().scheme.sysSuccess,
    sysSuccessContainer: BasePurplePalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BasePurplePalette.light().scheme.sysSurfaceTinted,
    sysSurface: BasePurplePalette.light().scheme.sysSurface,
    sysSurfaceBright: BasePurplePalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePurplePalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BasePurplePalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePurplePalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BasePurplePalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePurplePalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePurplePalette.light().scheme.sysSurfaceDim,
    sysTertiary: BasePurplePalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BasePurplePalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePurplePalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePurplePalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BasePurplePalette.light().scheme.sysWarn,
    sysWarnContainer: BasePurplePalette.light().scheme.sysWarnContainer,
    aqua: BasePurplePalette.light().scheme.aqua,
    black: BasePurplePalette.light().scheme.black,
    blue: BasePurplePalette.light().scheme.blue,
    cyan: BasePurplePalette.light().scheme.cyan,
    grape: BasePurplePalette.light().scheme.grape,
    green: BasePurplePalette.light().scheme.green,
    lime: BasePurplePalette.light().scheme.lime,
    magenta: BasePurplePalette.light().scheme.magenta,
    orange: BasePurplePalette.light().scheme.orange,
    pink: BasePurplePalette.light().scheme.pink,
    purple: BasePurplePalette.light().scheme.purple,
    red: BasePurplePalette.light().scheme.red,
    white: BasePurplePalette.light().scheme.white,
    yellow: BasePurplePalette.light().scheme.yellow,
    onRed: BasePurplePalette.light().scheme.onRed,
    onOrange: BasePurplePalette.light().scheme.onOrange,
    onYellow: BasePurplePalette.light().scheme.onYellow,
    onLime: BasePurplePalette.light().scheme.onLime,
    onGreen: BasePurplePalette.light().scheme.onGreen,
    onAqua: BasePurplePalette.light().scheme.onAqua,
    onCyan: BasePurplePalette.light().scheme.onCyan,
    onBlue: BasePurplePalette.light().scheme.onBlue,
    onPurple: BasePurplePalette.light().scheme.onPurple,
    onGrape: BasePurplePalette.light().scheme.onGrape,
    onPink: BasePurplePalette.light().scheme.onPink,
    onMagenta: BasePurplePalette.light().scheme.onMagenta,
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
    hyperlinkActive: BasePurplePalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BasePurplePalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePurplePalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePurplePalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePurplePalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BasePurplePalette.dark().scheme.refErrorE0,
    refErrorE10: BasePurplePalette.dark().scheme.refErrorE10,
    refErrorE100: BasePurplePalette.dark().scheme.refErrorE100,
    refErrorE15: BasePurplePalette.dark().scheme.refErrorE15,
    refErrorE2: BasePurplePalette.dark().scheme.refErrorE2,
    refErrorE20: BasePurplePalette.dark().scheme.refErrorE20,
    refErrorE30: BasePurplePalette.dark().scheme.refErrorE30,
    refErrorE4: BasePurplePalette.dark().scheme.refErrorE4,
    refErrorE40: BasePurplePalette.dark().scheme.refErrorE40,
    refErrorE50: BasePurplePalette.dark().scheme.refErrorE50,
    refErrorE6: BasePurplePalette.dark().scheme.refErrorE6,
    refErrorE60: BasePurplePalette.dark().scheme.refErrorE60,
    refErrorE70: BasePurplePalette.dark().scheme.refErrorE70,
    refErrorE8: BasePurplePalette.dark().scheme.refErrorE8,
    refErrorE80: BasePurplePalette.dark().scheme.refErrorE80,
    refErrorE85: BasePurplePalette.dark().scheme.refErrorE85,
    refErrorE90: BasePurplePalette.dark().scheme.refErrorE90,
    refErrorE93: BasePurplePalette.dark().scheme.refErrorE93,
    refErrorE95: BasePurplePalette.dark().scheme.refErrorE95,
    refErrorE98: BasePurplePalette.dark().scheme.refErrorE98,
    refErrorE99: BasePurplePalette.dark().scheme.refErrorE99,
    refNeutralN0: BasePurplePalette.dark().scheme.refNeutralN0,
    refNeutralN10: BasePurplePalette.dark().scheme.refNeutralN10,
    refNeutralN100: BasePurplePalette.dark().scheme.refNeutralN100,
    refNeutralN15: BasePurplePalette.dark().scheme.refNeutralN15,
    refNeutralN2: BasePurplePalette.dark().scheme.refNeutralN2,
    refNeutralN20: BasePurplePalette.dark().scheme.refNeutralN20,
    refNeutralN30: BasePurplePalette.dark().scheme.refNeutralN30,
    refNeutralN4: BasePurplePalette.dark().scheme.refNeutralN4,
    refNeutralN40: BasePurplePalette.dark().scheme.refNeutralN40,
    refNeutralN50: BasePurplePalette.dark().scheme.refNeutralN50,
    refNeutralN6: BasePurplePalette.dark().scheme.refNeutralN6,
    refNeutralN60: BasePurplePalette.dark().scheme.refNeutralN60,
    refNeutralN70: BasePurplePalette.dark().scheme.refNeutralN70,
    refNeutralN8: BasePurplePalette.dark().scheme.refNeutralN8,
    refNeutralN80: BasePurplePalette.dark().scheme.refNeutralN80,
    refNeutralN85: BasePurplePalette.dark().scheme.refNeutralN85,
    refNeutralN90: BasePurplePalette.dark().scheme.refNeutralN90,
    refNeutralN93: BasePurplePalette.dark().scheme.refNeutralN93,
    refNeutralN95: BasePurplePalette.dark().scheme.refNeutralN95,
    refNeutralN98: BasePurplePalette.dark().scheme.refNeutralN98,
    refNeutralN99: BasePurplePalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BasePurplePalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BasePurplePalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BasePurplePalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BasePurplePalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BasePurplePalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BasePurplePalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BasePurplePalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BasePurplePalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BasePurplePalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BasePurplePalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BasePurplePalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BasePurplePalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BasePurplePalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BasePurplePalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BasePurplePalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BasePurplePalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BasePurplePalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BasePurplePalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BasePurplePalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BasePurplePalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BasePurplePalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BasePurplePalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BasePurplePalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BasePurplePalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BasePurplePalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BasePurplePalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BasePurplePalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BasePurplePalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BasePurplePalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BasePurplePalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BasePurplePalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BasePurplePalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BasePurplePalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BasePurplePalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BasePurplePalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BasePurplePalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BasePurplePalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BasePurplePalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BasePurplePalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BasePurplePalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BasePurplePalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BasePurplePalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BasePurplePalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BasePurplePalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BasePurplePalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BasePurplePalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BasePurplePalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BasePurplePalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BasePurplePalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BasePurplePalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BasePurplePalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BasePurplePalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BasePurplePalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BasePurplePalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BasePurplePalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BasePurplePalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BasePurplePalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BasePurplePalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BasePurplePalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BasePurplePalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BasePurplePalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BasePurplePalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BasePurplePalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BasePurplePalette.dark().scheme.refSuccessU0,
    refSuccessU10: BasePurplePalette.dark().scheme.refSuccessU10,
    refSuccessU100: BasePurplePalette.dark().scheme.refSuccessU100,
    refSuccessU15: BasePurplePalette.dark().scheme.refSuccessU15,
    refSuccessU2: BasePurplePalette.dark().scheme.refSuccessU2,
    refSuccessU20: BasePurplePalette.dark().scheme.refSuccessU20,
    refSuccessU30: BasePurplePalette.dark().scheme.refSuccessU30,
    refSuccessU4: BasePurplePalette.dark().scheme.refSuccessU4,
    refSuccessU40: BasePurplePalette.dark().scheme.refSuccessU40,
    refSuccessU50: BasePurplePalette.dark().scheme.refSuccessU50,
    refSuccessU6: BasePurplePalette.dark().scheme.refSuccessU6,
    refSuccessU60: BasePurplePalette.dark().scheme.refSuccessU60,
    refSuccessU70: BasePurplePalette.dark().scheme.refSuccessU70,
    refSuccessU8: BasePurplePalette.dark().scheme.refSuccessU8,
    refSuccessU80: BasePurplePalette.dark().scheme.refSuccessU80,
    refSuccessU85: BasePurplePalette.dark().scheme.refSuccessU85,
    refSuccessU90: BasePurplePalette.dark().scheme.refSuccessU90,
    refSuccessU93: BasePurplePalette.dark().scheme.refSuccessU93,
    refSuccessU95: BasePurplePalette.dark().scheme.refSuccessU95,
    refSuccessU98: BasePurplePalette.dark().scheme.refSuccessU98,
    refSuccessU99: BasePurplePalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BasePurplePalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BasePurplePalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BasePurplePalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BasePurplePalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BasePurplePalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BasePurplePalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BasePurplePalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BasePurplePalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BasePurplePalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BasePurplePalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BasePurplePalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BasePurplePalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BasePurplePalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BasePurplePalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BasePurplePalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BasePurplePalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BasePurplePalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BasePurplePalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BasePurplePalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BasePurplePalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BasePurplePalette.dark().scheme.refTertiaryT99,
    refWarnW0: BasePurplePalette.dark().scheme.refWarnW0,
    refWarnW10: BasePurplePalette.dark().scheme.refWarnW10,
    refWarnW100: BasePurplePalette.dark().scheme.refWarnW100,
    refWarnW15: BasePurplePalette.dark().scheme.refWarnW15,
    refWarnW2: BasePurplePalette.dark().scheme.refWarnW2,
    refWarnW20: BasePurplePalette.dark().scheme.refWarnW20,
    refWarnW30: BasePurplePalette.dark().scheme.refWarnW30,
    refWarnW4: BasePurplePalette.dark().scheme.refWarnW4,
    refWarnW40: BasePurplePalette.dark().scheme.refWarnW40,
    refWarnW50: BasePurplePalette.dark().scheme.refWarnW50,
    refWarnW6: BasePurplePalette.dark().scheme.refWarnW6,
    refWarnW60: BasePurplePalette.dark().scheme.refWarnW60,
    refWarnW70: BasePurplePalette.dark().scheme.refWarnW70,
    refWarnW8: BasePurplePalette.dark().scheme.refWarnW8,
    refWarnW80: BasePurplePalette.dark().scheme.refWarnW80,
    refWarnW85: BasePurplePalette.dark().scheme.refWarnW85,
    refWarnW90: BasePurplePalette.dark().scheme.refWarnW90,
    refWarnW93: BasePurplePalette.dark().scheme.refWarnW93,
    refWarnW95: BasePurplePalette.dark().scheme.refWarnW95,
    refWarnW98: BasePurplePalette.dark().scheme.refWarnW98,
    refWarnW99: BasePurplePalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BasePurplePalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BasePurplePalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BasePurplePalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BasePurplePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BasePurplePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BasePurplePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BasePurplePalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BasePurplePalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BasePurplePalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BasePurplePalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BasePurplePalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BasePurplePalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BasePurplePalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BasePurplePalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BasePurplePalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BasePurplePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BasePurplePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BasePurplePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BasePurplePalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BasePurplePalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BasePurplePalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BasePurplePalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BasePurplePalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BasePurplePalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BasePurplePalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BasePurplePalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BasePurplePalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BasePurplePalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BasePurplePalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BasePurplePalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BasePurplePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BasePurplePalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BasePurplePalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BasePurplePalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BasePurplePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BasePurplePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BasePurplePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BasePurplePalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BasePurplePalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BasePurplePalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BasePurplePalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BasePurplePalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BasePurplePalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BasePurplePalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BasePurplePalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BasePurplePalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BasePurplePalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BasePurplePalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BasePurplePalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BasePurplePalette.dark().scheme.sysError,
    sysErrorContainer: BasePurplePalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePurplePalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePurplePalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BasePurplePalette.dark().scheme.sysInverseSurface,
    sysOnError: BasePurplePalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BasePurplePalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePurplePalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BasePurplePalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePurplePalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePurplePalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePurplePalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BasePurplePalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePurplePalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePurplePalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePurplePalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BasePurplePalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePurplePalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePurplePalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePurplePalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BasePurplePalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BasePurplePalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BasePurplePalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BasePurplePalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BasePurplePalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BasePurplePalette.dark().scheme.sysOutline,
    sysOutlineVariant: BasePurplePalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BasePurplePalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BasePurplePalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BasePurplePalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BasePurplePalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BasePurplePalette.dark().scheme.sysScrim,
    sysSecondary: BasePurplePalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BasePurplePalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePurplePalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePurplePalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BasePurplePalette.dark().scheme.sysShadow,
    sysSuccess: BasePurplePalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BasePurplePalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BasePurplePalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BasePurplePalette.dark().scheme.sysSurface,
    sysSurfaceBright: BasePurplePalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePurplePalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BasePurplePalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePurplePalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BasePurplePalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePurplePalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePurplePalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BasePurplePalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BasePurplePalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePurplePalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePurplePalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BasePurplePalette.dark().scheme.sysWarn,
    sysWarnContainer: BasePurplePalette.dark().scheme.sysWarnContainer,
    aqua: BasePurplePalette.dark().scheme.aqua,
    black: BasePurplePalette.dark().scheme.black,
    blue: BasePurplePalette.dark().scheme.blue,
    cyan: BasePurplePalette.dark().scheme.cyan,
    grape: BasePurplePalette.dark().scheme.grape,
    green: BasePurplePalette.dark().scheme.green,
    lime: BasePurplePalette.dark().scheme.lime,
    magenta: BasePurplePalette.dark().scheme.magenta,
    orange: BasePurplePalette.dark().scheme.orange,
    pink: BasePurplePalette.dark().scheme.pink,
    purple: BasePurplePalette.dark().scheme.purple,
    red: BasePurplePalette.dark().scheme.red,
    white: BasePurplePalette.dark().scheme.white,
    yellow: BasePurplePalette.dark().scheme.yellow,
    onRed: BasePurplePalette.dark().scheme.onRed,
    onOrange: BasePurplePalette.dark().scheme.onOrange,
    onYellow: BasePurplePalette.dark().scheme.onYellow,
    onLime: BasePurplePalette.dark().scheme.onLime,
    onGreen: BasePurplePalette.dark().scheme.onGreen,
    onAqua: BasePurplePalette.dark().scheme.onAqua,
    onCyan: BasePurplePalette.dark().scheme.onCyan,
    onBlue: BasePurplePalette.dark().scheme.onBlue,
    onPurple: BasePurplePalette.dark().scheme.onPurple,
    onGrape: BasePurplePalette.dark().scheme.onGrape,
    onPink: BasePurplePalette.dark().scheme.onPink,
    onMagenta: BasePurplePalette.dark().scheme.onMagenta,
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
