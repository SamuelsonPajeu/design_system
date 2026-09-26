import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_orange_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseOrangeAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseOrangePalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseOrangePalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseOrangePalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseOrangePalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseOrangePalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseOrangePalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseOrangePalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseOrangePalette.light().scheme.refErrorE0,
    refErrorE10: BaseOrangePalette.light().scheme.refErrorE10,
    refErrorE100: BaseOrangePalette.light().scheme.refErrorE100,
    refErrorE15: BaseOrangePalette.light().scheme.refErrorE15,
    refErrorE2: BaseOrangePalette.light().scheme.refErrorE2,
    refErrorE20: BaseOrangePalette.light().scheme.refErrorE20,
    refErrorE30: BaseOrangePalette.light().scheme.refErrorE30,
    refErrorE4: BaseOrangePalette.light().scheme.refErrorE4,
    refErrorE40: BaseOrangePalette.light().scheme.refErrorE40,
    refErrorE50: BaseOrangePalette.light().scheme.refErrorE50,
    refErrorE6: BaseOrangePalette.light().scheme.refErrorE6,
    refErrorE60: BaseOrangePalette.light().scheme.refErrorE60,
    refErrorE70: BaseOrangePalette.light().scheme.refErrorE70,
    refErrorE8: BaseOrangePalette.light().scheme.refErrorE8,
    refErrorE80: BaseOrangePalette.light().scheme.refErrorE80,
    refErrorE85: BaseOrangePalette.light().scheme.refErrorE85,
    refErrorE90: BaseOrangePalette.light().scheme.refErrorE90,
    refErrorE93: BaseOrangePalette.light().scheme.refErrorE93,
    refErrorE95: BaseOrangePalette.light().scheme.refErrorE95,
    refErrorE98: BaseOrangePalette.light().scheme.refErrorE98,
    refErrorE99: BaseOrangePalette.light().scheme.refErrorE99,
    refNeutralN0: BaseOrangePalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseOrangePalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseOrangePalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseOrangePalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseOrangePalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseOrangePalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseOrangePalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseOrangePalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseOrangePalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseOrangePalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseOrangePalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseOrangePalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseOrangePalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseOrangePalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseOrangePalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseOrangePalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseOrangePalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseOrangePalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseOrangePalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseOrangePalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseOrangePalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseOrangePalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseOrangePalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseOrangePalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseOrangePalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseOrangePalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseOrangePalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseOrangePalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseOrangePalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseOrangePalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseOrangePalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseOrangePalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseOrangePalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseOrangePalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseOrangePalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseOrangePalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseOrangePalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseOrangePalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseOrangePalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseOrangePalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseOrangePalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseOrangePalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseOrangePalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseOrangePalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseOrangePalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseOrangePalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseOrangePalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseOrangePalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseOrangePalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseOrangePalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseOrangePalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseOrangePalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseOrangePalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseOrangePalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseOrangePalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseOrangePalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseOrangePalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseOrangePalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseOrangePalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseOrangePalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseOrangePalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseOrangePalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseOrangePalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseOrangePalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseOrangePalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseOrangePalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseOrangePalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseOrangePalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseOrangePalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseOrangePalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseOrangePalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseOrangePalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseOrangePalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseOrangePalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseOrangePalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseOrangePalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseOrangePalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseOrangePalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseOrangePalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseOrangePalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseOrangePalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseOrangePalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseOrangePalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseOrangePalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseOrangePalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseOrangePalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseOrangePalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseOrangePalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseOrangePalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseOrangePalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseOrangePalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseOrangePalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseOrangePalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseOrangePalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseOrangePalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseOrangePalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseOrangePalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseOrangePalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseOrangePalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseOrangePalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseOrangePalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseOrangePalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseOrangePalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseOrangePalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseOrangePalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseOrangePalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseOrangePalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseOrangePalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseOrangePalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseOrangePalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseOrangePalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseOrangePalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseOrangePalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseOrangePalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseOrangePalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseOrangePalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseOrangePalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseOrangePalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseOrangePalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseOrangePalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseOrangePalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseOrangePalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseOrangePalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseOrangePalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseOrangePalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseOrangePalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseOrangePalette.light().scheme.refWarnW0,
    refWarnW10: BaseOrangePalette.light().scheme.refWarnW10,
    refWarnW100: BaseOrangePalette.light().scheme.refWarnW100,
    refWarnW15: BaseOrangePalette.light().scheme.refWarnW15,
    refWarnW2: BaseOrangePalette.light().scheme.refWarnW2,
    refWarnW20: BaseOrangePalette.light().scheme.refWarnW20,
    refWarnW30: BaseOrangePalette.light().scheme.refWarnW30,
    refWarnW4: BaseOrangePalette.light().scheme.refWarnW4,
    refWarnW40: BaseOrangePalette.light().scheme.refWarnW40,
    refWarnW50: BaseOrangePalette.light().scheme.refWarnW50,
    refWarnW6: BaseOrangePalette.light().scheme.refWarnW6,
    refWarnW60: BaseOrangePalette.light().scheme.refWarnW60,
    refWarnW70: BaseOrangePalette.light().scheme.refWarnW70,
    refWarnW8: BaseOrangePalette.light().scheme.refWarnW8,
    refWarnW80: BaseOrangePalette.light().scheme.refWarnW80,
    refWarnW85: BaseOrangePalette.light().scheme.refWarnW85,
    refWarnW90: BaseOrangePalette.light().scheme.refWarnW90,
    refWarnW93: BaseOrangePalette.light().scheme.refWarnW93,
    refWarnW95: BaseOrangePalette.light().scheme.refWarnW95,
    refWarnW98: BaseOrangePalette.light().scheme.refWarnW98,
    refWarnW99: BaseOrangePalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseOrangePalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseOrangePalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseOrangePalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseOrangePalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseOrangePalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseOrangePalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseOrangePalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseOrangePalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseOrangePalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseOrangePalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseOrangePalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseOrangePalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseOrangePalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseOrangePalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseOrangePalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseOrangePalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseOrangePalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseOrangePalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseOrangePalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseOrangePalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseOrangePalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseOrangePalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseOrangePalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseOrangePalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseOrangePalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseOrangePalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseOrangePalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseOrangePalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseOrangePalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseOrangePalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseOrangePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseOrangePalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseOrangePalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseOrangePalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseOrangePalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseOrangePalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseOrangePalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseOrangePalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseOrangePalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseOrangePalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseOrangePalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseOrangePalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseOrangePalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseOrangePalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseOrangePalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseOrangePalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseOrangePalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseOrangePalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseOrangePalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseOrangePalette.light().scheme.sysError,
    sysErrorContainer: BaseOrangePalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseOrangePalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseOrangePalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseOrangePalette.light().scheme.sysInverseSurface,
    sysOnError: BaseOrangePalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseOrangePalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseOrangePalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseOrangePalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseOrangePalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseOrangePalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseOrangePalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseOrangePalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseOrangePalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseOrangePalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseOrangePalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseOrangePalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseOrangePalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseOrangePalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseOrangePalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseOrangePalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseOrangePalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseOrangePalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseOrangePalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseOrangePalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseOrangePalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseOrangePalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseOrangePalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseOrangePalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseOrangePalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseOrangePalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseOrangePalette.light().scheme.sysScrim,
    sysSecondary: BaseOrangePalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseOrangePalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseOrangePalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseOrangePalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseOrangePalette.light().scheme.sysShadow,
    sysSuccess: BaseOrangePalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseOrangePalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseOrangePalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseOrangePalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseOrangePalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseOrangePalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseOrangePalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseOrangePalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseOrangePalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseOrangePalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseOrangePalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseOrangePalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseOrangePalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseOrangePalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseOrangePalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseOrangePalette.light().scheme.sysWarn,
    sysWarnContainer: BaseOrangePalette.light().scheme.sysWarnContainer,
    aqua: BaseOrangePalette.light().scheme.aqua,
    black: BaseOrangePalette.light().scheme.black,
    blue: BaseOrangePalette.light().scheme.blue,
    cyan: BaseOrangePalette.light().scheme.cyan,
    grape: BaseOrangePalette.light().scheme.grape,
    green: BaseOrangePalette.light().scheme.green,
    lime: BaseOrangePalette.light().scheme.lime,
    magenta: BaseOrangePalette.light().scheme.magenta,
    orange: BaseOrangePalette.light().scheme.orange,
    pink: BaseOrangePalette.light().scheme.pink,
    purple: BaseOrangePalette.light().scheme.purple,
    red: BaseOrangePalette.light().scheme.red,
    white: BaseOrangePalette.light().scheme.white,
    yellow: BaseOrangePalette.light().scheme.yellow,
    onRed: BaseOrangePalette.light().scheme.onRed,
    onOrange: BaseOrangePalette.light().scheme.onOrange,
    onYellow: BaseOrangePalette.light().scheme.onYellow,
    onLime: BaseOrangePalette.light().scheme.onLime,
    onGreen: BaseOrangePalette.light().scheme.onGreen,
    onAqua: BaseOrangePalette.light().scheme.onAqua,
    onCyan: BaseOrangePalette.light().scheme.onCyan,
    onBlue: BaseOrangePalette.light().scheme.onBlue,
    onPurple: BaseOrangePalette.light().scheme.onPurple,
    onGrape: BaseOrangePalette.light().scheme.onGrape,
    onPink: BaseOrangePalette.light().scheme.onPink,
    onMagenta: BaseOrangePalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseOrangePalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseOrangePalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseOrangePalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseOrangePalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseOrangePalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseOrangePalette.dark().scheme.refErrorE0,
    refErrorE10: BaseOrangePalette.dark().scheme.refErrorE10,
    refErrorE100: BaseOrangePalette.dark().scheme.refErrorE100,
    refErrorE15: BaseOrangePalette.dark().scheme.refErrorE15,
    refErrorE2: BaseOrangePalette.dark().scheme.refErrorE2,
    refErrorE20: BaseOrangePalette.dark().scheme.refErrorE20,
    refErrorE30: BaseOrangePalette.dark().scheme.refErrorE30,
    refErrorE4: BaseOrangePalette.dark().scheme.refErrorE4,
    refErrorE40: BaseOrangePalette.dark().scheme.refErrorE40,
    refErrorE50: BaseOrangePalette.dark().scheme.refErrorE50,
    refErrorE6: BaseOrangePalette.dark().scheme.refErrorE6,
    refErrorE60: BaseOrangePalette.dark().scheme.refErrorE60,
    refErrorE70: BaseOrangePalette.dark().scheme.refErrorE70,
    refErrorE8: BaseOrangePalette.dark().scheme.refErrorE8,
    refErrorE80: BaseOrangePalette.dark().scheme.refErrorE80,
    refErrorE85: BaseOrangePalette.dark().scheme.refErrorE85,
    refErrorE90: BaseOrangePalette.dark().scheme.refErrorE90,
    refErrorE93: BaseOrangePalette.dark().scheme.refErrorE93,
    refErrorE95: BaseOrangePalette.dark().scheme.refErrorE95,
    refErrorE98: BaseOrangePalette.dark().scheme.refErrorE98,
    refErrorE99: BaseOrangePalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseOrangePalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseOrangePalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseOrangePalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseOrangePalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseOrangePalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseOrangePalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseOrangePalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseOrangePalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseOrangePalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseOrangePalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseOrangePalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseOrangePalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseOrangePalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseOrangePalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseOrangePalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseOrangePalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseOrangePalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseOrangePalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseOrangePalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseOrangePalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseOrangePalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseOrangePalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseOrangePalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseOrangePalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseOrangePalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseOrangePalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseOrangePalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseOrangePalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseOrangePalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseOrangePalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseOrangePalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseOrangePalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseOrangePalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseOrangePalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseOrangePalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseOrangePalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseOrangePalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseOrangePalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseOrangePalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseOrangePalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseOrangePalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseOrangePalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseOrangePalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseOrangePalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseOrangePalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseOrangePalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseOrangePalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseOrangePalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseOrangePalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseOrangePalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseOrangePalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseOrangePalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseOrangePalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseOrangePalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseOrangePalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseOrangePalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseOrangePalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseOrangePalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseOrangePalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseOrangePalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseOrangePalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseOrangePalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseOrangePalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseOrangePalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseOrangePalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseOrangePalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseOrangePalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseOrangePalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseOrangePalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseOrangePalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseOrangePalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseOrangePalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseOrangePalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseOrangePalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseOrangePalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseOrangePalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseOrangePalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseOrangePalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseOrangePalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseOrangePalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseOrangePalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseOrangePalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseOrangePalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseOrangePalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseOrangePalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseOrangePalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseOrangePalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseOrangePalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseOrangePalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseOrangePalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseOrangePalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseOrangePalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseOrangePalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseOrangePalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseOrangePalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseOrangePalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseOrangePalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseOrangePalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseOrangePalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseOrangePalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseOrangePalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseOrangePalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseOrangePalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseOrangePalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseOrangePalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseOrangePalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseOrangePalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseOrangePalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseOrangePalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseOrangePalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseOrangePalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseOrangePalette.dark().scheme.refWarnW0,
    refWarnW10: BaseOrangePalette.dark().scheme.refWarnW10,
    refWarnW100: BaseOrangePalette.dark().scheme.refWarnW100,
    refWarnW15: BaseOrangePalette.dark().scheme.refWarnW15,
    refWarnW2: BaseOrangePalette.dark().scheme.refWarnW2,
    refWarnW20: BaseOrangePalette.dark().scheme.refWarnW20,
    refWarnW30: BaseOrangePalette.dark().scheme.refWarnW30,
    refWarnW4: BaseOrangePalette.dark().scheme.refWarnW4,
    refWarnW40: BaseOrangePalette.dark().scheme.refWarnW40,
    refWarnW50: BaseOrangePalette.dark().scheme.refWarnW50,
    refWarnW6: BaseOrangePalette.dark().scheme.refWarnW6,
    refWarnW60: BaseOrangePalette.dark().scheme.refWarnW60,
    refWarnW70: BaseOrangePalette.dark().scheme.refWarnW70,
    refWarnW8: BaseOrangePalette.dark().scheme.refWarnW8,
    refWarnW80: BaseOrangePalette.dark().scheme.refWarnW80,
    refWarnW85: BaseOrangePalette.dark().scheme.refWarnW85,
    refWarnW90: BaseOrangePalette.dark().scheme.refWarnW90,
    refWarnW93: BaseOrangePalette.dark().scheme.refWarnW93,
    refWarnW95: BaseOrangePalette.dark().scheme.refWarnW95,
    refWarnW98: BaseOrangePalette.dark().scheme.refWarnW98,
    refWarnW99: BaseOrangePalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseOrangePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseOrangePalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseOrangePalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseOrangePalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseOrangePalette.dark().scheme.sysError,
    sysErrorContainer: BaseOrangePalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseOrangePalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseOrangePalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseOrangePalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseOrangePalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseOrangePalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseOrangePalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseOrangePalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseOrangePalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseOrangePalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseOrangePalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseOrangePalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseOrangePalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseOrangePalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseOrangePalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseOrangePalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseOrangePalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseOrangePalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseOrangePalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseOrangePalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseOrangePalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseOrangePalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseOrangePalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseOrangePalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseOrangePalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseOrangePalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseOrangePalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseOrangePalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseOrangePalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseOrangePalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseOrangePalette.dark().scheme.sysScrim,
    sysSecondary: BaseOrangePalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseOrangePalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseOrangePalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseOrangePalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseOrangePalette.dark().scheme.sysShadow,
    sysSuccess: BaseOrangePalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseOrangePalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseOrangePalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseOrangePalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseOrangePalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseOrangePalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseOrangePalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseOrangePalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseOrangePalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseOrangePalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseOrangePalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseOrangePalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseOrangePalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseOrangePalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseOrangePalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseOrangePalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseOrangePalette.dark().scheme.sysWarnContainer,
    aqua: BaseOrangePalette.dark().scheme.aqua,
    black: BaseOrangePalette.dark().scheme.black,
    blue: BaseOrangePalette.dark().scheme.blue,
    cyan: BaseOrangePalette.dark().scheme.cyan,
    grape: BaseOrangePalette.dark().scheme.grape,
    green: BaseOrangePalette.dark().scheme.green,
    lime: BaseOrangePalette.dark().scheme.lime,
    magenta: BaseOrangePalette.dark().scheme.magenta,
    orange: BaseOrangePalette.dark().scheme.orange,
    pink: BaseOrangePalette.dark().scheme.pink,
    purple: BaseOrangePalette.dark().scheme.purple,
    red: BaseOrangePalette.dark().scheme.red,
    white: BaseOrangePalette.dark().scheme.white,
    yellow: BaseOrangePalette.dark().scheme.yellow,
    onRed: BaseOrangePalette.dark().scheme.onRed,
    onOrange: BaseOrangePalette.dark().scheme.onOrange,
    onYellow: BaseOrangePalette.dark().scheme.onYellow,
    onLime: BaseOrangePalette.dark().scheme.onLime,
    onGreen: BaseOrangePalette.dark().scheme.onGreen,
    onAqua: BaseOrangePalette.dark().scheme.onAqua,
    onCyan: BaseOrangePalette.dark().scheme.onCyan,
    onBlue: BaseOrangePalette.dark().scheme.onBlue,
    onPurple: BaseOrangePalette.dark().scheme.onPurple,
    onGrape: BaseOrangePalette.dark().scheme.onGrape,
    onPink: BaseOrangePalette.dark().scheme.onPink,
    onMagenta: BaseOrangePalette.dark().scheme.onMagenta,
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
