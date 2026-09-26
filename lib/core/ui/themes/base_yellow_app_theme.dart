import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_yellow_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseYellowAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseYellowPalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseYellowPalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseYellowPalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseYellowPalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseYellowPalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseYellowPalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseYellowPalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseYellowPalette.light().scheme.refErrorE0,
    refErrorE10: BaseYellowPalette.light().scheme.refErrorE10,
    refErrorE100: BaseYellowPalette.light().scheme.refErrorE100,
    refErrorE15: BaseYellowPalette.light().scheme.refErrorE15,
    refErrorE2: BaseYellowPalette.light().scheme.refErrorE2,
    refErrorE20: BaseYellowPalette.light().scheme.refErrorE20,
    refErrorE30: BaseYellowPalette.light().scheme.refErrorE30,
    refErrorE4: BaseYellowPalette.light().scheme.refErrorE4,
    refErrorE40: BaseYellowPalette.light().scheme.refErrorE40,
    refErrorE50: BaseYellowPalette.light().scheme.refErrorE50,
    refErrorE6: BaseYellowPalette.light().scheme.refErrorE6,
    refErrorE60: BaseYellowPalette.light().scheme.refErrorE60,
    refErrorE70: BaseYellowPalette.light().scheme.refErrorE70,
    refErrorE8: BaseYellowPalette.light().scheme.refErrorE8,
    refErrorE80: BaseYellowPalette.light().scheme.refErrorE80,
    refErrorE85: BaseYellowPalette.light().scheme.refErrorE85,
    refErrorE90: BaseYellowPalette.light().scheme.refErrorE90,
    refErrorE93: BaseYellowPalette.light().scheme.refErrorE93,
    refErrorE95: BaseYellowPalette.light().scheme.refErrorE95,
    refErrorE98: BaseYellowPalette.light().scheme.refErrorE98,
    refErrorE99: BaseYellowPalette.light().scheme.refErrorE99,
    refNeutralN0: BaseYellowPalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseYellowPalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseYellowPalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseYellowPalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseYellowPalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseYellowPalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseYellowPalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseYellowPalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseYellowPalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseYellowPalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseYellowPalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseYellowPalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseYellowPalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseYellowPalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseYellowPalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseYellowPalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseYellowPalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseYellowPalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseYellowPalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseYellowPalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseYellowPalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseYellowPalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseYellowPalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseYellowPalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseYellowPalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseYellowPalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseYellowPalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseYellowPalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseYellowPalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseYellowPalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseYellowPalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseYellowPalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseYellowPalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseYellowPalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseYellowPalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseYellowPalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseYellowPalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseYellowPalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseYellowPalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseYellowPalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseYellowPalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseYellowPalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseYellowPalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseYellowPalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseYellowPalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseYellowPalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseYellowPalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseYellowPalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseYellowPalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseYellowPalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseYellowPalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseYellowPalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseYellowPalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseYellowPalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseYellowPalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseYellowPalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseYellowPalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseYellowPalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseYellowPalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseYellowPalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseYellowPalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseYellowPalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseYellowPalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseYellowPalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseYellowPalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseYellowPalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseYellowPalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseYellowPalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseYellowPalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseYellowPalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseYellowPalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseYellowPalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseYellowPalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseYellowPalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseYellowPalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseYellowPalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseYellowPalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseYellowPalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseYellowPalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseYellowPalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseYellowPalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseYellowPalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseYellowPalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseYellowPalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseYellowPalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseYellowPalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseYellowPalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseYellowPalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseYellowPalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseYellowPalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseYellowPalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseYellowPalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseYellowPalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseYellowPalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseYellowPalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseYellowPalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseYellowPalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseYellowPalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseYellowPalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseYellowPalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseYellowPalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseYellowPalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseYellowPalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseYellowPalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseYellowPalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseYellowPalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseYellowPalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseYellowPalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseYellowPalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseYellowPalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseYellowPalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseYellowPalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseYellowPalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseYellowPalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseYellowPalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseYellowPalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseYellowPalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseYellowPalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseYellowPalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseYellowPalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseYellowPalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseYellowPalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseYellowPalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseYellowPalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseYellowPalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseYellowPalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseYellowPalette.light().scheme.refWarnW0,
    refWarnW10: BaseYellowPalette.light().scheme.refWarnW10,
    refWarnW100: BaseYellowPalette.light().scheme.refWarnW100,
    refWarnW15: BaseYellowPalette.light().scheme.refWarnW15,
    refWarnW2: BaseYellowPalette.light().scheme.refWarnW2,
    refWarnW20: BaseYellowPalette.light().scheme.refWarnW20,
    refWarnW30: BaseYellowPalette.light().scheme.refWarnW30,
    refWarnW4: BaseYellowPalette.light().scheme.refWarnW4,
    refWarnW40: BaseYellowPalette.light().scheme.refWarnW40,
    refWarnW50: BaseYellowPalette.light().scheme.refWarnW50,
    refWarnW6: BaseYellowPalette.light().scheme.refWarnW6,
    refWarnW60: BaseYellowPalette.light().scheme.refWarnW60,
    refWarnW70: BaseYellowPalette.light().scheme.refWarnW70,
    refWarnW8: BaseYellowPalette.light().scheme.refWarnW8,
    refWarnW80: BaseYellowPalette.light().scheme.refWarnW80,
    refWarnW85: BaseYellowPalette.light().scheme.refWarnW85,
    refWarnW90: BaseYellowPalette.light().scheme.refWarnW90,
    refWarnW93: BaseYellowPalette.light().scheme.refWarnW93,
    refWarnW95: BaseYellowPalette.light().scheme.refWarnW95,
    refWarnW98: BaseYellowPalette.light().scheme.refWarnW98,
    refWarnW99: BaseYellowPalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseYellowPalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseYellowPalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseYellowPalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseYellowPalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseYellowPalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseYellowPalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseYellowPalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseYellowPalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseYellowPalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseYellowPalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseYellowPalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseYellowPalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseYellowPalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseYellowPalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseYellowPalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseYellowPalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseYellowPalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseYellowPalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseYellowPalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseYellowPalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseYellowPalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseYellowPalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseYellowPalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseYellowPalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseYellowPalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseYellowPalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseYellowPalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseYellowPalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseYellowPalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseYellowPalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseYellowPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseYellowPalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseYellowPalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseYellowPalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseYellowPalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseYellowPalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseYellowPalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseYellowPalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseYellowPalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseYellowPalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseYellowPalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseYellowPalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseYellowPalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseYellowPalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseYellowPalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseYellowPalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseYellowPalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseYellowPalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseYellowPalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseYellowPalette.light().scheme.sysError,
    sysErrorContainer: BaseYellowPalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseYellowPalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseYellowPalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseYellowPalette.light().scheme.sysInverseSurface,
    sysOnError: BaseYellowPalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseYellowPalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseYellowPalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseYellowPalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseYellowPalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseYellowPalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseYellowPalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseYellowPalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseYellowPalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseYellowPalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseYellowPalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseYellowPalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseYellowPalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseYellowPalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseYellowPalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseYellowPalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseYellowPalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseYellowPalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseYellowPalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseYellowPalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseYellowPalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseYellowPalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseYellowPalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseYellowPalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseYellowPalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseYellowPalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseYellowPalette.light().scheme.sysScrim,
    sysSecondary: BaseYellowPalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseYellowPalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseYellowPalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseYellowPalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseYellowPalette.light().scheme.sysShadow,
    sysSuccess: BaseYellowPalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseYellowPalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseYellowPalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseYellowPalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseYellowPalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseYellowPalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseYellowPalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseYellowPalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseYellowPalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseYellowPalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseYellowPalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseYellowPalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseYellowPalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseYellowPalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseYellowPalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseYellowPalette.light().scheme.sysWarn,
    sysWarnContainer: BaseYellowPalette.light().scheme.sysWarnContainer,
    aqua: BaseYellowPalette.light().scheme.aqua,
    black: BaseYellowPalette.light().scheme.black,
    blue: BaseYellowPalette.light().scheme.blue,
    cyan: BaseYellowPalette.light().scheme.cyan,
    grape: BaseYellowPalette.light().scheme.grape,
    green: BaseYellowPalette.light().scheme.green,
    lime: BaseYellowPalette.light().scheme.lime,
    magenta: BaseYellowPalette.light().scheme.magenta,
    orange: BaseYellowPalette.light().scheme.orange,
    pink: BaseYellowPalette.light().scheme.pink,
    purple: BaseYellowPalette.light().scheme.purple,
    red: BaseYellowPalette.light().scheme.red,
    white: BaseYellowPalette.light().scheme.white,
    yellow: BaseYellowPalette.light().scheme.yellow,
    onRed: BaseYellowPalette.light().scheme.onRed,
    onOrange: BaseYellowPalette.light().scheme.onOrange,
    onYellow: BaseYellowPalette.light().scheme.onYellow,
    onLime: BaseYellowPalette.light().scheme.onLime,
    onGreen: BaseYellowPalette.light().scheme.onGreen,
    onAqua: BaseYellowPalette.light().scheme.onAqua,
    onCyan: BaseYellowPalette.light().scheme.onCyan,
    onBlue: BaseYellowPalette.light().scheme.onBlue,
    onPurple: BaseYellowPalette.light().scheme.onPurple,
    onGrape: BaseYellowPalette.light().scheme.onGrape,
    onPink: BaseYellowPalette.light().scheme.onPink,
    onMagenta: BaseYellowPalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseYellowPalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseYellowPalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseYellowPalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseYellowPalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseYellowPalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseYellowPalette.dark().scheme.refErrorE0,
    refErrorE10: BaseYellowPalette.dark().scheme.refErrorE10,
    refErrorE100: BaseYellowPalette.dark().scheme.refErrorE100,
    refErrorE15: BaseYellowPalette.dark().scheme.refErrorE15,
    refErrorE2: BaseYellowPalette.dark().scheme.refErrorE2,
    refErrorE20: BaseYellowPalette.dark().scheme.refErrorE20,
    refErrorE30: BaseYellowPalette.dark().scheme.refErrorE30,
    refErrorE4: BaseYellowPalette.dark().scheme.refErrorE4,
    refErrorE40: BaseYellowPalette.dark().scheme.refErrorE40,
    refErrorE50: BaseYellowPalette.dark().scheme.refErrorE50,
    refErrorE6: BaseYellowPalette.dark().scheme.refErrorE6,
    refErrorE60: BaseYellowPalette.dark().scheme.refErrorE60,
    refErrorE70: BaseYellowPalette.dark().scheme.refErrorE70,
    refErrorE8: BaseYellowPalette.dark().scheme.refErrorE8,
    refErrorE80: BaseYellowPalette.dark().scheme.refErrorE80,
    refErrorE85: BaseYellowPalette.dark().scheme.refErrorE85,
    refErrorE90: BaseYellowPalette.dark().scheme.refErrorE90,
    refErrorE93: BaseYellowPalette.dark().scheme.refErrorE93,
    refErrorE95: BaseYellowPalette.dark().scheme.refErrorE95,
    refErrorE98: BaseYellowPalette.dark().scheme.refErrorE98,
    refErrorE99: BaseYellowPalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseYellowPalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseYellowPalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseYellowPalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseYellowPalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseYellowPalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseYellowPalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseYellowPalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseYellowPalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseYellowPalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseYellowPalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseYellowPalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseYellowPalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseYellowPalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseYellowPalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseYellowPalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseYellowPalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseYellowPalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseYellowPalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseYellowPalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseYellowPalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseYellowPalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseYellowPalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseYellowPalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseYellowPalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseYellowPalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseYellowPalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseYellowPalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseYellowPalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseYellowPalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseYellowPalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseYellowPalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseYellowPalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseYellowPalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseYellowPalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseYellowPalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseYellowPalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseYellowPalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseYellowPalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseYellowPalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseYellowPalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseYellowPalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseYellowPalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseYellowPalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseYellowPalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseYellowPalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseYellowPalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseYellowPalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseYellowPalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseYellowPalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseYellowPalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseYellowPalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseYellowPalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseYellowPalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseYellowPalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseYellowPalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseYellowPalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseYellowPalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseYellowPalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseYellowPalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseYellowPalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseYellowPalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseYellowPalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseYellowPalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseYellowPalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseYellowPalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseYellowPalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseYellowPalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseYellowPalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseYellowPalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseYellowPalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseYellowPalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseYellowPalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseYellowPalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseYellowPalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseYellowPalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseYellowPalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseYellowPalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseYellowPalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseYellowPalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseYellowPalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseYellowPalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseYellowPalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseYellowPalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseYellowPalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseYellowPalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseYellowPalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseYellowPalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseYellowPalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseYellowPalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseYellowPalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseYellowPalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseYellowPalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseYellowPalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseYellowPalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseYellowPalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseYellowPalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseYellowPalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseYellowPalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseYellowPalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseYellowPalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseYellowPalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseYellowPalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseYellowPalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseYellowPalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseYellowPalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseYellowPalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseYellowPalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseYellowPalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseYellowPalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseYellowPalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseYellowPalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseYellowPalette.dark().scheme.refWarnW0,
    refWarnW10: BaseYellowPalette.dark().scheme.refWarnW10,
    refWarnW100: BaseYellowPalette.dark().scheme.refWarnW100,
    refWarnW15: BaseYellowPalette.dark().scheme.refWarnW15,
    refWarnW2: BaseYellowPalette.dark().scheme.refWarnW2,
    refWarnW20: BaseYellowPalette.dark().scheme.refWarnW20,
    refWarnW30: BaseYellowPalette.dark().scheme.refWarnW30,
    refWarnW4: BaseYellowPalette.dark().scheme.refWarnW4,
    refWarnW40: BaseYellowPalette.dark().scheme.refWarnW40,
    refWarnW50: BaseYellowPalette.dark().scheme.refWarnW50,
    refWarnW6: BaseYellowPalette.dark().scheme.refWarnW6,
    refWarnW60: BaseYellowPalette.dark().scheme.refWarnW60,
    refWarnW70: BaseYellowPalette.dark().scheme.refWarnW70,
    refWarnW8: BaseYellowPalette.dark().scheme.refWarnW8,
    refWarnW80: BaseYellowPalette.dark().scheme.refWarnW80,
    refWarnW85: BaseYellowPalette.dark().scheme.refWarnW85,
    refWarnW90: BaseYellowPalette.dark().scheme.refWarnW90,
    refWarnW93: BaseYellowPalette.dark().scheme.refWarnW93,
    refWarnW95: BaseYellowPalette.dark().scheme.refWarnW95,
    refWarnW98: BaseYellowPalette.dark().scheme.refWarnW98,
    refWarnW99: BaseYellowPalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseYellowPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseYellowPalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseYellowPalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseYellowPalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseYellowPalette.dark().scheme.sysError,
    sysErrorContainer: BaseYellowPalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseYellowPalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseYellowPalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseYellowPalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseYellowPalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseYellowPalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseYellowPalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseYellowPalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseYellowPalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseYellowPalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseYellowPalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseYellowPalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseYellowPalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseYellowPalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseYellowPalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseYellowPalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseYellowPalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseYellowPalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseYellowPalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseYellowPalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseYellowPalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseYellowPalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseYellowPalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseYellowPalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseYellowPalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseYellowPalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseYellowPalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseYellowPalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseYellowPalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseYellowPalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseYellowPalette.dark().scheme.sysScrim,
    sysSecondary: BaseYellowPalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseYellowPalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseYellowPalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseYellowPalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseYellowPalette.dark().scheme.sysShadow,
    sysSuccess: BaseYellowPalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseYellowPalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseYellowPalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseYellowPalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseYellowPalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseYellowPalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseYellowPalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseYellowPalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseYellowPalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseYellowPalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseYellowPalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseYellowPalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseYellowPalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseYellowPalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseYellowPalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseYellowPalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseYellowPalette.dark().scheme.sysWarnContainer,
    aqua: BaseYellowPalette.dark().scheme.aqua,
    black: BaseYellowPalette.dark().scheme.black,
    blue: BaseYellowPalette.dark().scheme.blue,
    cyan: BaseYellowPalette.dark().scheme.cyan,
    grape: BaseYellowPalette.dark().scheme.grape,
    green: BaseYellowPalette.dark().scheme.green,
    lime: BaseYellowPalette.dark().scheme.lime,
    magenta: BaseYellowPalette.dark().scheme.magenta,
    orange: BaseYellowPalette.dark().scheme.orange,
    pink: BaseYellowPalette.dark().scheme.pink,
    purple: BaseYellowPalette.dark().scheme.purple,
    red: BaseYellowPalette.dark().scheme.red,
    white: BaseYellowPalette.dark().scheme.white,
    yellow: BaseYellowPalette.dark().scheme.yellow,
    onRed: BaseYellowPalette.dark().scheme.onRed,
    onOrange: BaseYellowPalette.dark().scheme.onOrange,
    onYellow: BaseYellowPalette.dark().scheme.onYellow,
    onLime: BaseYellowPalette.dark().scheme.onLime,
    onGreen: BaseYellowPalette.dark().scheme.onGreen,
    onAqua: BaseYellowPalette.dark().scheme.onAqua,
    onCyan: BaseYellowPalette.dark().scheme.onCyan,
    onBlue: BaseYellowPalette.dark().scheme.onBlue,
    onPurple: BaseYellowPalette.dark().scheme.onPurple,
    onGrape: BaseYellowPalette.dark().scheme.onGrape,
    onPink: BaseYellowPalette.dark().scheme.onPink,
    onMagenta: BaseYellowPalette.dark().scheme.onMagenta,
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
