import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BasePalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BasePalette.dark().scheme.sysPrimary,
    brightness: Brightness.dark,
  );

  static final light = ThemeData.light().copyWith(
    extensions: [lightAppColors, lightTextTheme],
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
    extensions: [darkAppColors, darkTextTheme],
    colorScheme: _darkColorScheme,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
  );

  static final lightAppColors = ColorsThemeExtension(
    hyperlinkActive: BasePalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BasePalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePalette.light().scheme.hyperlinkVisited,
    refErrorE0: BasePalette.light().scheme.refErrorE0,
    refErrorE10: BasePalette.light().scheme.refErrorE10,
    refErrorE100: BasePalette.light().scheme.refErrorE100,
    refErrorE15: BasePalette.light().scheme.refErrorE15,
    refErrorE2: BasePalette.light().scheme.refErrorE2,
    refErrorE20: BasePalette.light().scheme.refErrorE20,
    refErrorE30: BasePalette.light().scheme.refErrorE30,
    refErrorE4: BasePalette.light().scheme.refErrorE4,
    refErrorE40: BasePalette.light().scheme.refErrorE40,
    refErrorE50: BasePalette.light().scheme.refErrorE50,
    refErrorE6: BasePalette.light().scheme.refErrorE6,
    refErrorE60: BasePalette.light().scheme.refErrorE60,
    refErrorE70: BasePalette.light().scheme.refErrorE70,
    refErrorE8: BasePalette.light().scheme.refErrorE8,
    refErrorE80: BasePalette.light().scheme.refErrorE80,
    refErrorE85: BasePalette.light().scheme.refErrorE85,
    refErrorE90: BasePalette.light().scheme.refErrorE90,
    refErrorE93: BasePalette.light().scheme.refErrorE93,
    refErrorE95: BasePalette.light().scheme.refErrorE95,
    refErrorE98: BasePalette.light().scheme.refErrorE98,
    refErrorE99: BasePalette.light().scheme.refErrorE99,
    refNeutralN0: BasePalette.light().scheme.refNeutralN0,
    refNeutralN10: BasePalette.light().scheme.refNeutralN10,
    refNeutralN100: BasePalette.light().scheme.refNeutralN100,
    refNeutralN15: BasePalette.light().scheme.refNeutralN15,
    refNeutralN2: BasePalette.light().scheme.refNeutralN2,
    refNeutralN20: BasePalette.light().scheme.refNeutralN20,
    refNeutralN30: BasePalette.light().scheme.refNeutralN30,
    refNeutralN4: BasePalette.light().scheme.refNeutralN4,
    refNeutralN40: BasePalette.light().scheme.refNeutralN40,
    refNeutralN50: BasePalette.light().scheme.refNeutralN50,
    refNeutralN6: BasePalette.light().scheme.refNeutralN6,
    refNeutralN60: BasePalette.light().scheme.refNeutralN60,
    refNeutralN70: BasePalette.light().scheme.refNeutralN70,
    refNeutralN8: BasePalette.light().scheme.refNeutralN8,
    refNeutralN80: BasePalette.light().scheme.refNeutralN80,
    refNeutralN85: BasePalette.light().scheme.refNeutralN85,
    refNeutralN90: BasePalette.light().scheme.refNeutralN90,
    refNeutralN93: BasePalette.light().scheme.refNeutralN93,
    refNeutralN95: BasePalette.light().scheme.refNeutralN95,
    refNeutralN98: BasePalette.light().scheme.refNeutralN98,
    refNeutralN99: BasePalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BasePalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BasePalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BasePalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BasePalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BasePalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BasePalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BasePalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BasePalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BasePalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BasePalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BasePalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BasePalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BasePalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BasePalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BasePalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BasePalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BasePalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BasePalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BasePalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BasePalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BasePalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BasePalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BasePalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BasePalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BasePalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BasePalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BasePalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BasePalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BasePalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BasePalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BasePalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BasePalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BasePalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BasePalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BasePalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BasePalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BasePalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BasePalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BasePalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BasePalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BasePalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BasePalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BasePalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BasePalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BasePalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BasePalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BasePalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BasePalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BasePalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BasePalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BasePalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BasePalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BasePalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BasePalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BasePalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BasePalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BasePalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BasePalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BasePalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BasePalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BasePalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BasePalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BasePalette.light().scheme.refSecondaryS99,
    refSuccessU0: BasePalette.light().scheme.refSuccessU0,
    refSuccessU10: BasePalette.light().scheme.refSuccessU10,
    refSuccessU100: BasePalette.light().scheme.refSuccessU100,
    refSuccessU15: BasePalette.light().scheme.refSuccessU15,
    refSuccessU2: BasePalette.light().scheme.refSuccessU2,
    refSuccessU20: BasePalette.light().scheme.refSuccessU20,
    refSuccessU30: BasePalette.light().scheme.refSuccessU30,
    refSuccessU4: BasePalette.light().scheme.refSuccessU4,
    refSuccessU40: BasePalette.light().scheme.refSuccessU40,
    refSuccessU50: BasePalette.light().scheme.refSuccessU50,
    refSuccessU6: BasePalette.light().scheme.refSuccessU6,
    refSuccessU60: BasePalette.light().scheme.refSuccessU60,
    refSuccessU70: BasePalette.light().scheme.refSuccessU70,
    refSuccessU8: BasePalette.light().scheme.refSuccessU8,
    refSuccessU80: BasePalette.light().scheme.refSuccessU80,
    refSuccessU85: BasePalette.light().scheme.refSuccessU85,
    refSuccessU90: BasePalette.light().scheme.refSuccessU90,
    refSuccessU93: BasePalette.light().scheme.refSuccessU93,
    refSuccessU95: BasePalette.light().scheme.refSuccessU95,
    refSuccessU98: BasePalette.light().scheme.refSuccessU98,
    refSuccessU99: BasePalette.light().scheme.refSuccessU99,
    refTertiaryT0: BasePalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BasePalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BasePalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BasePalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BasePalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BasePalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BasePalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BasePalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BasePalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BasePalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BasePalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BasePalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BasePalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BasePalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BasePalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BasePalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BasePalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BasePalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BasePalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BasePalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BasePalette.light().scheme.refTertiaryT99,
    refWarnW0: BasePalette.light().scheme.refWarnW0,
    refWarnW10: BasePalette.light().scheme.refWarnW10,
    refWarnW100: BasePalette.light().scheme.refWarnW100,
    refWarnW15: BasePalette.light().scheme.refWarnW15,
    refWarnW2: BasePalette.light().scheme.refWarnW2,
    refWarnW20: BasePalette.light().scheme.refWarnW20,
    refWarnW30: BasePalette.light().scheme.refWarnW30,
    refWarnW4: BasePalette.light().scheme.refWarnW4,
    refWarnW40: BasePalette.light().scheme.refWarnW40,
    refWarnW50: BasePalette.light().scheme.refWarnW50,
    refWarnW6: BasePalette.light().scheme.refWarnW6,
    refWarnW60: BasePalette.light().scheme.refWarnW60,
    refWarnW70: BasePalette.light().scheme.refWarnW70,
    refWarnW8: BasePalette.light().scheme.refWarnW8,
    refWarnW80: BasePalette.light().scheme.refWarnW80,
    refWarnW85: BasePalette.light().scheme.refWarnW85,
    refWarnW90: BasePalette.light().scheme.refWarnW90,
    refWarnW93: BasePalette.light().scheme.refWarnW93,
    refWarnW95: BasePalette.light().scheme.refWarnW95,
    refWarnW98: BasePalette.light().scheme.refWarnW98,
    refWarnW99: BasePalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BasePalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BasePalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BasePalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BasePalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BasePalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BasePalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BasePalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BasePalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BasePalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BasePalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BasePalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BasePalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BasePalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BasePalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BasePalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BasePalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BasePalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BasePalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BasePalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BasePalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BasePalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BasePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BasePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BasePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BasePalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BasePalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BasePalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BasePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BasePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BasePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BasePalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BasePalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BasePalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BasePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BasePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BasePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BasePalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BasePalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BasePalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BasePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BasePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BasePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BasePalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BasePalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BasePalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BasePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BasePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BasePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BasePalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BasePalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BasePalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BasePalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BasePalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BasePalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BasePalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BasePalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BasePalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BasePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BasePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BasePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BasePalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BasePalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BasePalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BasePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BasePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BasePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BasePalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BasePalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BasePalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BasePalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BasePalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BasePalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BasePalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BasePalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BasePalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BasePalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BasePalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BasePalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BasePalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BasePalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BasePalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BasePalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BasePalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BasePalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BasePalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BasePalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BasePalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BasePalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BasePalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BasePalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BasePalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BasePalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BasePalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BasePalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BasePalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BasePalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BasePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BasePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BasePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BasePalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BasePalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BasePalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BasePalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BasePalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BasePalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BasePalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BasePalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BasePalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BasePalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BasePalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BasePalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BasePalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BasePalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BasePalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BasePalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BasePalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BasePalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BasePalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BasePalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BasePalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BasePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BasePalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BasePalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BasePalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BasePalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BasePalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BasePalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BasePalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BasePalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BasePalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BasePalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BasePalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BasePalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BasePalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BasePalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BasePalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BasePalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BasePalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BasePalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BasePalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BasePalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BasePalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BasePalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BasePalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BasePalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BasePalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BasePalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BasePalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BasePalette.light().scheme.sysError,
    sysErrorContainer: BasePalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BasePalette.light().scheme.sysInverseSurface,
    sysOnError: BasePalette.light().scheme.sysOnError,
    sysOnErrorContainer: BasePalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BasePalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BasePalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BasePalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BasePalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BasePalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BasePalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BasePalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BasePalette.light().scheme.sysOnWarnContainer,
    sysOutline: BasePalette.light().scheme.sysOutline,
    sysOutlineVariant: BasePalette.light().scheme.sysOutlineVariant,
    sysPrimary: BasePalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BasePalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BasePalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BasePalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BasePalette.light().scheme.sysScrim,
    sysSecondary: BasePalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BasePalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BasePalette.light().scheme.sysShadow,
    sysSuccess: BasePalette.light().scheme.sysSuccess,
    sysSuccessContainer: BasePalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BasePalette.light().scheme.sysSurfaceTinted,
    sysSurface: BasePalette.light().scheme.sysSurface,
    sysSurfaceBright: BasePalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BasePalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BasePalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePalette.light().scheme.sysSurfaceDim,
    sysTertiary: BasePalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BasePalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BasePalette.light().scheme.sysWarn,
    sysWarnContainer: BasePalette.light().scheme.sysWarnContainer,
    aqua: BasePalette.light().scheme.aqua,
    black: BasePalette.light().scheme.black,
    blue: BasePalette.light().scheme.blue,
    cyan: BasePalette.light().scheme.cyan,
    grape: BasePalette.light().scheme.grape,
    green: BasePalette.light().scheme.green,
    lime: BasePalette.light().scheme.lime,
    magenta: BasePalette.light().scheme.magenta,
    orange: BasePalette.light().scheme.orange,
    pink: BasePalette.light().scheme.pink,
    purple: BasePalette.light().scheme.purple,
    red: BasePalette.light().scheme.red,
    white: BasePalette.light().scheme.white,
    yellow: BasePalette.light().scheme.yellow,
    onRed: BasePalette.light().scheme.onRed,
    onOrange: BasePalette.light().scheme.onOrange,
    onYellow: BasePalette.light().scheme.onYellow,
    onLime: BasePalette.light().scheme.onLime,
    onGreen: BasePalette.light().scheme.onGreen,
    onAqua: BasePalette.light().scheme.onAqua,
    onCyan: BasePalette.light().scheme.onCyan,
    onBlue: BasePalette.light().scheme.onBlue,
    onPurple: BasePalette.light().scheme.onPurple,
    onGrape: BasePalette.light().scheme.onGrape,
    onPink: BasePalette.light().scheme.onPink,
    onMagenta: BasePalette.light().scheme.onMagenta,
  );
  static final lightTextTheme = TextsThemeExtension(
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

  static final darkAppColors = ColorsThemeExtension(
    hyperlinkActive: BasePalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BasePalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BasePalette.dark().scheme.refErrorE0,
    refErrorE10: BasePalette.dark().scheme.refErrorE10,
    refErrorE100: BasePalette.dark().scheme.refErrorE100,
    refErrorE15: BasePalette.dark().scheme.refErrorE15,
    refErrorE2: BasePalette.dark().scheme.refErrorE2,
    refErrorE20: BasePalette.dark().scheme.refErrorE20,
    refErrorE30: BasePalette.dark().scheme.refErrorE30,
    refErrorE4: BasePalette.dark().scheme.refErrorE4,
    refErrorE40: BasePalette.dark().scheme.refErrorE40,
    refErrorE50: BasePalette.dark().scheme.refErrorE50,
    refErrorE6: BasePalette.dark().scheme.refErrorE6,
    refErrorE60: BasePalette.dark().scheme.refErrorE60,
    refErrorE70: BasePalette.dark().scheme.refErrorE70,
    refErrorE8: BasePalette.dark().scheme.refErrorE8,
    refErrorE80: BasePalette.dark().scheme.refErrorE80,
    refErrorE85: BasePalette.dark().scheme.refErrorE85,
    refErrorE90: BasePalette.dark().scheme.refErrorE90,
    refErrorE93: BasePalette.dark().scheme.refErrorE93,
    refErrorE95: BasePalette.dark().scheme.refErrorE95,
    refErrorE98: BasePalette.dark().scheme.refErrorE98,
    refErrorE99: BasePalette.dark().scheme.refErrorE99,
    refNeutralN0: BasePalette.dark().scheme.refNeutralN0,
    refNeutralN10: BasePalette.dark().scheme.refNeutralN10,
    refNeutralN100: BasePalette.dark().scheme.refNeutralN100,
    refNeutralN15: BasePalette.dark().scheme.refNeutralN15,
    refNeutralN2: BasePalette.dark().scheme.refNeutralN2,
    refNeutralN20: BasePalette.dark().scheme.refNeutralN20,
    refNeutralN30: BasePalette.dark().scheme.refNeutralN30,
    refNeutralN4: BasePalette.dark().scheme.refNeutralN4,
    refNeutralN40: BasePalette.dark().scheme.refNeutralN40,
    refNeutralN50: BasePalette.dark().scheme.refNeutralN50,
    refNeutralN6: BasePalette.dark().scheme.refNeutralN6,
    refNeutralN60: BasePalette.dark().scheme.refNeutralN60,
    refNeutralN70: BasePalette.dark().scheme.refNeutralN70,
    refNeutralN8: BasePalette.dark().scheme.refNeutralN8,
    refNeutralN80: BasePalette.dark().scheme.refNeutralN80,
    refNeutralN85: BasePalette.dark().scheme.refNeutralN85,
    refNeutralN90: BasePalette.dark().scheme.refNeutralN90,
    refNeutralN93: BasePalette.dark().scheme.refNeutralN93,
    refNeutralN95: BasePalette.dark().scheme.refNeutralN95,
    refNeutralN98: BasePalette.dark().scheme.refNeutralN98,
    refNeutralN99: BasePalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BasePalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BasePalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BasePalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BasePalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BasePalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BasePalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BasePalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BasePalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BasePalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BasePalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BasePalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BasePalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BasePalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BasePalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BasePalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BasePalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BasePalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BasePalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BasePalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BasePalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BasePalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BasePalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BasePalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BasePalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BasePalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BasePalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BasePalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BasePalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BasePalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BasePalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BasePalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BasePalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BasePalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BasePalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BasePalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BasePalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BasePalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BasePalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BasePalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BasePalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BasePalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BasePalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BasePalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BasePalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BasePalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BasePalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BasePalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BasePalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BasePalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BasePalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BasePalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BasePalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BasePalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BasePalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BasePalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BasePalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BasePalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BasePalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BasePalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BasePalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BasePalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BasePalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BasePalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BasePalette.dark().scheme.refSuccessU0,
    refSuccessU10: BasePalette.dark().scheme.refSuccessU10,
    refSuccessU100: BasePalette.dark().scheme.refSuccessU100,
    refSuccessU15: BasePalette.dark().scheme.refSuccessU15,
    refSuccessU2: BasePalette.dark().scheme.refSuccessU2,
    refSuccessU20: BasePalette.dark().scheme.refSuccessU20,
    refSuccessU30: BasePalette.dark().scheme.refSuccessU30,
    refSuccessU4: BasePalette.dark().scheme.refSuccessU4,
    refSuccessU40: BasePalette.dark().scheme.refSuccessU40,
    refSuccessU50: BasePalette.dark().scheme.refSuccessU50,
    refSuccessU6: BasePalette.dark().scheme.refSuccessU6,
    refSuccessU60: BasePalette.dark().scheme.refSuccessU60,
    refSuccessU70: BasePalette.dark().scheme.refSuccessU70,
    refSuccessU8: BasePalette.dark().scheme.refSuccessU8,
    refSuccessU80: BasePalette.dark().scheme.refSuccessU80,
    refSuccessU85: BasePalette.dark().scheme.refSuccessU85,
    refSuccessU90: BasePalette.dark().scheme.refSuccessU90,
    refSuccessU93: BasePalette.dark().scheme.refSuccessU93,
    refSuccessU95: BasePalette.dark().scheme.refSuccessU95,
    refSuccessU98: BasePalette.dark().scheme.refSuccessU98,
    refSuccessU99: BasePalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BasePalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BasePalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BasePalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BasePalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BasePalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BasePalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BasePalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BasePalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BasePalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BasePalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BasePalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BasePalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BasePalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BasePalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BasePalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BasePalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BasePalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BasePalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BasePalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BasePalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BasePalette.dark().scheme.refTertiaryT99,
    refWarnW0: BasePalette.dark().scheme.refWarnW0,
    refWarnW10: BasePalette.dark().scheme.refWarnW10,
    refWarnW100: BasePalette.dark().scheme.refWarnW100,
    refWarnW15: BasePalette.dark().scheme.refWarnW15,
    refWarnW2: BasePalette.dark().scheme.refWarnW2,
    refWarnW20: BasePalette.dark().scheme.refWarnW20,
    refWarnW30: BasePalette.dark().scheme.refWarnW30,
    refWarnW4: BasePalette.dark().scheme.refWarnW4,
    refWarnW40: BasePalette.dark().scheme.refWarnW40,
    refWarnW50: BasePalette.dark().scheme.refWarnW50,
    refWarnW6: BasePalette.dark().scheme.refWarnW6,
    refWarnW60: BasePalette.dark().scheme.refWarnW60,
    refWarnW70: BasePalette.dark().scheme.refWarnW70,
    refWarnW8: BasePalette.dark().scheme.refWarnW8,
    refWarnW80: BasePalette.dark().scheme.refWarnW80,
    refWarnW85: BasePalette.dark().scheme.refWarnW85,
    refWarnW90: BasePalette.dark().scheme.refWarnW90,
    refWarnW93: BasePalette.dark().scheme.refWarnW93,
    refWarnW95: BasePalette.dark().scheme.refWarnW95,
    refWarnW98: BasePalette.dark().scheme.refWarnW98,
    refWarnW99: BasePalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BasePalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BasePalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BasePalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BasePalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BasePalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BasePalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BasePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BasePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BasePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BasePalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BasePalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BasePalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BasePalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BasePalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BasePalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BasePalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BasePalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BasePalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BasePalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BasePalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BasePalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BasePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BasePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BasePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BasePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BasePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BasePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BasePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BasePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BasePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BasePalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BasePalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BasePalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BasePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BasePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BasePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BasePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BasePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BasePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BasePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BasePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BasePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BasePalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BasePalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BasePalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BasePalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BasePalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BasePalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BasePalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BasePalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BasePalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BasePalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BasePalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BasePalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BasePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BasePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BasePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BasePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BasePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BasePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BasePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BasePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BasePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BasePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BasePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BasePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BasePalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BasePalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BasePalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BasePalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BasePalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BasePalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BasePalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BasePalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BasePalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BasePalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BasePalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BasePalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BasePalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BasePalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BasePalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BasePalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BasePalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BasePalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BasePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BasePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BasePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BasePalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BasePalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BasePalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BasePalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BasePalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BasePalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BasePalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BasePalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BasePalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BasePalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BasePalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BasePalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BasePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BasePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BasePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BasePalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BasePalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BasePalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BasePalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BasePalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BasePalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BasePalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BasePalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BasePalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BasePalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BasePalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BasePalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BasePalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BasePalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BasePalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BasePalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BasePalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BasePalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BasePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BasePalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BasePalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BasePalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BasePalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BasePalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BasePalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BasePalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BasePalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BasePalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BasePalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BasePalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BasePalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BasePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BasePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BasePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BasePalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BasePalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BasePalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BasePalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BasePalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BasePalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BasePalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BasePalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BasePalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BasePalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BasePalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BasePalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BasePalette.dark().scheme.sysError,
    sysErrorContainer: BasePalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BasePalette.dark().scheme.sysInverseSurface,
    sysOnError: BasePalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BasePalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BasePalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BasePalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BasePalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BasePalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BasePalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BasePalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BasePalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BasePalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BasePalette.dark().scheme.sysOutline,
    sysOutlineVariant: BasePalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BasePalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BasePalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BasePalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BasePalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BasePalette.dark().scheme.sysScrim,
    sysSecondary: BasePalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BasePalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BasePalette.dark().scheme.sysShadow,
    sysSuccess: BasePalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BasePalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BasePalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BasePalette.dark().scheme.sysSurface,
    sysSurfaceBright: BasePalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BasePalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BasePalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BasePalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BasePalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BasePalette.dark().scheme.sysWarn,
    sysWarnContainer: BasePalette.dark().scheme.sysWarnContainer,
    aqua: BasePalette.dark().scheme.aqua,
    black: BasePalette.dark().scheme.black,
    blue: BasePalette.dark().scheme.blue,
    cyan: BasePalette.dark().scheme.cyan,
    grape: BasePalette.dark().scheme.grape,
    green: BasePalette.dark().scheme.green,
    lime: BasePalette.dark().scheme.lime,
    magenta: BasePalette.dark().scheme.magenta,
    orange: BasePalette.dark().scheme.orange,
    pink: BasePalette.dark().scheme.pink,
    purple: BasePalette.dark().scheme.purple,
    red: BasePalette.dark().scheme.red,
    white: BasePalette.dark().scheme.white,
    yellow: BasePalette.dark().scheme.yellow,
    onRed: BasePalette.dark().scheme.onRed,
    onOrange: BasePalette.dark().scheme.onOrange,
    onYellow: BasePalette.dark().scheme.onYellow,
    onLime: BasePalette.dark().scheme.onLime,
    onGreen: BasePalette.dark().scheme.onGreen,
    onAqua: BasePalette.dark().scheme.onAqua,
    onCyan: BasePalette.dark().scheme.onCyan,
    onBlue: BasePalette.dark().scheme.onBlue,
    onPurple: BasePalette.dark().scheme.onPurple,
    onGrape: BasePalette.dark().scheme.onGrape,
    onPink: BasePalette.dark().scheme.onPink,
    onMagenta: BasePalette.dark().scheme.onMagenta,
  );
  static final darkTextTheme = TextsThemeExtension(
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
