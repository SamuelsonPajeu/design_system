import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_green_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseGreenAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseGreenPalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseGreenPalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseGreenPalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseGreenPalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseGreenPalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseGreenPalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseGreenPalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseGreenPalette.light().scheme.refErrorE0,
    refErrorE10: BaseGreenPalette.light().scheme.refErrorE10,
    refErrorE100: BaseGreenPalette.light().scheme.refErrorE100,
    refErrorE15: BaseGreenPalette.light().scheme.refErrorE15,
    refErrorE2: BaseGreenPalette.light().scheme.refErrorE2,
    refErrorE20: BaseGreenPalette.light().scheme.refErrorE20,
    refErrorE30: BaseGreenPalette.light().scheme.refErrorE30,
    refErrorE4: BaseGreenPalette.light().scheme.refErrorE4,
    refErrorE40: BaseGreenPalette.light().scheme.refErrorE40,
    refErrorE50: BaseGreenPalette.light().scheme.refErrorE50,
    refErrorE6: BaseGreenPalette.light().scheme.refErrorE6,
    refErrorE60: BaseGreenPalette.light().scheme.refErrorE60,
    refErrorE70: BaseGreenPalette.light().scheme.refErrorE70,
    refErrorE8: BaseGreenPalette.light().scheme.refErrorE8,
    refErrorE80: BaseGreenPalette.light().scheme.refErrorE80,
    refErrorE85: BaseGreenPalette.light().scheme.refErrorE85,
    refErrorE90: BaseGreenPalette.light().scheme.refErrorE90,
    refErrorE93: BaseGreenPalette.light().scheme.refErrorE93,
    refErrorE95: BaseGreenPalette.light().scheme.refErrorE95,
    refErrorE98: BaseGreenPalette.light().scheme.refErrorE98,
    refErrorE99: BaseGreenPalette.light().scheme.refErrorE99,
    refNeutralN0: BaseGreenPalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseGreenPalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseGreenPalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseGreenPalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseGreenPalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseGreenPalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseGreenPalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseGreenPalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseGreenPalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseGreenPalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseGreenPalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseGreenPalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseGreenPalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseGreenPalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseGreenPalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseGreenPalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseGreenPalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseGreenPalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseGreenPalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseGreenPalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseGreenPalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseGreenPalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseGreenPalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseGreenPalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseGreenPalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseGreenPalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseGreenPalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseGreenPalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseGreenPalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseGreenPalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseGreenPalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseGreenPalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseGreenPalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseGreenPalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseGreenPalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseGreenPalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseGreenPalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseGreenPalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseGreenPalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseGreenPalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseGreenPalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseGreenPalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseGreenPalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseGreenPalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseGreenPalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseGreenPalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseGreenPalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseGreenPalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseGreenPalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseGreenPalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseGreenPalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseGreenPalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseGreenPalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseGreenPalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseGreenPalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseGreenPalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseGreenPalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseGreenPalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseGreenPalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseGreenPalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseGreenPalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseGreenPalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseGreenPalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseGreenPalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseGreenPalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseGreenPalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseGreenPalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseGreenPalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseGreenPalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseGreenPalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseGreenPalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseGreenPalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseGreenPalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseGreenPalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseGreenPalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseGreenPalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseGreenPalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseGreenPalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseGreenPalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseGreenPalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseGreenPalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseGreenPalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseGreenPalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseGreenPalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseGreenPalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseGreenPalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseGreenPalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseGreenPalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseGreenPalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseGreenPalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseGreenPalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseGreenPalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseGreenPalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseGreenPalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseGreenPalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseGreenPalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseGreenPalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseGreenPalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseGreenPalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseGreenPalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseGreenPalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseGreenPalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseGreenPalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseGreenPalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseGreenPalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseGreenPalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseGreenPalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseGreenPalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseGreenPalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseGreenPalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseGreenPalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseGreenPalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseGreenPalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseGreenPalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseGreenPalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseGreenPalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseGreenPalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseGreenPalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseGreenPalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseGreenPalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseGreenPalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseGreenPalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseGreenPalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseGreenPalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseGreenPalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseGreenPalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseGreenPalette.light().scheme.refWarnW0,
    refWarnW10: BaseGreenPalette.light().scheme.refWarnW10,
    refWarnW100: BaseGreenPalette.light().scheme.refWarnW100,
    refWarnW15: BaseGreenPalette.light().scheme.refWarnW15,
    refWarnW2: BaseGreenPalette.light().scheme.refWarnW2,
    refWarnW20: BaseGreenPalette.light().scheme.refWarnW20,
    refWarnW30: BaseGreenPalette.light().scheme.refWarnW30,
    refWarnW4: BaseGreenPalette.light().scheme.refWarnW4,
    refWarnW40: BaseGreenPalette.light().scheme.refWarnW40,
    refWarnW50: BaseGreenPalette.light().scheme.refWarnW50,
    refWarnW6: BaseGreenPalette.light().scheme.refWarnW6,
    refWarnW60: BaseGreenPalette.light().scheme.refWarnW60,
    refWarnW70: BaseGreenPalette.light().scheme.refWarnW70,
    refWarnW8: BaseGreenPalette.light().scheme.refWarnW8,
    refWarnW80: BaseGreenPalette.light().scheme.refWarnW80,
    refWarnW85: BaseGreenPalette.light().scheme.refWarnW85,
    refWarnW90: BaseGreenPalette.light().scheme.refWarnW90,
    refWarnW93: BaseGreenPalette.light().scheme.refWarnW93,
    refWarnW95: BaseGreenPalette.light().scheme.refWarnW95,
    refWarnW98: BaseGreenPalette.light().scheme.refWarnW98,
    refWarnW99: BaseGreenPalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseGreenPalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseGreenPalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseGreenPalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseGreenPalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseGreenPalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseGreenPalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseGreenPalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseGreenPalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseGreenPalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseGreenPalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseGreenPalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseGreenPalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseGreenPalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseGreenPalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseGreenPalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseGreenPalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseGreenPalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseGreenPalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseGreenPalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseGreenPalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseGreenPalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseGreenPalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseGreenPalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseGreenPalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseGreenPalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseGreenPalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseGreenPalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseGreenPalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseGreenPalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseGreenPalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseGreenPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseGreenPalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseGreenPalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseGreenPalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseGreenPalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseGreenPalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseGreenPalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseGreenPalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseGreenPalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseGreenPalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseGreenPalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseGreenPalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseGreenPalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseGreenPalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseGreenPalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseGreenPalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseGreenPalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseGreenPalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseGreenPalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseGreenPalette.light().scheme.sysError,
    sysErrorContainer: BaseGreenPalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseGreenPalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseGreenPalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseGreenPalette.light().scheme.sysInverseSurface,
    sysOnError: BaseGreenPalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseGreenPalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseGreenPalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseGreenPalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseGreenPalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseGreenPalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseGreenPalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseGreenPalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseGreenPalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseGreenPalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseGreenPalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseGreenPalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseGreenPalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseGreenPalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseGreenPalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseGreenPalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseGreenPalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseGreenPalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseGreenPalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseGreenPalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseGreenPalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseGreenPalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseGreenPalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseGreenPalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseGreenPalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseGreenPalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseGreenPalette.light().scheme.sysScrim,
    sysSecondary: BaseGreenPalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseGreenPalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseGreenPalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseGreenPalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseGreenPalette.light().scheme.sysShadow,
    sysSuccess: BaseGreenPalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseGreenPalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseGreenPalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseGreenPalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseGreenPalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseGreenPalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseGreenPalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseGreenPalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseGreenPalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseGreenPalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseGreenPalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseGreenPalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseGreenPalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseGreenPalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseGreenPalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseGreenPalette.light().scheme.sysWarn,
    sysWarnContainer: BaseGreenPalette.light().scheme.sysWarnContainer,
    aqua: BaseGreenPalette.light().scheme.aqua,
    black: BaseGreenPalette.light().scheme.black,
    blue: BaseGreenPalette.light().scheme.blue,
    cyan: BaseGreenPalette.light().scheme.cyan,
    grape: BaseGreenPalette.light().scheme.grape,
    green: BaseGreenPalette.light().scheme.green,
    lime: BaseGreenPalette.light().scheme.lime,
    magenta: BaseGreenPalette.light().scheme.magenta,
    orange: BaseGreenPalette.light().scheme.orange,
    pink: BaseGreenPalette.light().scheme.pink,
    purple: BaseGreenPalette.light().scheme.purple,
    red: BaseGreenPalette.light().scheme.red,
    white: BaseGreenPalette.light().scheme.white,
    yellow: BaseGreenPalette.light().scheme.yellow,
    onRed: BaseGreenPalette.light().scheme.onRed,
    onOrange: BaseGreenPalette.light().scheme.onOrange,
    onYellow: BaseGreenPalette.light().scheme.onYellow,
    onLime: BaseGreenPalette.light().scheme.onLime,
    onGreen: BaseGreenPalette.light().scheme.onGreen,
    onAqua: BaseGreenPalette.light().scheme.onAqua,
    onCyan: BaseGreenPalette.light().scheme.onCyan,
    onBlue: BaseGreenPalette.light().scheme.onBlue,
    onPurple: BaseGreenPalette.light().scheme.onPurple,
    onGrape: BaseGreenPalette.light().scheme.onGrape,
    onPink: BaseGreenPalette.light().scheme.onPink,
    onMagenta: BaseGreenPalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseGreenPalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseGreenPalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseGreenPalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseGreenPalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseGreenPalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseGreenPalette.dark().scheme.refErrorE0,
    refErrorE10: BaseGreenPalette.dark().scheme.refErrorE10,
    refErrorE100: BaseGreenPalette.dark().scheme.refErrorE100,
    refErrorE15: BaseGreenPalette.dark().scheme.refErrorE15,
    refErrorE2: BaseGreenPalette.dark().scheme.refErrorE2,
    refErrorE20: BaseGreenPalette.dark().scheme.refErrorE20,
    refErrorE30: BaseGreenPalette.dark().scheme.refErrorE30,
    refErrorE4: BaseGreenPalette.dark().scheme.refErrorE4,
    refErrorE40: BaseGreenPalette.dark().scheme.refErrorE40,
    refErrorE50: BaseGreenPalette.dark().scheme.refErrorE50,
    refErrorE6: BaseGreenPalette.dark().scheme.refErrorE6,
    refErrorE60: BaseGreenPalette.dark().scheme.refErrorE60,
    refErrorE70: BaseGreenPalette.dark().scheme.refErrorE70,
    refErrorE8: BaseGreenPalette.dark().scheme.refErrorE8,
    refErrorE80: BaseGreenPalette.dark().scheme.refErrorE80,
    refErrorE85: BaseGreenPalette.dark().scheme.refErrorE85,
    refErrorE90: BaseGreenPalette.dark().scheme.refErrorE90,
    refErrorE93: BaseGreenPalette.dark().scheme.refErrorE93,
    refErrorE95: BaseGreenPalette.dark().scheme.refErrorE95,
    refErrorE98: BaseGreenPalette.dark().scheme.refErrorE98,
    refErrorE99: BaseGreenPalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseGreenPalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseGreenPalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseGreenPalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseGreenPalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseGreenPalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseGreenPalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseGreenPalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseGreenPalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseGreenPalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseGreenPalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseGreenPalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseGreenPalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseGreenPalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseGreenPalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseGreenPalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseGreenPalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseGreenPalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseGreenPalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseGreenPalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseGreenPalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseGreenPalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseGreenPalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseGreenPalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseGreenPalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseGreenPalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseGreenPalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseGreenPalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseGreenPalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseGreenPalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseGreenPalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseGreenPalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseGreenPalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseGreenPalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseGreenPalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseGreenPalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseGreenPalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseGreenPalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseGreenPalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseGreenPalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseGreenPalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseGreenPalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseGreenPalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseGreenPalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseGreenPalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseGreenPalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseGreenPalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseGreenPalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseGreenPalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseGreenPalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseGreenPalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseGreenPalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseGreenPalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseGreenPalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseGreenPalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseGreenPalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseGreenPalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseGreenPalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseGreenPalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseGreenPalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseGreenPalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseGreenPalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseGreenPalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseGreenPalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseGreenPalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseGreenPalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseGreenPalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseGreenPalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseGreenPalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseGreenPalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseGreenPalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseGreenPalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseGreenPalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseGreenPalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseGreenPalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseGreenPalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseGreenPalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseGreenPalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseGreenPalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseGreenPalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseGreenPalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseGreenPalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseGreenPalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseGreenPalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseGreenPalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseGreenPalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseGreenPalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseGreenPalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseGreenPalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseGreenPalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseGreenPalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseGreenPalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseGreenPalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseGreenPalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseGreenPalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseGreenPalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseGreenPalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseGreenPalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseGreenPalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseGreenPalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseGreenPalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseGreenPalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseGreenPalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseGreenPalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseGreenPalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseGreenPalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseGreenPalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseGreenPalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseGreenPalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseGreenPalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseGreenPalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseGreenPalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseGreenPalette.dark().scheme.refWarnW0,
    refWarnW10: BaseGreenPalette.dark().scheme.refWarnW10,
    refWarnW100: BaseGreenPalette.dark().scheme.refWarnW100,
    refWarnW15: BaseGreenPalette.dark().scheme.refWarnW15,
    refWarnW2: BaseGreenPalette.dark().scheme.refWarnW2,
    refWarnW20: BaseGreenPalette.dark().scheme.refWarnW20,
    refWarnW30: BaseGreenPalette.dark().scheme.refWarnW30,
    refWarnW4: BaseGreenPalette.dark().scheme.refWarnW4,
    refWarnW40: BaseGreenPalette.dark().scheme.refWarnW40,
    refWarnW50: BaseGreenPalette.dark().scheme.refWarnW50,
    refWarnW6: BaseGreenPalette.dark().scheme.refWarnW6,
    refWarnW60: BaseGreenPalette.dark().scheme.refWarnW60,
    refWarnW70: BaseGreenPalette.dark().scheme.refWarnW70,
    refWarnW8: BaseGreenPalette.dark().scheme.refWarnW8,
    refWarnW80: BaseGreenPalette.dark().scheme.refWarnW80,
    refWarnW85: BaseGreenPalette.dark().scheme.refWarnW85,
    refWarnW90: BaseGreenPalette.dark().scheme.refWarnW90,
    refWarnW93: BaseGreenPalette.dark().scheme.refWarnW93,
    refWarnW95: BaseGreenPalette.dark().scheme.refWarnW95,
    refWarnW98: BaseGreenPalette.dark().scheme.refWarnW98,
    refWarnW99: BaseGreenPalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseGreenPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseGreenPalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseGreenPalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseGreenPalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseGreenPalette.dark().scheme.sysError,
    sysErrorContainer: BaseGreenPalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseGreenPalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseGreenPalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseGreenPalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseGreenPalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseGreenPalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseGreenPalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseGreenPalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseGreenPalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseGreenPalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseGreenPalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseGreenPalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseGreenPalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseGreenPalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseGreenPalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseGreenPalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseGreenPalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseGreenPalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseGreenPalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseGreenPalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseGreenPalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseGreenPalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseGreenPalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseGreenPalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseGreenPalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseGreenPalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseGreenPalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseGreenPalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseGreenPalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseGreenPalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseGreenPalette.dark().scheme.sysScrim,
    sysSecondary: BaseGreenPalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseGreenPalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseGreenPalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseGreenPalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseGreenPalette.dark().scheme.sysShadow,
    sysSuccess: BaseGreenPalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseGreenPalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseGreenPalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseGreenPalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseGreenPalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseGreenPalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseGreenPalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseGreenPalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseGreenPalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseGreenPalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseGreenPalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseGreenPalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseGreenPalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseGreenPalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseGreenPalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseGreenPalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseGreenPalette.dark().scheme.sysWarnContainer,
    aqua: BaseGreenPalette.dark().scheme.aqua,
    black: BaseGreenPalette.dark().scheme.black,
    blue: BaseGreenPalette.dark().scheme.blue,
    cyan: BaseGreenPalette.dark().scheme.cyan,
    grape: BaseGreenPalette.dark().scheme.grape,
    green: BaseGreenPalette.dark().scheme.green,
    lime: BaseGreenPalette.dark().scheme.lime,
    magenta: BaseGreenPalette.dark().scheme.magenta,
    orange: BaseGreenPalette.dark().scheme.orange,
    pink: BaseGreenPalette.dark().scheme.pink,
    purple: BaseGreenPalette.dark().scheme.purple,
    red: BaseGreenPalette.dark().scheme.red,
    white: BaseGreenPalette.dark().scheme.white,
    yellow: BaseGreenPalette.dark().scheme.yellow,
    onRed: BaseGreenPalette.dark().scheme.onRed,
    onOrange: BaseGreenPalette.dark().scheme.onOrange,
    onYellow: BaseGreenPalette.dark().scheme.onYellow,
    onLime: BaseGreenPalette.dark().scheme.onLime,
    onGreen: BaseGreenPalette.dark().scheme.onGreen,
    onAqua: BaseGreenPalette.dark().scheme.onAqua,
    onCyan: BaseGreenPalette.dark().scheme.onCyan,
    onBlue: BaseGreenPalette.dark().scheme.onBlue,
    onPurple: BaseGreenPalette.dark().scheme.onPurple,
    onGrape: BaseGreenPalette.dark().scheme.onGrape,
    onPink: BaseGreenPalette.dark().scheme.onPink,
    onMagenta: BaseGreenPalette.dark().scheme.onMagenta,
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
