import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_grape_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseGrapeAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseGrapePalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseGrapePalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseGrapePalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseGrapePalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseGrapePalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseGrapePalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseGrapePalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseGrapePalette.light().scheme.refErrorE0,
    refErrorE10: BaseGrapePalette.light().scheme.refErrorE10,
    refErrorE100: BaseGrapePalette.light().scheme.refErrorE100,
    refErrorE15: BaseGrapePalette.light().scheme.refErrorE15,
    refErrorE2: BaseGrapePalette.light().scheme.refErrorE2,
    refErrorE20: BaseGrapePalette.light().scheme.refErrorE20,
    refErrorE30: BaseGrapePalette.light().scheme.refErrorE30,
    refErrorE4: BaseGrapePalette.light().scheme.refErrorE4,
    refErrorE40: BaseGrapePalette.light().scheme.refErrorE40,
    refErrorE50: BaseGrapePalette.light().scheme.refErrorE50,
    refErrorE6: BaseGrapePalette.light().scheme.refErrorE6,
    refErrorE60: BaseGrapePalette.light().scheme.refErrorE60,
    refErrorE70: BaseGrapePalette.light().scheme.refErrorE70,
    refErrorE8: BaseGrapePalette.light().scheme.refErrorE8,
    refErrorE80: BaseGrapePalette.light().scheme.refErrorE80,
    refErrorE85: BaseGrapePalette.light().scheme.refErrorE85,
    refErrorE90: BaseGrapePalette.light().scheme.refErrorE90,
    refErrorE93: BaseGrapePalette.light().scheme.refErrorE93,
    refErrorE95: BaseGrapePalette.light().scheme.refErrorE95,
    refErrorE98: BaseGrapePalette.light().scheme.refErrorE98,
    refErrorE99: BaseGrapePalette.light().scheme.refErrorE99,
    refNeutralN0: BaseGrapePalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseGrapePalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseGrapePalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseGrapePalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseGrapePalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseGrapePalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseGrapePalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseGrapePalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseGrapePalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseGrapePalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseGrapePalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseGrapePalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseGrapePalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseGrapePalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseGrapePalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseGrapePalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseGrapePalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseGrapePalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseGrapePalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseGrapePalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseGrapePalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseGrapePalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseGrapePalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseGrapePalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseGrapePalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseGrapePalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseGrapePalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseGrapePalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseGrapePalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseGrapePalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseGrapePalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseGrapePalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseGrapePalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseGrapePalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseGrapePalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseGrapePalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseGrapePalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseGrapePalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseGrapePalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseGrapePalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseGrapePalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseGrapePalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseGrapePalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseGrapePalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseGrapePalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseGrapePalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseGrapePalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseGrapePalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseGrapePalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseGrapePalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseGrapePalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseGrapePalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseGrapePalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseGrapePalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseGrapePalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseGrapePalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseGrapePalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseGrapePalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseGrapePalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseGrapePalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseGrapePalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseGrapePalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseGrapePalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseGrapePalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseGrapePalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseGrapePalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseGrapePalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseGrapePalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseGrapePalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseGrapePalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseGrapePalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseGrapePalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseGrapePalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseGrapePalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseGrapePalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseGrapePalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseGrapePalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseGrapePalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseGrapePalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseGrapePalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseGrapePalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseGrapePalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseGrapePalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseGrapePalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseGrapePalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseGrapePalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseGrapePalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseGrapePalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseGrapePalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseGrapePalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseGrapePalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseGrapePalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseGrapePalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseGrapePalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseGrapePalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseGrapePalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseGrapePalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseGrapePalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseGrapePalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseGrapePalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseGrapePalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseGrapePalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseGrapePalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseGrapePalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseGrapePalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseGrapePalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseGrapePalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseGrapePalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseGrapePalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseGrapePalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseGrapePalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseGrapePalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseGrapePalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseGrapePalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseGrapePalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseGrapePalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseGrapePalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseGrapePalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseGrapePalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseGrapePalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseGrapePalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseGrapePalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseGrapePalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseGrapePalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseGrapePalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseGrapePalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseGrapePalette.light().scheme.refWarnW0,
    refWarnW10: BaseGrapePalette.light().scheme.refWarnW10,
    refWarnW100: BaseGrapePalette.light().scheme.refWarnW100,
    refWarnW15: BaseGrapePalette.light().scheme.refWarnW15,
    refWarnW2: BaseGrapePalette.light().scheme.refWarnW2,
    refWarnW20: BaseGrapePalette.light().scheme.refWarnW20,
    refWarnW30: BaseGrapePalette.light().scheme.refWarnW30,
    refWarnW4: BaseGrapePalette.light().scheme.refWarnW4,
    refWarnW40: BaseGrapePalette.light().scheme.refWarnW40,
    refWarnW50: BaseGrapePalette.light().scheme.refWarnW50,
    refWarnW6: BaseGrapePalette.light().scheme.refWarnW6,
    refWarnW60: BaseGrapePalette.light().scheme.refWarnW60,
    refWarnW70: BaseGrapePalette.light().scheme.refWarnW70,
    refWarnW8: BaseGrapePalette.light().scheme.refWarnW8,
    refWarnW80: BaseGrapePalette.light().scheme.refWarnW80,
    refWarnW85: BaseGrapePalette.light().scheme.refWarnW85,
    refWarnW90: BaseGrapePalette.light().scheme.refWarnW90,
    refWarnW93: BaseGrapePalette.light().scheme.refWarnW93,
    refWarnW95: BaseGrapePalette.light().scheme.refWarnW95,
    refWarnW98: BaseGrapePalette.light().scheme.refWarnW98,
    refWarnW99: BaseGrapePalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseGrapePalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseGrapePalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseGrapePalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseGrapePalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseGrapePalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseGrapePalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseGrapePalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseGrapePalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseGrapePalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseGrapePalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseGrapePalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseGrapePalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseGrapePalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseGrapePalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseGrapePalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseGrapePalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseGrapePalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseGrapePalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseGrapePalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseGrapePalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseGrapePalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseGrapePalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseGrapePalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseGrapePalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseGrapePalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseGrapePalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseGrapePalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseGrapePalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseGrapePalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseGrapePalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseGrapePalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseGrapePalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseGrapePalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseGrapePalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseGrapePalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseGrapePalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseGrapePalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseGrapePalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseGrapePalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseGrapePalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseGrapePalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseGrapePalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseGrapePalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseGrapePalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseGrapePalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseGrapePalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseGrapePalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseGrapePalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseGrapePalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseGrapePalette.light().scheme.sysError,
    sysErrorContainer: BaseGrapePalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseGrapePalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseGrapePalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseGrapePalette.light().scheme.sysInverseSurface,
    sysOnError: BaseGrapePalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseGrapePalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseGrapePalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseGrapePalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseGrapePalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseGrapePalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseGrapePalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseGrapePalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseGrapePalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseGrapePalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseGrapePalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseGrapePalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseGrapePalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseGrapePalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseGrapePalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseGrapePalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseGrapePalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseGrapePalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseGrapePalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseGrapePalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseGrapePalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseGrapePalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseGrapePalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseGrapePalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseGrapePalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseGrapePalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseGrapePalette.light().scheme.sysScrim,
    sysSecondary: BaseGrapePalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseGrapePalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseGrapePalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseGrapePalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseGrapePalette.light().scheme.sysShadow,
    sysSuccess: BaseGrapePalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseGrapePalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseGrapePalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseGrapePalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseGrapePalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseGrapePalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseGrapePalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseGrapePalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseGrapePalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseGrapePalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseGrapePalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseGrapePalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseGrapePalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseGrapePalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseGrapePalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseGrapePalette.light().scheme.sysWarn,
    sysWarnContainer: BaseGrapePalette.light().scheme.sysWarnContainer,
    aqua: BaseGrapePalette.light().scheme.aqua,
    black: BaseGrapePalette.light().scheme.black,
    blue: BaseGrapePalette.light().scheme.blue,
    cyan: BaseGrapePalette.light().scheme.cyan,
    grape: BaseGrapePalette.light().scheme.grape,
    green: BaseGrapePalette.light().scheme.green,
    lime: BaseGrapePalette.light().scheme.lime,
    magenta: BaseGrapePalette.light().scheme.magenta,
    orange: BaseGrapePalette.light().scheme.orange,
    pink: BaseGrapePalette.light().scheme.pink,
    purple: BaseGrapePalette.light().scheme.purple,
    red: BaseGrapePalette.light().scheme.red,
    white: BaseGrapePalette.light().scheme.white,
    yellow: BaseGrapePalette.light().scheme.yellow,
    onRed: BaseGrapePalette.light().scheme.onRed,
    onOrange: BaseGrapePalette.light().scheme.onOrange,
    onYellow: BaseGrapePalette.light().scheme.onYellow,
    onLime: BaseGrapePalette.light().scheme.onLime,
    onGreen: BaseGrapePalette.light().scheme.onGreen,
    onAqua: BaseGrapePalette.light().scheme.onAqua,
    onCyan: BaseGrapePalette.light().scheme.onCyan,
    onBlue: BaseGrapePalette.light().scheme.onBlue,
    onPurple: BaseGrapePalette.light().scheme.onPurple,
    onGrape: BaseGrapePalette.light().scheme.onGrape,
    onPink: BaseGrapePalette.light().scheme.onPink,
    onMagenta: BaseGrapePalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseGrapePalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseGrapePalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseGrapePalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseGrapePalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseGrapePalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseGrapePalette.dark().scheme.refErrorE0,
    refErrorE10: BaseGrapePalette.dark().scheme.refErrorE10,
    refErrorE100: BaseGrapePalette.dark().scheme.refErrorE100,
    refErrorE15: BaseGrapePalette.dark().scheme.refErrorE15,
    refErrorE2: BaseGrapePalette.dark().scheme.refErrorE2,
    refErrorE20: BaseGrapePalette.dark().scheme.refErrorE20,
    refErrorE30: BaseGrapePalette.dark().scheme.refErrorE30,
    refErrorE4: BaseGrapePalette.dark().scheme.refErrorE4,
    refErrorE40: BaseGrapePalette.dark().scheme.refErrorE40,
    refErrorE50: BaseGrapePalette.dark().scheme.refErrorE50,
    refErrorE6: BaseGrapePalette.dark().scheme.refErrorE6,
    refErrorE60: BaseGrapePalette.dark().scheme.refErrorE60,
    refErrorE70: BaseGrapePalette.dark().scheme.refErrorE70,
    refErrorE8: BaseGrapePalette.dark().scheme.refErrorE8,
    refErrorE80: BaseGrapePalette.dark().scheme.refErrorE80,
    refErrorE85: BaseGrapePalette.dark().scheme.refErrorE85,
    refErrorE90: BaseGrapePalette.dark().scheme.refErrorE90,
    refErrorE93: BaseGrapePalette.dark().scheme.refErrorE93,
    refErrorE95: BaseGrapePalette.dark().scheme.refErrorE95,
    refErrorE98: BaseGrapePalette.dark().scheme.refErrorE98,
    refErrorE99: BaseGrapePalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseGrapePalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseGrapePalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseGrapePalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseGrapePalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseGrapePalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseGrapePalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseGrapePalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseGrapePalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseGrapePalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseGrapePalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseGrapePalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseGrapePalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseGrapePalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseGrapePalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseGrapePalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseGrapePalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseGrapePalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseGrapePalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseGrapePalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseGrapePalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseGrapePalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseGrapePalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseGrapePalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseGrapePalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseGrapePalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseGrapePalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseGrapePalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseGrapePalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseGrapePalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseGrapePalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseGrapePalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseGrapePalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseGrapePalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseGrapePalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseGrapePalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseGrapePalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseGrapePalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseGrapePalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseGrapePalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseGrapePalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseGrapePalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseGrapePalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseGrapePalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseGrapePalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseGrapePalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseGrapePalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseGrapePalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseGrapePalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseGrapePalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseGrapePalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseGrapePalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseGrapePalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseGrapePalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseGrapePalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseGrapePalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseGrapePalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseGrapePalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseGrapePalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseGrapePalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseGrapePalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseGrapePalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseGrapePalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseGrapePalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseGrapePalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseGrapePalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseGrapePalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseGrapePalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseGrapePalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseGrapePalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseGrapePalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseGrapePalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseGrapePalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseGrapePalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseGrapePalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseGrapePalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseGrapePalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseGrapePalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseGrapePalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseGrapePalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseGrapePalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseGrapePalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseGrapePalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseGrapePalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseGrapePalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseGrapePalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseGrapePalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseGrapePalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseGrapePalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseGrapePalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseGrapePalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseGrapePalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseGrapePalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseGrapePalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseGrapePalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseGrapePalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseGrapePalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseGrapePalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseGrapePalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseGrapePalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseGrapePalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseGrapePalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseGrapePalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseGrapePalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseGrapePalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseGrapePalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseGrapePalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseGrapePalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseGrapePalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseGrapePalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseGrapePalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseGrapePalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseGrapePalette.dark().scheme.refWarnW0,
    refWarnW10: BaseGrapePalette.dark().scheme.refWarnW10,
    refWarnW100: BaseGrapePalette.dark().scheme.refWarnW100,
    refWarnW15: BaseGrapePalette.dark().scheme.refWarnW15,
    refWarnW2: BaseGrapePalette.dark().scheme.refWarnW2,
    refWarnW20: BaseGrapePalette.dark().scheme.refWarnW20,
    refWarnW30: BaseGrapePalette.dark().scheme.refWarnW30,
    refWarnW4: BaseGrapePalette.dark().scheme.refWarnW4,
    refWarnW40: BaseGrapePalette.dark().scheme.refWarnW40,
    refWarnW50: BaseGrapePalette.dark().scheme.refWarnW50,
    refWarnW6: BaseGrapePalette.dark().scheme.refWarnW6,
    refWarnW60: BaseGrapePalette.dark().scheme.refWarnW60,
    refWarnW70: BaseGrapePalette.dark().scheme.refWarnW70,
    refWarnW8: BaseGrapePalette.dark().scheme.refWarnW8,
    refWarnW80: BaseGrapePalette.dark().scheme.refWarnW80,
    refWarnW85: BaseGrapePalette.dark().scheme.refWarnW85,
    refWarnW90: BaseGrapePalette.dark().scheme.refWarnW90,
    refWarnW93: BaseGrapePalette.dark().scheme.refWarnW93,
    refWarnW95: BaseGrapePalette.dark().scheme.refWarnW95,
    refWarnW98: BaseGrapePalette.dark().scheme.refWarnW98,
    refWarnW99: BaseGrapePalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseGrapePalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseGrapePalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseGrapePalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseGrapePalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseGrapePalette.dark().scheme.sysError,
    sysErrorContainer: BaseGrapePalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseGrapePalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseGrapePalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseGrapePalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseGrapePalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseGrapePalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseGrapePalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseGrapePalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseGrapePalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseGrapePalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseGrapePalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseGrapePalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseGrapePalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseGrapePalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseGrapePalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseGrapePalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseGrapePalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseGrapePalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseGrapePalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseGrapePalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseGrapePalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseGrapePalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseGrapePalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseGrapePalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseGrapePalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseGrapePalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseGrapePalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseGrapePalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseGrapePalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseGrapePalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseGrapePalette.dark().scheme.sysScrim,
    sysSecondary: BaseGrapePalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseGrapePalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseGrapePalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseGrapePalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseGrapePalette.dark().scheme.sysShadow,
    sysSuccess: BaseGrapePalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseGrapePalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseGrapePalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseGrapePalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseGrapePalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseGrapePalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseGrapePalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseGrapePalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseGrapePalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseGrapePalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseGrapePalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseGrapePalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseGrapePalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseGrapePalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseGrapePalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseGrapePalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseGrapePalette.dark().scheme.sysWarnContainer,
    aqua: BaseGrapePalette.dark().scheme.aqua,
    black: BaseGrapePalette.dark().scheme.black,
    blue: BaseGrapePalette.dark().scheme.blue,
    cyan: BaseGrapePalette.dark().scheme.cyan,
    grape: BaseGrapePalette.dark().scheme.grape,
    green: BaseGrapePalette.dark().scheme.green,
    lime: BaseGrapePalette.dark().scheme.lime,
    magenta: BaseGrapePalette.dark().scheme.magenta,
    orange: BaseGrapePalette.dark().scheme.orange,
    pink: BaseGrapePalette.dark().scheme.pink,
    purple: BaseGrapePalette.dark().scheme.purple,
    red: BaseGrapePalette.dark().scheme.red,
    white: BaseGrapePalette.dark().scheme.white,
    yellow: BaseGrapePalette.dark().scheme.yellow,
    onRed: BaseGrapePalette.dark().scheme.onRed,
    onOrange: BaseGrapePalette.dark().scheme.onOrange,
    onYellow: BaseGrapePalette.dark().scheme.onYellow,
    onLime: BaseGrapePalette.dark().scheme.onLime,
    onGreen: BaseGrapePalette.dark().scheme.onGreen,
    onAqua: BaseGrapePalette.dark().scheme.onAqua,
    onCyan: BaseGrapePalette.dark().scheme.onCyan,
    onBlue: BaseGrapePalette.dark().scheme.onBlue,
    onPurple: BaseGrapePalette.dark().scheme.onPurple,
    onGrape: BaseGrapePalette.dark().scheme.onGrape,
    onPink: BaseGrapePalette.dark().scheme.onPink,
    onMagenta: BaseGrapePalette.dark().scheme.onMagenta,
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
