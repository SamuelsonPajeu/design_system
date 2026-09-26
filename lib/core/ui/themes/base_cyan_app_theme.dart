import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_cyan_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseCyanAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseCyanPalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseCyanPalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseCyanPalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseCyanPalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseCyanPalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseCyanPalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseCyanPalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseCyanPalette.light().scheme.refErrorE0,
    refErrorE10: BaseCyanPalette.light().scheme.refErrorE10,
    refErrorE100: BaseCyanPalette.light().scheme.refErrorE100,
    refErrorE15: BaseCyanPalette.light().scheme.refErrorE15,
    refErrorE2: BaseCyanPalette.light().scheme.refErrorE2,
    refErrorE20: BaseCyanPalette.light().scheme.refErrorE20,
    refErrorE30: BaseCyanPalette.light().scheme.refErrorE30,
    refErrorE4: BaseCyanPalette.light().scheme.refErrorE4,
    refErrorE40: BaseCyanPalette.light().scheme.refErrorE40,
    refErrorE50: BaseCyanPalette.light().scheme.refErrorE50,
    refErrorE6: BaseCyanPalette.light().scheme.refErrorE6,
    refErrorE60: BaseCyanPalette.light().scheme.refErrorE60,
    refErrorE70: BaseCyanPalette.light().scheme.refErrorE70,
    refErrorE8: BaseCyanPalette.light().scheme.refErrorE8,
    refErrorE80: BaseCyanPalette.light().scheme.refErrorE80,
    refErrorE85: BaseCyanPalette.light().scheme.refErrorE85,
    refErrorE90: BaseCyanPalette.light().scheme.refErrorE90,
    refErrorE93: BaseCyanPalette.light().scheme.refErrorE93,
    refErrorE95: BaseCyanPalette.light().scheme.refErrorE95,
    refErrorE98: BaseCyanPalette.light().scheme.refErrorE98,
    refErrorE99: BaseCyanPalette.light().scheme.refErrorE99,
    refNeutralN0: BaseCyanPalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseCyanPalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseCyanPalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseCyanPalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseCyanPalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseCyanPalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseCyanPalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseCyanPalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseCyanPalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseCyanPalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseCyanPalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseCyanPalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseCyanPalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseCyanPalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseCyanPalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseCyanPalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseCyanPalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseCyanPalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseCyanPalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseCyanPalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseCyanPalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseCyanPalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseCyanPalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseCyanPalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseCyanPalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseCyanPalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseCyanPalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseCyanPalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseCyanPalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseCyanPalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseCyanPalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseCyanPalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseCyanPalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseCyanPalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseCyanPalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseCyanPalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseCyanPalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseCyanPalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseCyanPalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseCyanPalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseCyanPalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseCyanPalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseCyanPalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseCyanPalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseCyanPalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseCyanPalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseCyanPalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseCyanPalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseCyanPalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseCyanPalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseCyanPalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseCyanPalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseCyanPalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseCyanPalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseCyanPalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseCyanPalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseCyanPalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseCyanPalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseCyanPalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseCyanPalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseCyanPalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseCyanPalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseCyanPalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseCyanPalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseCyanPalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseCyanPalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseCyanPalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseCyanPalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseCyanPalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseCyanPalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseCyanPalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseCyanPalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseCyanPalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseCyanPalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseCyanPalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseCyanPalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseCyanPalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseCyanPalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseCyanPalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseCyanPalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseCyanPalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseCyanPalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseCyanPalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseCyanPalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseCyanPalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseCyanPalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseCyanPalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseCyanPalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseCyanPalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseCyanPalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseCyanPalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseCyanPalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseCyanPalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseCyanPalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseCyanPalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseCyanPalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseCyanPalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseCyanPalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseCyanPalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseCyanPalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseCyanPalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseCyanPalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseCyanPalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseCyanPalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseCyanPalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseCyanPalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseCyanPalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseCyanPalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseCyanPalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseCyanPalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseCyanPalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseCyanPalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseCyanPalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseCyanPalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseCyanPalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseCyanPalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseCyanPalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseCyanPalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseCyanPalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseCyanPalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseCyanPalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseCyanPalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseCyanPalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseCyanPalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseCyanPalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseCyanPalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseCyanPalette.light().scheme.refWarnW0,
    refWarnW10: BaseCyanPalette.light().scheme.refWarnW10,
    refWarnW100: BaseCyanPalette.light().scheme.refWarnW100,
    refWarnW15: BaseCyanPalette.light().scheme.refWarnW15,
    refWarnW2: BaseCyanPalette.light().scheme.refWarnW2,
    refWarnW20: BaseCyanPalette.light().scheme.refWarnW20,
    refWarnW30: BaseCyanPalette.light().scheme.refWarnW30,
    refWarnW4: BaseCyanPalette.light().scheme.refWarnW4,
    refWarnW40: BaseCyanPalette.light().scheme.refWarnW40,
    refWarnW50: BaseCyanPalette.light().scheme.refWarnW50,
    refWarnW6: BaseCyanPalette.light().scheme.refWarnW6,
    refWarnW60: BaseCyanPalette.light().scheme.refWarnW60,
    refWarnW70: BaseCyanPalette.light().scheme.refWarnW70,
    refWarnW8: BaseCyanPalette.light().scheme.refWarnW8,
    refWarnW80: BaseCyanPalette.light().scheme.refWarnW80,
    refWarnW85: BaseCyanPalette.light().scheme.refWarnW85,
    refWarnW90: BaseCyanPalette.light().scheme.refWarnW90,
    refWarnW93: BaseCyanPalette.light().scheme.refWarnW93,
    refWarnW95: BaseCyanPalette.light().scheme.refWarnW95,
    refWarnW98: BaseCyanPalette.light().scheme.refWarnW98,
    refWarnW99: BaseCyanPalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseCyanPalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseCyanPalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseCyanPalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseCyanPalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseCyanPalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseCyanPalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseCyanPalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseCyanPalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseCyanPalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseCyanPalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseCyanPalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseCyanPalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseCyanPalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseCyanPalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseCyanPalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseCyanPalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseCyanPalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseCyanPalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseCyanPalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseCyanPalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseCyanPalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseCyanPalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseCyanPalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseCyanPalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseCyanPalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseCyanPalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseCyanPalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseCyanPalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseCyanPalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseCyanPalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseCyanPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseCyanPalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseCyanPalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseCyanPalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseCyanPalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseCyanPalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseCyanPalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseCyanPalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseCyanPalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseCyanPalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseCyanPalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseCyanPalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseCyanPalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseCyanPalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseCyanPalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseCyanPalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseCyanPalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseCyanPalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseCyanPalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseCyanPalette.light().scheme.sysError,
    sysErrorContainer: BaseCyanPalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseCyanPalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseCyanPalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseCyanPalette.light().scheme.sysInverseSurface,
    sysOnError: BaseCyanPalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseCyanPalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseCyanPalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseCyanPalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseCyanPalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseCyanPalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseCyanPalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseCyanPalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseCyanPalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseCyanPalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseCyanPalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseCyanPalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseCyanPalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseCyanPalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseCyanPalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseCyanPalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseCyanPalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseCyanPalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseCyanPalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseCyanPalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseCyanPalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseCyanPalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseCyanPalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseCyanPalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseCyanPalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseCyanPalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseCyanPalette.light().scheme.sysScrim,
    sysSecondary: BaseCyanPalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseCyanPalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseCyanPalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseCyanPalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseCyanPalette.light().scheme.sysShadow,
    sysSuccess: BaseCyanPalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseCyanPalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseCyanPalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseCyanPalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseCyanPalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseCyanPalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseCyanPalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseCyanPalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseCyanPalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseCyanPalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseCyanPalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseCyanPalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseCyanPalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseCyanPalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseCyanPalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseCyanPalette.light().scheme.sysWarn,
    sysWarnContainer: BaseCyanPalette.light().scheme.sysWarnContainer,
    aqua: BaseCyanPalette.light().scheme.aqua,
    black: BaseCyanPalette.light().scheme.black,
    blue: BaseCyanPalette.light().scheme.blue,
    cyan: BaseCyanPalette.light().scheme.cyan,
    grape: BaseCyanPalette.light().scheme.grape,
    green: BaseCyanPalette.light().scheme.green,
    lime: BaseCyanPalette.light().scheme.lime,
    magenta: BaseCyanPalette.light().scheme.magenta,
    orange: BaseCyanPalette.light().scheme.orange,
    pink: BaseCyanPalette.light().scheme.pink,
    purple: BaseCyanPalette.light().scheme.purple,
    red: BaseCyanPalette.light().scheme.red,
    white: BaseCyanPalette.light().scheme.white,
    yellow: BaseCyanPalette.light().scheme.yellow,
    onRed: BaseCyanPalette.light().scheme.onRed,
    onOrange: BaseCyanPalette.light().scheme.onOrange,
    onYellow: BaseCyanPalette.light().scheme.onYellow,
    onLime: BaseCyanPalette.light().scheme.onLime,
    onGreen: BaseCyanPalette.light().scheme.onGreen,
    onAqua: BaseCyanPalette.light().scheme.onAqua,
    onCyan: BaseCyanPalette.light().scheme.onCyan,
    onBlue: BaseCyanPalette.light().scheme.onBlue,
    onPurple: BaseCyanPalette.light().scheme.onPurple,
    onGrape: BaseCyanPalette.light().scheme.onGrape,
    onPink: BaseCyanPalette.light().scheme.onPink,
    onMagenta: BaseCyanPalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseCyanPalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseCyanPalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseCyanPalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseCyanPalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseCyanPalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseCyanPalette.dark().scheme.refErrorE0,
    refErrorE10: BaseCyanPalette.dark().scheme.refErrorE10,
    refErrorE100: BaseCyanPalette.dark().scheme.refErrorE100,
    refErrorE15: BaseCyanPalette.dark().scheme.refErrorE15,
    refErrorE2: BaseCyanPalette.dark().scheme.refErrorE2,
    refErrorE20: BaseCyanPalette.dark().scheme.refErrorE20,
    refErrorE30: BaseCyanPalette.dark().scheme.refErrorE30,
    refErrorE4: BaseCyanPalette.dark().scheme.refErrorE4,
    refErrorE40: BaseCyanPalette.dark().scheme.refErrorE40,
    refErrorE50: BaseCyanPalette.dark().scheme.refErrorE50,
    refErrorE6: BaseCyanPalette.dark().scheme.refErrorE6,
    refErrorE60: BaseCyanPalette.dark().scheme.refErrorE60,
    refErrorE70: BaseCyanPalette.dark().scheme.refErrorE70,
    refErrorE8: BaseCyanPalette.dark().scheme.refErrorE8,
    refErrorE80: BaseCyanPalette.dark().scheme.refErrorE80,
    refErrorE85: BaseCyanPalette.dark().scheme.refErrorE85,
    refErrorE90: BaseCyanPalette.dark().scheme.refErrorE90,
    refErrorE93: BaseCyanPalette.dark().scheme.refErrorE93,
    refErrorE95: BaseCyanPalette.dark().scheme.refErrorE95,
    refErrorE98: BaseCyanPalette.dark().scheme.refErrorE98,
    refErrorE99: BaseCyanPalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseCyanPalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseCyanPalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseCyanPalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseCyanPalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseCyanPalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseCyanPalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseCyanPalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseCyanPalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseCyanPalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseCyanPalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseCyanPalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseCyanPalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseCyanPalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseCyanPalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseCyanPalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseCyanPalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseCyanPalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseCyanPalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseCyanPalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseCyanPalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseCyanPalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseCyanPalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseCyanPalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseCyanPalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseCyanPalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseCyanPalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseCyanPalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseCyanPalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseCyanPalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseCyanPalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseCyanPalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseCyanPalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseCyanPalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseCyanPalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseCyanPalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseCyanPalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseCyanPalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseCyanPalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseCyanPalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseCyanPalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseCyanPalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseCyanPalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseCyanPalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseCyanPalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseCyanPalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseCyanPalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseCyanPalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseCyanPalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseCyanPalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseCyanPalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseCyanPalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseCyanPalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseCyanPalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseCyanPalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseCyanPalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseCyanPalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseCyanPalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseCyanPalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseCyanPalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseCyanPalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseCyanPalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseCyanPalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseCyanPalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseCyanPalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseCyanPalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseCyanPalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseCyanPalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseCyanPalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseCyanPalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseCyanPalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseCyanPalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseCyanPalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseCyanPalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseCyanPalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseCyanPalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseCyanPalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseCyanPalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseCyanPalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseCyanPalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseCyanPalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseCyanPalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseCyanPalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseCyanPalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseCyanPalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseCyanPalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseCyanPalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseCyanPalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseCyanPalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseCyanPalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseCyanPalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseCyanPalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseCyanPalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseCyanPalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseCyanPalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseCyanPalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseCyanPalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseCyanPalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseCyanPalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseCyanPalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseCyanPalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseCyanPalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseCyanPalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseCyanPalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseCyanPalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseCyanPalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseCyanPalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseCyanPalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseCyanPalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseCyanPalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseCyanPalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseCyanPalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseCyanPalette.dark().scheme.refWarnW0,
    refWarnW10: BaseCyanPalette.dark().scheme.refWarnW10,
    refWarnW100: BaseCyanPalette.dark().scheme.refWarnW100,
    refWarnW15: BaseCyanPalette.dark().scheme.refWarnW15,
    refWarnW2: BaseCyanPalette.dark().scheme.refWarnW2,
    refWarnW20: BaseCyanPalette.dark().scheme.refWarnW20,
    refWarnW30: BaseCyanPalette.dark().scheme.refWarnW30,
    refWarnW4: BaseCyanPalette.dark().scheme.refWarnW4,
    refWarnW40: BaseCyanPalette.dark().scheme.refWarnW40,
    refWarnW50: BaseCyanPalette.dark().scheme.refWarnW50,
    refWarnW6: BaseCyanPalette.dark().scheme.refWarnW6,
    refWarnW60: BaseCyanPalette.dark().scheme.refWarnW60,
    refWarnW70: BaseCyanPalette.dark().scheme.refWarnW70,
    refWarnW8: BaseCyanPalette.dark().scheme.refWarnW8,
    refWarnW80: BaseCyanPalette.dark().scheme.refWarnW80,
    refWarnW85: BaseCyanPalette.dark().scheme.refWarnW85,
    refWarnW90: BaseCyanPalette.dark().scheme.refWarnW90,
    refWarnW93: BaseCyanPalette.dark().scheme.refWarnW93,
    refWarnW95: BaseCyanPalette.dark().scheme.refWarnW95,
    refWarnW98: BaseCyanPalette.dark().scheme.refWarnW98,
    refWarnW99: BaseCyanPalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseCyanPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseCyanPalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseCyanPalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseCyanPalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseCyanPalette.dark().scheme.sysError,
    sysErrorContainer: BaseCyanPalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseCyanPalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseCyanPalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseCyanPalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseCyanPalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseCyanPalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseCyanPalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseCyanPalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseCyanPalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseCyanPalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseCyanPalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseCyanPalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseCyanPalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseCyanPalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseCyanPalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseCyanPalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseCyanPalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseCyanPalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseCyanPalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseCyanPalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseCyanPalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseCyanPalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseCyanPalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseCyanPalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseCyanPalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseCyanPalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseCyanPalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseCyanPalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseCyanPalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseCyanPalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseCyanPalette.dark().scheme.sysScrim,
    sysSecondary: BaseCyanPalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseCyanPalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseCyanPalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseCyanPalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseCyanPalette.dark().scheme.sysShadow,
    sysSuccess: BaseCyanPalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseCyanPalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseCyanPalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseCyanPalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseCyanPalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseCyanPalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseCyanPalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseCyanPalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseCyanPalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseCyanPalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseCyanPalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseCyanPalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseCyanPalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseCyanPalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseCyanPalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseCyanPalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseCyanPalette.dark().scheme.sysWarnContainer,
    aqua: BaseCyanPalette.dark().scheme.aqua,
    black: BaseCyanPalette.dark().scheme.black,
    blue: BaseCyanPalette.dark().scheme.blue,
    cyan: BaseCyanPalette.dark().scheme.cyan,
    grape: BaseCyanPalette.dark().scheme.grape,
    green: BaseCyanPalette.dark().scheme.green,
    lime: BaseCyanPalette.dark().scheme.lime,
    magenta: BaseCyanPalette.dark().scheme.magenta,
    orange: BaseCyanPalette.dark().scheme.orange,
    pink: BaseCyanPalette.dark().scheme.pink,
    purple: BaseCyanPalette.dark().scheme.purple,
    red: BaseCyanPalette.dark().scheme.red,
    white: BaseCyanPalette.dark().scheme.white,
    yellow: BaseCyanPalette.dark().scheme.yellow,
    onRed: BaseCyanPalette.dark().scheme.onRed,
    onOrange: BaseCyanPalette.dark().scheme.onOrange,
    onYellow: BaseCyanPalette.dark().scheme.onYellow,
    onLime: BaseCyanPalette.dark().scheme.onLime,
    onGreen: BaseCyanPalette.dark().scheme.onGreen,
    onAqua: BaseCyanPalette.dark().scheme.onAqua,
    onCyan: BaseCyanPalette.dark().scheme.onCyan,
    onBlue: BaseCyanPalette.dark().scheme.onBlue,
    onPurple: BaseCyanPalette.dark().scheme.onPurple,
    onGrape: BaseCyanPalette.dark().scheme.onGrape,
    onPink: BaseCyanPalette.dark().scheme.onPink,
    onMagenta: BaseCyanPalette.dark().scheme.onMagenta,
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
