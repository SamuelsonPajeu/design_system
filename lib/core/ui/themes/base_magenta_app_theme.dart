import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_magenta_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseMagentaAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseMagentaPalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseMagentaPalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseMagentaPalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseMagentaPalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseMagentaPalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseMagentaPalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseMagentaPalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseMagentaPalette.light().scheme.refErrorE0,
    refErrorE10: BaseMagentaPalette.light().scheme.refErrorE10,
    refErrorE100: BaseMagentaPalette.light().scheme.refErrorE100,
    refErrorE15: BaseMagentaPalette.light().scheme.refErrorE15,
    refErrorE2: BaseMagentaPalette.light().scheme.refErrorE2,
    refErrorE20: BaseMagentaPalette.light().scheme.refErrorE20,
    refErrorE30: BaseMagentaPalette.light().scheme.refErrorE30,
    refErrorE4: BaseMagentaPalette.light().scheme.refErrorE4,
    refErrorE40: BaseMagentaPalette.light().scheme.refErrorE40,
    refErrorE50: BaseMagentaPalette.light().scheme.refErrorE50,
    refErrorE6: BaseMagentaPalette.light().scheme.refErrorE6,
    refErrorE60: BaseMagentaPalette.light().scheme.refErrorE60,
    refErrorE70: BaseMagentaPalette.light().scheme.refErrorE70,
    refErrorE8: BaseMagentaPalette.light().scheme.refErrorE8,
    refErrorE80: BaseMagentaPalette.light().scheme.refErrorE80,
    refErrorE85: BaseMagentaPalette.light().scheme.refErrorE85,
    refErrorE90: BaseMagentaPalette.light().scheme.refErrorE90,
    refErrorE93: BaseMagentaPalette.light().scheme.refErrorE93,
    refErrorE95: BaseMagentaPalette.light().scheme.refErrorE95,
    refErrorE98: BaseMagentaPalette.light().scheme.refErrorE98,
    refErrorE99: BaseMagentaPalette.light().scheme.refErrorE99,
    refNeutralN0: BaseMagentaPalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseMagentaPalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseMagentaPalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseMagentaPalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseMagentaPalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseMagentaPalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseMagentaPalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseMagentaPalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseMagentaPalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseMagentaPalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseMagentaPalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseMagentaPalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseMagentaPalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseMagentaPalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseMagentaPalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseMagentaPalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseMagentaPalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseMagentaPalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseMagentaPalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseMagentaPalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseMagentaPalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseMagentaPalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseMagentaPalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseMagentaPalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseMagentaPalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseMagentaPalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseMagentaPalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseMagentaPalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseMagentaPalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseMagentaPalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseMagentaPalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseMagentaPalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseMagentaPalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseMagentaPalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseMagentaPalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseMagentaPalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseMagentaPalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseMagentaPalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseMagentaPalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseMagentaPalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseMagentaPalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseMagentaPalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseMagentaPalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseMagentaPalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseMagentaPalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseMagentaPalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseMagentaPalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseMagentaPalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseMagentaPalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseMagentaPalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseMagentaPalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseMagentaPalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseMagentaPalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseMagentaPalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseMagentaPalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseMagentaPalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseMagentaPalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseMagentaPalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseMagentaPalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseMagentaPalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseMagentaPalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseMagentaPalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseMagentaPalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseMagentaPalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseMagentaPalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseMagentaPalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseMagentaPalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseMagentaPalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseMagentaPalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseMagentaPalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseMagentaPalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseMagentaPalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseMagentaPalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseMagentaPalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseMagentaPalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseMagentaPalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseMagentaPalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseMagentaPalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseMagentaPalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseMagentaPalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseMagentaPalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseMagentaPalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseMagentaPalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseMagentaPalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseMagentaPalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseMagentaPalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseMagentaPalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseMagentaPalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseMagentaPalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseMagentaPalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseMagentaPalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseMagentaPalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseMagentaPalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseMagentaPalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseMagentaPalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseMagentaPalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseMagentaPalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseMagentaPalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseMagentaPalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseMagentaPalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseMagentaPalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseMagentaPalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseMagentaPalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseMagentaPalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseMagentaPalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseMagentaPalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseMagentaPalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseMagentaPalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseMagentaPalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseMagentaPalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseMagentaPalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseMagentaPalette.light().scheme.refWarnW0,
    refWarnW10: BaseMagentaPalette.light().scheme.refWarnW10,
    refWarnW100: BaseMagentaPalette.light().scheme.refWarnW100,
    refWarnW15: BaseMagentaPalette.light().scheme.refWarnW15,
    refWarnW2: BaseMagentaPalette.light().scheme.refWarnW2,
    refWarnW20: BaseMagentaPalette.light().scheme.refWarnW20,
    refWarnW30: BaseMagentaPalette.light().scheme.refWarnW30,
    refWarnW4: BaseMagentaPalette.light().scheme.refWarnW4,
    refWarnW40: BaseMagentaPalette.light().scheme.refWarnW40,
    refWarnW50: BaseMagentaPalette.light().scheme.refWarnW50,
    refWarnW6: BaseMagentaPalette.light().scheme.refWarnW6,
    refWarnW60: BaseMagentaPalette.light().scheme.refWarnW60,
    refWarnW70: BaseMagentaPalette.light().scheme.refWarnW70,
    refWarnW8: BaseMagentaPalette.light().scheme.refWarnW8,
    refWarnW80: BaseMagentaPalette.light().scheme.refWarnW80,
    refWarnW85: BaseMagentaPalette.light().scheme.refWarnW85,
    refWarnW90: BaseMagentaPalette.light().scheme.refWarnW90,
    refWarnW93: BaseMagentaPalette.light().scheme.refWarnW93,
    refWarnW95: BaseMagentaPalette.light().scheme.refWarnW95,
    refWarnW98: BaseMagentaPalette.light().scheme.refWarnW98,
    refWarnW99: BaseMagentaPalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseMagentaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseMagentaPalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseMagentaPalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseMagentaPalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseMagentaPalette.light().scheme.sysError,
    sysErrorContainer: BaseMagentaPalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseMagentaPalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseMagentaPalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseMagentaPalette.light().scheme.sysInverseSurface,
    sysOnError: BaseMagentaPalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseMagentaPalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseMagentaPalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseMagentaPalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseMagentaPalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseMagentaPalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseMagentaPalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseMagentaPalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseMagentaPalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseMagentaPalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseMagentaPalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseMagentaPalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseMagentaPalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseMagentaPalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseMagentaPalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseMagentaPalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseMagentaPalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseMagentaPalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseMagentaPalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseMagentaPalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseMagentaPalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseMagentaPalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseMagentaPalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseMagentaPalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseMagentaPalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseMagentaPalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseMagentaPalette.light().scheme.sysScrim,
    sysSecondary: BaseMagentaPalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseMagentaPalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseMagentaPalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseMagentaPalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseMagentaPalette.light().scheme.sysShadow,
    sysSuccess: BaseMagentaPalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseMagentaPalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseMagentaPalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseMagentaPalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseMagentaPalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseMagentaPalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseMagentaPalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseMagentaPalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseMagentaPalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseMagentaPalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseMagentaPalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseMagentaPalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseMagentaPalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseMagentaPalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseMagentaPalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseMagentaPalette.light().scheme.sysWarn,
    sysWarnContainer: BaseMagentaPalette.light().scheme.sysWarnContainer,
    aqua: BaseMagentaPalette.light().scheme.aqua,
    black: BaseMagentaPalette.light().scheme.black,
    blue: BaseMagentaPalette.light().scheme.blue,
    cyan: BaseMagentaPalette.light().scheme.cyan,
    grape: BaseMagentaPalette.light().scheme.grape,
    green: BaseMagentaPalette.light().scheme.green,
    lime: BaseMagentaPalette.light().scheme.lime,
    magenta: BaseMagentaPalette.light().scheme.magenta,
    orange: BaseMagentaPalette.light().scheme.orange,
    pink: BaseMagentaPalette.light().scheme.pink,
    purple: BaseMagentaPalette.light().scheme.purple,
    red: BaseMagentaPalette.light().scheme.red,
    white: BaseMagentaPalette.light().scheme.white,
    yellow: BaseMagentaPalette.light().scheme.yellow,
    onRed: BaseMagentaPalette.light().scheme.onRed,
    onOrange: BaseMagentaPalette.light().scheme.onOrange,
    onYellow: BaseMagentaPalette.light().scheme.onYellow,
    onLime: BaseMagentaPalette.light().scheme.onLime,
    onGreen: BaseMagentaPalette.light().scheme.onGreen,
    onAqua: BaseMagentaPalette.light().scheme.onAqua,
    onCyan: BaseMagentaPalette.light().scheme.onCyan,
    onBlue: BaseMagentaPalette.light().scheme.onBlue,
    onPurple: BaseMagentaPalette.light().scheme.onPurple,
    onGrape: BaseMagentaPalette.light().scheme.onGrape,
    onPink: BaseMagentaPalette.light().scheme.onPink,
    onMagenta: BaseMagentaPalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseMagentaPalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseMagentaPalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseMagentaPalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseMagentaPalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseMagentaPalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseMagentaPalette.dark().scheme.refErrorE0,
    refErrorE10: BaseMagentaPalette.dark().scheme.refErrorE10,
    refErrorE100: BaseMagentaPalette.dark().scheme.refErrorE100,
    refErrorE15: BaseMagentaPalette.dark().scheme.refErrorE15,
    refErrorE2: BaseMagentaPalette.dark().scheme.refErrorE2,
    refErrorE20: BaseMagentaPalette.dark().scheme.refErrorE20,
    refErrorE30: BaseMagentaPalette.dark().scheme.refErrorE30,
    refErrorE4: BaseMagentaPalette.dark().scheme.refErrorE4,
    refErrorE40: BaseMagentaPalette.dark().scheme.refErrorE40,
    refErrorE50: BaseMagentaPalette.dark().scheme.refErrorE50,
    refErrorE6: BaseMagentaPalette.dark().scheme.refErrorE6,
    refErrorE60: BaseMagentaPalette.dark().scheme.refErrorE60,
    refErrorE70: BaseMagentaPalette.dark().scheme.refErrorE70,
    refErrorE8: BaseMagentaPalette.dark().scheme.refErrorE8,
    refErrorE80: BaseMagentaPalette.dark().scheme.refErrorE80,
    refErrorE85: BaseMagentaPalette.dark().scheme.refErrorE85,
    refErrorE90: BaseMagentaPalette.dark().scheme.refErrorE90,
    refErrorE93: BaseMagentaPalette.dark().scheme.refErrorE93,
    refErrorE95: BaseMagentaPalette.dark().scheme.refErrorE95,
    refErrorE98: BaseMagentaPalette.dark().scheme.refErrorE98,
    refErrorE99: BaseMagentaPalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseMagentaPalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseMagentaPalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseMagentaPalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseMagentaPalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseMagentaPalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseMagentaPalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseMagentaPalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseMagentaPalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseMagentaPalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseMagentaPalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseMagentaPalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseMagentaPalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseMagentaPalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseMagentaPalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseMagentaPalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseMagentaPalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseMagentaPalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseMagentaPalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseMagentaPalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseMagentaPalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseMagentaPalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseMagentaPalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseMagentaPalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseMagentaPalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseMagentaPalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseMagentaPalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseMagentaPalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseMagentaPalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseMagentaPalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseMagentaPalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseMagentaPalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseMagentaPalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseMagentaPalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseMagentaPalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseMagentaPalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseMagentaPalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseMagentaPalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseMagentaPalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseMagentaPalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseMagentaPalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseMagentaPalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseMagentaPalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseMagentaPalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseMagentaPalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseMagentaPalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseMagentaPalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseMagentaPalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseMagentaPalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseMagentaPalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseMagentaPalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseMagentaPalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseMagentaPalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseMagentaPalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseMagentaPalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseMagentaPalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseMagentaPalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseMagentaPalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseMagentaPalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseMagentaPalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseMagentaPalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseMagentaPalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseMagentaPalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseMagentaPalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseMagentaPalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseMagentaPalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseMagentaPalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseMagentaPalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseMagentaPalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseMagentaPalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseMagentaPalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseMagentaPalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseMagentaPalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseMagentaPalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseMagentaPalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseMagentaPalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseMagentaPalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseMagentaPalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseMagentaPalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseMagentaPalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseMagentaPalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseMagentaPalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseMagentaPalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseMagentaPalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseMagentaPalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseMagentaPalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseMagentaPalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseMagentaPalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseMagentaPalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseMagentaPalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseMagentaPalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseMagentaPalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseMagentaPalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseMagentaPalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseMagentaPalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseMagentaPalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseMagentaPalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseMagentaPalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseMagentaPalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseMagentaPalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseMagentaPalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseMagentaPalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseMagentaPalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseMagentaPalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseMagentaPalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseMagentaPalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseMagentaPalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseMagentaPalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseMagentaPalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseMagentaPalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseMagentaPalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseMagentaPalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseMagentaPalette.dark().scheme.refWarnW0,
    refWarnW10: BaseMagentaPalette.dark().scheme.refWarnW10,
    refWarnW100: BaseMagentaPalette.dark().scheme.refWarnW100,
    refWarnW15: BaseMagentaPalette.dark().scheme.refWarnW15,
    refWarnW2: BaseMagentaPalette.dark().scheme.refWarnW2,
    refWarnW20: BaseMagentaPalette.dark().scheme.refWarnW20,
    refWarnW30: BaseMagentaPalette.dark().scheme.refWarnW30,
    refWarnW4: BaseMagentaPalette.dark().scheme.refWarnW4,
    refWarnW40: BaseMagentaPalette.dark().scheme.refWarnW40,
    refWarnW50: BaseMagentaPalette.dark().scheme.refWarnW50,
    refWarnW6: BaseMagentaPalette.dark().scheme.refWarnW6,
    refWarnW60: BaseMagentaPalette.dark().scheme.refWarnW60,
    refWarnW70: BaseMagentaPalette.dark().scheme.refWarnW70,
    refWarnW8: BaseMagentaPalette.dark().scheme.refWarnW8,
    refWarnW80: BaseMagentaPalette.dark().scheme.refWarnW80,
    refWarnW85: BaseMagentaPalette.dark().scheme.refWarnW85,
    refWarnW90: BaseMagentaPalette.dark().scheme.refWarnW90,
    refWarnW93: BaseMagentaPalette.dark().scheme.refWarnW93,
    refWarnW95: BaseMagentaPalette.dark().scheme.refWarnW95,
    refWarnW98: BaseMagentaPalette.dark().scheme.refWarnW98,
    refWarnW99: BaseMagentaPalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseMagentaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseMagentaPalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseMagentaPalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseMagentaPalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseMagentaPalette.dark().scheme.sysError,
    sysErrorContainer: BaseMagentaPalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseMagentaPalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseMagentaPalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseMagentaPalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseMagentaPalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseMagentaPalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseMagentaPalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseMagentaPalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseMagentaPalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseMagentaPalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseMagentaPalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseMagentaPalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseMagentaPalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseMagentaPalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseMagentaPalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseMagentaPalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseMagentaPalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseMagentaPalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseMagentaPalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseMagentaPalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseMagentaPalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseMagentaPalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseMagentaPalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseMagentaPalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseMagentaPalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseMagentaPalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseMagentaPalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseMagentaPalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseMagentaPalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseMagentaPalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseMagentaPalette.dark().scheme.sysScrim,
    sysSecondary: BaseMagentaPalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseMagentaPalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseMagentaPalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseMagentaPalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseMagentaPalette.dark().scheme.sysShadow,
    sysSuccess: BaseMagentaPalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseMagentaPalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseMagentaPalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseMagentaPalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseMagentaPalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseMagentaPalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseMagentaPalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseMagentaPalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseMagentaPalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseMagentaPalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseMagentaPalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseMagentaPalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseMagentaPalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseMagentaPalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseMagentaPalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseMagentaPalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseMagentaPalette.dark().scheme.sysWarnContainer,
    aqua: BaseMagentaPalette.dark().scheme.aqua,
    black: BaseMagentaPalette.dark().scheme.black,
    blue: BaseMagentaPalette.dark().scheme.blue,
    cyan: BaseMagentaPalette.dark().scheme.cyan,
    grape: BaseMagentaPalette.dark().scheme.grape,
    green: BaseMagentaPalette.dark().scheme.green,
    lime: BaseMagentaPalette.dark().scheme.lime,
    magenta: BaseMagentaPalette.dark().scheme.magenta,
    orange: BaseMagentaPalette.dark().scheme.orange,
    pink: BaseMagentaPalette.dark().scheme.pink,
    purple: BaseMagentaPalette.dark().scheme.purple,
    red: BaseMagentaPalette.dark().scheme.red,
    white: BaseMagentaPalette.dark().scheme.white,
    yellow: BaseMagentaPalette.dark().scheme.yellow,
    onRed: BaseMagentaPalette.dark().scheme.onRed,
    onOrange: BaseMagentaPalette.dark().scheme.onOrange,
    onYellow: BaseMagentaPalette.dark().scheme.onYellow,
    onLime: BaseMagentaPalette.dark().scheme.onLime,
    onGreen: BaseMagentaPalette.dark().scheme.onGreen,
    onAqua: BaseMagentaPalette.dark().scheme.onAqua,
    onCyan: BaseMagentaPalette.dark().scheme.onCyan,
    onBlue: BaseMagentaPalette.dark().scheme.onBlue,
    onPurple: BaseMagentaPalette.dark().scheme.onPurple,
    onGrape: BaseMagentaPalette.dark().scheme.onGrape,
    onPink: BaseMagentaPalette.dark().scheme.onPink,
    onMagenta: BaseMagentaPalette.dark().scheme.onMagenta,
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
