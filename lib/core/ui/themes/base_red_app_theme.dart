import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_red_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseRedAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseRedPalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseRedPalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseRedPalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseRedPalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseRedPalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseRedPalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseRedPalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseRedPalette.light().scheme.refErrorE0,
    refErrorE10: BaseRedPalette.light().scheme.refErrorE10,
    refErrorE100: BaseRedPalette.light().scheme.refErrorE100,
    refErrorE15: BaseRedPalette.light().scheme.refErrorE15,
    refErrorE2: BaseRedPalette.light().scheme.refErrorE2,
    refErrorE20: BaseRedPalette.light().scheme.refErrorE20,
    refErrorE30: BaseRedPalette.light().scheme.refErrorE30,
    refErrorE4: BaseRedPalette.light().scheme.refErrorE4,
    refErrorE40: BaseRedPalette.light().scheme.refErrorE40,
    refErrorE50: BaseRedPalette.light().scheme.refErrorE50,
    refErrorE6: BaseRedPalette.light().scheme.refErrorE6,
    refErrorE60: BaseRedPalette.light().scheme.refErrorE60,
    refErrorE70: BaseRedPalette.light().scheme.refErrorE70,
    refErrorE8: BaseRedPalette.light().scheme.refErrorE8,
    refErrorE80: BaseRedPalette.light().scheme.refErrorE80,
    refErrorE85: BaseRedPalette.light().scheme.refErrorE85,
    refErrorE90: BaseRedPalette.light().scheme.refErrorE90,
    refErrorE93: BaseRedPalette.light().scheme.refErrorE93,
    refErrorE95: BaseRedPalette.light().scheme.refErrorE95,
    refErrorE98: BaseRedPalette.light().scheme.refErrorE98,
    refErrorE99: BaseRedPalette.light().scheme.refErrorE99,
    refNeutralN0: BaseRedPalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseRedPalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseRedPalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseRedPalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseRedPalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseRedPalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseRedPalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseRedPalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseRedPalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseRedPalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseRedPalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseRedPalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseRedPalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseRedPalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseRedPalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseRedPalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseRedPalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseRedPalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseRedPalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseRedPalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseRedPalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseRedPalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseRedPalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseRedPalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseRedPalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseRedPalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseRedPalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseRedPalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseRedPalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseRedPalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseRedPalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseRedPalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseRedPalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseRedPalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseRedPalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseRedPalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseRedPalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseRedPalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseRedPalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseRedPalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseRedPalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseRedPalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseRedPalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseRedPalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseRedPalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseRedPalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseRedPalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseRedPalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseRedPalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseRedPalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseRedPalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseRedPalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseRedPalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseRedPalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseRedPalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseRedPalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseRedPalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseRedPalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseRedPalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseRedPalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseRedPalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseRedPalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseRedPalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseRedPalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseRedPalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseRedPalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseRedPalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseRedPalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseRedPalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseRedPalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseRedPalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseRedPalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseRedPalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseRedPalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseRedPalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseRedPalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseRedPalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseRedPalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseRedPalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseRedPalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseRedPalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseRedPalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseRedPalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseRedPalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseRedPalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseRedPalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseRedPalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseRedPalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseRedPalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseRedPalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseRedPalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseRedPalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseRedPalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseRedPalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseRedPalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseRedPalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseRedPalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseRedPalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseRedPalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseRedPalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseRedPalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseRedPalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseRedPalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseRedPalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseRedPalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseRedPalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseRedPalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseRedPalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseRedPalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseRedPalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseRedPalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseRedPalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseRedPalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseRedPalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseRedPalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseRedPalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseRedPalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseRedPalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseRedPalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseRedPalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseRedPalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseRedPalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseRedPalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseRedPalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseRedPalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseRedPalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseRedPalette.light().scheme.refWarnW0,
    refWarnW10: BaseRedPalette.light().scheme.refWarnW10,
    refWarnW100: BaseRedPalette.light().scheme.refWarnW100,
    refWarnW15: BaseRedPalette.light().scheme.refWarnW15,
    refWarnW2: BaseRedPalette.light().scheme.refWarnW2,
    refWarnW20: BaseRedPalette.light().scheme.refWarnW20,
    refWarnW30: BaseRedPalette.light().scheme.refWarnW30,
    refWarnW4: BaseRedPalette.light().scheme.refWarnW4,
    refWarnW40: BaseRedPalette.light().scheme.refWarnW40,
    refWarnW50: BaseRedPalette.light().scheme.refWarnW50,
    refWarnW6: BaseRedPalette.light().scheme.refWarnW6,
    refWarnW60: BaseRedPalette.light().scheme.refWarnW60,
    refWarnW70: BaseRedPalette.light().scheme.refWarnW70,
    refWarnW8: BaseRedPalette.light().scheme.refWarnW8,
    refWarnW80: BaseRedPalette.light().scheme.refWarnW80,
    refWarnW85: BaseRedPalette.light().scheme.refWarnW85,
    refWarnW90: BaseRedPalette.light().scheme.refWarnW90,
    refWarnW93: BaseRedPalette.light().scheme.refWarnW93,
    refWarnW95: BaseRedPalette.light().scheme.refWarnW95,
    refWarnW98: BaseRedPalette.light().scheme.refWarnW98,
    refWarnW99: BaseRedPalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseRedPalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseRedPalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseRedPalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseRedPalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseRedPalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseRedPalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseRedPalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseRedPalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseRedPalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseRedPalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseRedPalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseRedPalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseRedPalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseRedPalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseRedPalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseRedPalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseRedPalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseRedPalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseRedPalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseRedPalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseRedPalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseRedPalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseRedPalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseRedPalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseRedPalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseRedPalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseRedPalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseRedPalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseRedPalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseRedPalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseRedPalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseRedPalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseRedPalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseRedPalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseRedPalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseRedPalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseRedPalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseRedPalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseRedPalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseRedPalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseRedPalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseRedPalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseRedPalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseRedPalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseRedPalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseRedPalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseRedPalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseRedPalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseRedPalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseRedPalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseRedPalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseRedPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseRedPalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseRedPalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseRedPalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseRedPalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseRedPalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseRedPalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseRedPalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseRedPalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseRedPalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseRedPalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseRedPalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseRedPalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseRedPalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseRedPalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseRedPalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseRedPalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseRedPalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseRedPalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseRedPalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseRedPalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseRedPalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseRedPalette.light().scheme.sysError,
    sysErrorContainer: BaseRedPalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseRedPalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseRedPalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseRedPalette.light().scheme.sysInverseSurface,
    sysOnError: BaseRedPalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseRedPalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseRedPalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseRedPalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseRedPalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseRedPalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseRedPalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseRedPalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseRedPalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseRedPalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseRedPalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseRedPalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseRedPalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseRedPalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseRedPalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseRedPalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseRedPalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseRedPalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseRedPalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseRedPalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseRedPalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseRedPalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseRedPalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseRedPalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseRedPalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseRedPalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseRedPalette.light().scheme.sysScrim,
    sysSecondary: BaseRedPalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseRedPalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseRedPalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseRedPalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseRedPalette.light().scheme.sysShadow,
    sysSuccess: BaseRedPalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseRedPalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseRedPalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseRedPalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseRedPalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseRedPalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseRedPalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseRedPalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseRedPalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseRedPalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseRedPalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseRedPalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseRedPalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseRedPalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseRedPalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseRedPalette.light().scheme.sysWarn,
    sysWarnContainer: BaseRedPalette.light().scheme.sysWarnContainer,
    aqua: BaseRedPalette.light().scheme.aqua,
    black: BaseRedPalette.light().scheme.black,
    blue: BaseRedPalette.light().scheme.blue,
    cyan: BaseRedPalette.light().scheme.cyan,
    grape: BaseRedPalette.light().scheme.grape,
    green: BaseRedPalette.light().scheme.green,
    lime: BaseRedPalette.light().scheme.lime,
    magenta: BaseRedPalette.light().scheme.magenta,
    orange: BaseRedPalette.light().scheme.orange,
    pink: BaseRedPalette.light().scheme.pink,
    purple: BaseRedPalette.light().scheme.purple,
    red: BaseRedPalette.light().scheme.red,
    white: BaseRedPalette.light().scheme.white,
    yellow: BaseRedPalette.light().scheme.yellow,
    onRed: BaseRedPalette.light().scheme.onRed,
    onOrange: BaseRedPalette.light().scheme.onOrange,
    onYellow: BaseRedPalette.light().scheme.onYellow,
    onLime: BaseRedPalette.light().scheme.onLime,
    onGreen: BaseRedPalette.light().scheme.onGreen,
    onAqua: BaseRedPalette.light().scheme.onAqua,
    onCyan: BaseRedPalette.light().scheme.onCyan,
    onBlue: BaseRedPalette.light().scheme.onBlue,
    onPurple: BaseRedPalette.light().scheme.onPurple,
    onGrape: BaseRedPalette.light().scheme.onGrape,
    onPink: BaseRedPalette.light().scheme.onPink,
    onMagenta: BaseRedPalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseRedPalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseRedPalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseRedPalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseRedPalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseRedPalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseRedPalette.dark().scheme.refErrorE0,
    refErrorE10: BaseRedPalette.dark().scheme.refErrorE10,
    refErrorE100: BaseRedPalette.dark().scheme.refErrorE100,
    refErrorE15: BaseRedPalette.dark().scheme.refErrorE15,
    refErrorE2: BaseRedPalette.dark().scheme.refErrorE2,
    refErrorE20: BaseRedPalette.dark().scheme.refErrorE20,
    refErrorE30: BaseRedPalette.dark().scheme.refErrorE30,
    refErrorE4: BaseRedPalette.dark().scheme.refErrorE4,
    refErrorE40: BaseRedPalette.dark().scheme.refErrorE40,
    refErrorE50: BaseRedPalette.dark().scheme.refErrorE50,
    refErrorE6: BaseRedPalette.dark().scheme.refErrorE6,
    refErrorE60: BaseRedPalette.dark().scheme.refErrorE60,
    refErrorE70: BaseRedPalette.dark().scheme.refErrorE70,
    refErrorE8: BaseRedPalette.dark().scheme.refErrorE8,
    refErrorE80: BaseRedPalette.dark().scheme.refErrorE80,
    refErrorE85: BaseRedPalette.dark().scheme.refErrorE85,
    refErrorE90: BaseRedPalette.dark().scheme.refErrorE90,
    refErrorE93: BaseRedPalette.dark().scheme.refErrorE93,
    refErrorE95: BaseRedPalette.dark().scheme.refErrorE95,
    refErrorE98: BaseRedPalette.dark().scheme.refErrorE98,
    refErrorE99: BaseRedPalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseRedPalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseRedPalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseRedPalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseRedPalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseRedPalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseRedPalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseRedPalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseRedPalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseRedPalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseRedPalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseRedPalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseRedPalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseRedPalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseRedPalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseRedPalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseRedPalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseRedPalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseRedPalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseRedPalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseRedPalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseRedPalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseRedPalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseRedPalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseRedPalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseRedPalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseRedPalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseRedPalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseRedPalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseRedPalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseRedPalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseRedPalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseRedPalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseRedPalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseRedPalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseRedPalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseRedPalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseRedPalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseRedPalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseRedPalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseRedPalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseRedPalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseRedPalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseRedPalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseRedPalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseRedPalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseRedPalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseRedPalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseRedPalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseRedPalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseRedPalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseRedPalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseRedPalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseRedPalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseRedPalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseRedPalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseRedPalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseRedPalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseRedPalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseRedPalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseRedPalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseRedPalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseRedPalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseRedPalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseRedPalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseRedPalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseRedPalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseRedPalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseRedPalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseRedPalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseRedPalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseRedPalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseRedPalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseRedPalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseRedPalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseRedPalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseRedPalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseRedPalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseRedPalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseRedPalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseRedPalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseRedPalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseRedPalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseRedPalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseRedPalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseRedPalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseRedPalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseRedPalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseRedPalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseRedPalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseRedPalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseRedPalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseRedPalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseRedPalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseRedPalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseRedPalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseRedPalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseRedPalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseRedPalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseRedPalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseRedPalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseRedPalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseRedPalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseRedPalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseRedPalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseRedPalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseRedPalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseRedPalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseRedPalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseRedPalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseRedPalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseRedPalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseRedPalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseRedPalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseRedPalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseRedPalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseRedPalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseRedPalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseRedPalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseRedPalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseRedPalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseRedPalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseRedPalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseRedPalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseRedPalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseRedPalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseRedPalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseRedPalette.dark().scheme.refWarnW0,
    refWarnW10: BaseRedPalette.dark().scheme.refWarnW10,
    refWarnW100: BaseRedPalette.dark().scheme.refWarnW100,
    refWarnW15: BaseRedPalette.dark().scheme.refWarnW15,
    refWarnW2: BaseRedPalette.dark().scheme.refWarnW2,
    refWarnW20: BaseRedPalette.dark().scheme.refWarnW20,
    refWarnW30: BaseRedPalette.dark().scheme.refWarnW30,
    refWarnW4: BaseRedPalette.dark().scheme.refWarnW4,
    refWarnW40: BaseRedPalette.dark().scheme.refWarnW40,
    refWarnW50: BaseRedPalette.dark().scheme.refWarnW50,
    refWarnW6: BaseRedPalette.dark().scheme.refWarnW6,
    refWarnW60: BaseRedPalette.dark().scheme.refWarnW60,
    refWarnW70: BaseRedPalette.dark().scheme.refWarnW70,
    refWarnW8: BaseRedPalette.dark().scheme.refWarnW8,
    refWarnW80: BaseRedPalette.dark().scheme.refWarnW80,
    refWarnW85: BaseRedPalette.dark().scheme.refWarnW85,
    refWarnW90: BaseRedPalette.dark().scheme.refWarnW90,
    refWarnW93: BaseRedPalette.dark().scheme.refWarnW93,
    refWarnW95: BaseRedPalette.dark().scheme.refWarnW95,
    refWarnW98: BaseRedPalette.dark().scheme.refWarnW98,
    refWarnW99: BaseRedPalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseRedPalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseRedPalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseRedPalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseRedPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseRedPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseRedPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseRedPalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseRedPalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseRedPalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseRedPalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseRedPalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseRedPalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseRedPalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseRedPalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseRedPalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseRedPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseRedPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseRedPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseRedPalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseRedPalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseRedPalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseRedPalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseRedPalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseRedPalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseRedPalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseRedPalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseRedPalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseRedPalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseRedPalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseRedPalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseRedPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseRedPalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseRedPalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseRedPalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseRedPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseRedPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseRedPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseRedPalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseRedPalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseRedPalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseRedPalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseRedPalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseRedPalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseRedPalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseRedPalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseRedPalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseRedPalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseRedPalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseRedPalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseRedPalette.dark().scheme.sysError,
    sysErrorContainer: BaseRedPalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseRedPalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseRedPalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseRedPalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseRedPalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseRedPalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseRedPalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseRedPalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseRedPalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseRedPalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseRedPalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseRedPalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseRedPalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseRedPalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseRedPalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseRedPalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseRedPalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseRedPalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseRedPalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseRedPalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseRedPalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseRedPalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseRedPalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseRedPalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseRedPalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseRedPalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseRedPalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseRedPalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseRedPalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseRedPalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseRedPalette.dark().scheme.sysScrim,
    sysSecondary: BaseRedPalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseRedPalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseRedPalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseRedPalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseRedPalette.dark().scheme.sysShadow,
    sysSuccess: BaseRedPalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseRedPalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseRedPalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseRedPalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseRedPalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseRedPalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseRedPalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseRedPalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseRedPalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseRedPalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseRedPalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseRedPalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseRedPalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseRedPalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseRedPalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseRedPalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseRedPalette.dark().scheme.sysWarnContainer,
    aqua: BaseRedPalette.dark().scheme.aqua,
    black: BaseRedPalette.dark().scheme.black,
    blue: BaseRedPalette.dark().scheme.blue,
    cyan: BaseRedPalette.dark().scheme.cyan,
    grape: BaseRedPalette.dark().scheme.grape,
    green: BaseRedPalette.dark().scheme.green,
    lime: BaseRedPalette.dark().scheme.lime,
    magenta: BaseRedPalette.dark().scheme.magenta,
    orange: BaseRedPalette.dark().scheme.orange,
    pink: BaseRedPalette.dark().scheme.pink,
    purple: BaseRedPalette.dark().scheme.purple,
    red: BaseRedPalette.dark().scheme.red,
    white: BaseRedPalette.dark().scheme.white,
    yellow: BaseRedPalette.dark().scheme.yellow,
    onRed: BaseRedPalette.dark().scheme.onRed,
    onOrange: BaseRedPalette.dark().scheme.onOrange,
    onYellow: BaseRedPalette.dark().scheme.onYellow,
    onLime: BaseRedPalette.dark().scheme.onLime,
    onGreen: BaseRedPalette.dark().scheme.onGreen,
    onAqua: BaseRedPalette.dark().scheme.onAqua,
    onCyan: BaseRedPalette.dark().scheme.onCyan,
    onBlue: BaseRedPalette.dark().scheme.onBlue,
    onPurple: BaseRedPalette.dark().scheme.onPurple,
    onGrape: BaseRedPalette.dark().scheme.onGrape,
    onPink: BaseRedPalette.dark().scheme.onPink,
    onMagenta: BaseRedPalette.dark().scheme.onMagenta,
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
