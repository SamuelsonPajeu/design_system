import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_aqua_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseAquaAppTheme extends GetxController {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: BaseAquaPalette.light().scheme.sysPrimary,
      brightness: Brightness.light);

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: BaseAquaPalette.dark().scheme.sysPrimary,
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
    hyperlinkActive: BaseAquaPalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BaseAquaPalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseAquaPalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseAquaPalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseAquaPalette.light().scheme.hyperlinkVisited,
    refErrorE0: BaseAquaPalette.light().scheme.refErrorE0,
    refErrorE10: BaseAquaPalette.light().scheme.refErrorE10,
    refErrorE100: BaseAquaPalette.light().scheme.refErrorE100,
    refErrorE15: BaseAquaPalette.light().scheme.refErrorE15,
    refErrorE2: BaseAquaPalette.light().scheme.refErrorE2,
    refErrorE20: BaseAquaPalette.light().scheme.refErrorE20,
    refErrorE30: BaseAquaPalette.light().scheme.refErrorE30,
    refErrorE4: BaseAquaPalette.light().scheme.refErrorE4,
    refErrorE40: BaseAquaPalette.light().scheme.refErrorE40,
    refErrorE50: BaseAquaPalette.light().scheme.refErrorE50,
    refErrorE6: BaseAquaPalette.light().scheme.refErrorE6,
    refErrorE60: BaseAquaPalette.light().scheme.refErrorE60,
    refErrorE70: BaseAquaPalette.light().scheme.refErrorE70,
    refErrorE8: BaseAquaPalette.light().scheme.refErrorE8,
    refErrorE80: BaseAquaPalette.light().scheme.refErrorE80,
    refErrorE85: BaseAquaPalette.light().scheme.refErrorE85,
    refErrorE90: BaseAquaPalette.light().scheme.refErrorE90,
    refErrorE93: BaseAquaPalette.light().scheme.refErrorE93,
    refErrorE95: BaseAquaPalette.light().scheme.refErrorE95,
    refErrorE98: BaseAquaPalette.light().scheme.refErrorE98,
    refErrorE99: BaseAquaPalette.light().scheme.refErrorE99,
    refNeutralN0: BaseAquaPalette.light().scheme.refNeutralN0,
    refNeutralN10: BaseAquaPalette.light().scheme.refNeutralN10,
    refNeutralN100: BaseAquaPalette.light().scheme.refNeutralN100,
    refNeutralN15: BaseAquaPalette.light().scheme.refNeutralN15,
    refNeutralN2: BaseAquaPalette.light().scheme.refNeutralN2,
    refNeutralN20: BaseAquaPalette.light().scheme.refNeutralN20,
    refNeutralN30: BaseAquaPalette.light().scheme.refNeutralN30,
    refNeutralN4: BaseAquaPalette.light().scheme.refNeutralN4,
    refNeutralN40: BaseAquaPalette.light().scheme.refNeutralN40,
    refNeutralN50: BaseAquaPalette.light().scheme.refNeutralN50,
    refNeutralN6: BaseAquaPalette.light().scheme.refNeutralN6,
    refNeutralN60: BaseAquaPalette.light().scheme.refNeutralN60,
    refNeutralN70: BaseAquaPalette.light().scheme.refNeutralN70,
    refNeutralN8: BaseAquaPalette.light().scheme.refNeutralN8,
    refNeutralN80: BaseAquaPalette.light().scheme.refNeutralN80,
    refNeutralN85: BaseAquaPalette.light().scheme.refNeutralN85,
    refNeutralN90: BaseAquaPalette.light().scheme.refNeutralN90,
    refNeutralN93: BaseAquaPalette.light().scheme.refNeutralN93,
    refNeutralN95: BaseAquaPalette.light().scheme.refNeutralN95,
    refNeutralN98: BaseAquaPalette.light().scheme.refNeutralN98,
    refNeutralN99: BaseAquaPalette.light().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseAquaPalette.light().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseAquaPalette.light().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseAquaPalette.light().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseAquaPalette.light().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseAquaPalette.light().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseAquaPalette.light().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseAquaPalette.light().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseAquaPalette.light().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseAquaPalette.light().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseAquaPalette.light().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseAquaPalette.light().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseAquaPalette.light().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseAquaPalette.light().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseAquaPalette.light().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseAquaPalette.light().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseAquaPalette.light().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseAquaPalette.light().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseAquaPalette.light().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseAquaPalette.light().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseAquaPalette.light().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseAquaPalette.light().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseAquaPalette.light().scheme.refPrimaryP0,
    refPrimaryP10: BaseAquaPalette.light().scheme.refPrimaryP10,
    refPrimaryP100: BaseAquaPalette.light().scheme.refPrimaryP100,
    refPrimaryP15: BaseAquaPalette.light().scheme.refPrimaryP15,
    refPrimaryP2: BaseAquaPalette.light().scheme.refPrimaryP2,
    refPrimaryP20: BaseAquaPalette.light().scheme.refPrimaryP20,
    refPrimaryP30: BaseAquaPalette.light().scheme.refPrimaryP30,
    refPrimaryP4: BaseAquaPalette.light().scheme.refPrimaryP4,
    refPrimaryP40: BaseAquaPalette.light().scheme.refPrimaryP40,
    refPrimaryP50: BaseAquaPalette.light().scheme.refPrimaryP50,
    refPrimaryP6: BaseAquaPalette.light().scheme.refPrimaryP6,
    refPrimaryP60: BaseAquaPalette.light().scheme.refPrimaryP60,
    refPrimaryP70: BaseAquaPalette.light().scheme.refPrimaryP70,
    refPrimaryP8: BaseAquaPalette.light().scheme.refPrimaryP8,
    refPrimaryP80: BaseAquaPalette.light().scheme.refPrimaryP80,
    refPrimaryP85: BaseAquaPalette.light().scheme.refPrimaryP85,
    refPrimaryP90: BaseAquaPalette.light().scheme.refPrimaryP90,
    refPrimaryP93: BaseAquaPalette.light().scheme.refPrimaryP93,
    refPrimaryP95: BaseAquaPalette.light().scheme.refPrimaryP95,
    refPrimaryP98: BaseAquaPalette.light().scheme.refPrimaryP98,
    refPrimaryP99: BaseAquaPalette.light().scheme.refPrimaryP99,
    refSecondaryS0: BaseAquaPalette.light().scheme.refSecondaryS0,
    refSecondaryS10: BaseAquaPalette.light().scheme.refSecondaryS10,
    refSecondaryS100: BaseAquaPalette.light().scheme.refSecondaryS100,
    refSecondaryS15: BaseAquaPalette.light().scheme.refSecondaryS15,
    refSecondaryS2: BaseAquaPalette.light().scheme.refSecondaryS2,
    refSecondaryS20: BaseAquaPalette.light().scheme.refSecondaryS20,
    refSecondaryS30: BaseAquaPalette.light().scheme.refSecondaryS30,
    refSecondaryS4: BaseAquaPalette.light().scheme.refSecondaryS4,
    refSecondaryS40: BaseAquaPalette.light().scheme.refSecondaryS40,
    refSecondaryS50: BaseAquaPalette.light().scheme.refSecondaryS50,
    refSecondaryS6: BaseAquaPalette.light().scheme.refSecondaryS6,
    refSecondaryS60: BaseAquaPalette.light().scheme.refSecondaryS60,
    refSecondaryS70: BaseAquaPalette.light().scheme.refSecondaryS70,
    refSecondaryS8: BaseAquaPalette.light().scheme.refSecondaryS8,
    refSecondaryS80: BaseAquaPalette.light().scheme.refSecondaryS80,
    refSecondaryS85: BaseAquaPalette.light().scheme.refSecondaryS85,
    refSecondaryS90: BaseAquaPalette.light().scheme.refSecondaryS90,
    refSecondaryS93: BaseAquaPalette.light().scheme.refSecondaryS93,
    refSecondaryS95: BaseAquaPalette.light().scheme.refSecondaryS95,
    refSecondaryS98: BaseAquaPalette.light().scheme.refSecondaryS98,
    refSecondaryS99: BaseAquaPalette.light().scheme.refSecondaryS99,
    refSuccessU0: BaseAquaPalette.light().scheme.refSuccessU0,
    refSuccessU10: BaseAquaPalette.light().scheme.refSuccessU10,
    refSuccessU100: BaseAquaPalette.light().scheme.refSuccessU100,
    refSuccessU15: BaseAquaPalette.light().scheme.refSuccessU15,
    refSuccessU2: BaseAquaPalette.light().scheme.refSuccessU2,
    refSuccessU20: BaseAquaPalette.light().scheme.refSuccessU20,
    refSuccessU30: BaseAquaPalette.light().scheme.refSuccessU30,
    refSuccessU4: BaseAquaPalette.light().scheme.refSuccessU4,
    refSuccessU40: BaseAquaPalette.light().scheme.refSuccessU40,
    refSuccessU50: BaseAquaPalette.light().scheme.refSuccessU50,
    refSuccessU6: BaseAquaPalette.light().scheme.refSuccessU6,
    refSuccessU60: BaseAquaPalette.light().scheme.refSuccessU60,
    refSuccessU70: BaseAquaPalette.light().scheme.refSuccessU70,
    refSuccessU8: BaseAquaPalette.light().scheme.refSuccessU8,
    refSuccessU80: BaseAquaPalette.light().scheme.refSuccessU80,
    refSuccessU85: BaseAquaPalette.light().scheme.refSuccessU85,
    refSuccessU90: BaseAquaPalette.light().scheme.refSuccessU90,
    refSuccessU93: BaseAquaPalette.light().scheme.refSuccessU93,
    refSuccessU95: BaseAquaPalette.light().scheme.refSuccessU95,
    refSuccessU98: BaseAquaPalette.light().scheme.refSuccessU98,
    refSuccessU99: BaseAquaPalette.light().scheme.refSuccessU99,
    refTertiaryT0: BaseAquaPalette.light().scheme.refTertiaryT0,
    refTertiaryT10: BaseAquaPalette.light().scheme.refTertiaryT10,
    refTertiaryT100: BaseAquaPalette.light().scheme.refTertiaryT100,
    refTertiaryT15: BaseAquaPalette.light().scheme.refTertiaryT15,
    refTertiaryT2: BaseAquaPalette.light().scheme.refTertiaryT2,
    refTertiaryT20: BaseAquaPalette.light().scheme.refTertiaryT20,
    refTertiaryT30: BaseAquaPalette.light().scheme.refTertiaryT30,
    refTertiaryT4: BaseAquaPalette.light().scheme.refTertiaryT4,
    refTertiaryT40: BaseAquaPalette.light().scheme.refTertiaryT40,
    refTertiaryT50: BaseAquaPalette.light().scheme.refTertiaryT50,
    refTertiaryT6: BaseAquaPalette.light().scheme.refTertiaryT6,
    refTertiaryT60: BaseAquaPalette.light().scheme.refTertiaryT60,
    refTertiaryT70: BaseAquaPalette.light().scheme.refTertiaryT70,
    refTertiaryT8: BaseAquaPalette.light().scheme.refTertiaryT8,
    refTertiaryT80: BaseAquaPalette.light().scheme.refTertiaryT80,
    refTertiaryT85: BaseAquaPalette.light().scheme.refTertiaryT85,
    refTertiaryT90: BaseAquaPalette.light().scheme.refTertiaryT90,
    refTertiaryT93: BaseAquaPalette.light().scheme.refTertiaryT93,
    refTertiaryT95: BaseAquaPalette.light().scheme.refTertiaryT95,
    refTertiaryT98: BaseAquaPalette.light().scheme.refTertiaryT98,
    refTertiaryT99: BaseAquaPalette.light().scheme.refTertiaryT99,
    refWarnW0: BaseAquaPalette.light().scheme.refWarnW0,
    refWarnW10: BaseAquaPalette.light().scheme.refWarnW10,
    refWarnW100: BaseAquaPalette.light().scheme.refWarnW100,
    refWarnW15: BaseAquaPalette.light().scheme.refWarnW15,
    refWarnW2: BaseAquaPalette.light().scheme.refWarnW2,
    refWarnW20: BaseAquaPalette.light().scheme.refWarnW20,
    refWarnW30: BaseAquaPalette.light().scheme.refWarnW30,
    refWarnW4: BaseAquaPalette.light().scheme.refWarnW4,
    refWarnW40: BaseAquaPalette.light().scheme.refWarnW40,
    refWarnW50: BaseAquaPalette.light().scheme.refWarnW50,
    refWarnW6: BaseAquaPalette.light().scheme.refWarnW6,
    refWarnW60: BaseAquaPalette.light().scheme.refWarnW60,
    refWarnW70: BaseAquaPalette.light().scheme.refWarnW70,
    refWarnW8: BaseAquaPalette.light().scheme.refWarnW8,
    refWarnW80: BaseAquaPalette.light().scheme.refWarnW80,
    refWarnW85: BaseAquaPalette.light().scheme.refWarnW85,
    refWarnW90: BaseAquaPalette.light().scheme.refWarnW90,
    refWarnW93: BaseAquaPalette.light().scheme.refWarnW93,
    refWarnW95: BaseAquaPalette.light().scheme.refWarnW95,
    refWarnW98: BaseAquaPalette.light().scheme.refWarnW98,
    refWarnW99: BaseAquaPalette.light().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseAquaPalette.light().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseAquaPalette.light().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseAquaPalette.light().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseAquaPalette.light().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseAquaPalette.light().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseAquaPalette.light().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseAquaPalette.light().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseAquaPalette.light().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseAquaPalette.light().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseAquaPalette.light().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseAquaPalette.light().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseAquaPalette.light().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseAquaPalette.light().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseAquaPalette.light().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseAquaPalette.light().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseAquaPalette.light().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseAquaPalette.light().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseAquaPalette.light().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseAquaPalette.light().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseAquaPalette.light().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseAquaPalette.light().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseAquaPalette.light().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseAquaPalette.light().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseAquaPalette.light().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseAquaPalette.light().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseAquaPalette.light().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseAquaPalette.light().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseAquaPalette.light().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseAquaPalette.light().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseAquaPalette.light().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseAquaPalette.light()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseAquaPalette.light().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseAquaPalette.light().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseAquaPalette.light().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseAquaPalette.light().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseAquaPalette.light().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseAquaPalette.light().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseAquaPalette.light().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseAquaPalette.light().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseAquaPalette.light().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseAquaPalette.light().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseAquaPalette.light().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseAquaPalette.light().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseAquaPalette.light().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseAquaPalette.light().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseAquaPalette.light().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseAquaPalette.light().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseAquaPalette.light().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseAquaPalette.light().scheme.stateLayersWarnOpacity016,
    sysError: BaseAquaPalette.light().scheme.sysError,
    sysErrorContainer: BaseAquaPalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseAquaPalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseAquaPalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BaseAquaPalette.light().scheme.sysInverseSurface,
    sysOnError: BaseAquaPalette.light().scheme.sysOnError,
    sysOnErrorContainer: BaseAquaPalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseAquaPalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseAquaPalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseAquaPalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseAquaPalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseAquaPalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseAquaPalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseAquaPalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseAquaPalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseAquaPalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseAquaPalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseAquaPalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseAquaPalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseAquaPalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseAquaPalette.light().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseAquaPalette.light().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseAquaPalette.light().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseAquaPalette.light().scheme.sysOnWarn,
    sysOnWarnContainer: BaseAquaPalette.light().scheme.sysOnWarnContainer,
    sysOutline: BaseAquaPalette.light().scheme.sysOutline,
    sysOutlineVariant: BaseAquaPalette.light().scheme.sysOutlineVariant,
    sysPrimary: BaseAquaPalette.light().scheme.sysPrimary,
    sysPrimaryContainer: BaseAquaPalette.light().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseAquaPalette.light().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseAquaPalette.light().scheme.sysPrimaryFixedDim,
    sysScrim: BaseAquaPalette.light().scheme.sysScrim,
    sysSecondary: BaseAquaPalette.light().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseAquaPalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseAquaPalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseAquaPalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BaseAquaPalette.light().scheme.sysShadow,
    sysSuccess: BaseAquaPalette.light().scheme.sysSuccess,
    sysSuccessContainer: BaseAquaPalette.light().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseAquaPalette.light().scheme.sysSurfaceTinted,
    sysSurface: BaseAquaPalette.light().scheme.sysSurface,
    sysSurfaceBright: BaseAquaPalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseAquaPalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseAquaPalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseAquaPalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseAquaPalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseAquaPalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseAquaPalette.light().scheme.sysSurfaceDim,
    sysTertiary: BaseAquaPalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BaseAquaPalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseAquaPalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseAquaPalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BaseAquaPalette.light().scheme.sysWarn,
    sysWarnContainer: BaseAquaPalette.light().scheme.sysWarnContainer,
    aqua: BaseAquaPalette.light().scheme.aqua,
    black: BaseAquaPalette.light().scheme.black,
    blue: BaseAquaPalette.light().scheme.blue,
    cyan: BaseAquaPalette.light().scheme.cyan,
    grape: BaseAquaPalette.light().scheme.grape,
    green: BaseAquaPalette.light().scheme.green,
    lime: BaseAquaPalette.light().scheme.lime,
    magenta: BaseAquaPalette.light().scheme.magenta,
    orange: BaseAquaPalette.light().scheme.orange,
    pink: BaseAquaPalette.light().scheme.pink,
    purple: BaseAquaPalette.light().scheme.purple,
    red: BaseAquaPalette.light().scheme.red,
    white: BaseAquaPalette.light().scheme.white,
    yellow: BaseAquaPalette.light().scheme.yellow,
    onRed: BaseAquaPalette.light().scheme.onRed,
    onOrange: BaseAquaPalette.light().scheme.onOrange,
    onYellow: BaseAquaPalette.light().scheme.onYellow,
    onLime: BaseAquaPalette.light().scheme.onLime,
    onGreen: BaseAquaPalette.light().scheme.onGreen,
    onAqua: BaseAquaPalette.light().scheme.onAqua,
    onCyan: BaseAquaPalette.light().scheme.onCyan,
    onBlue: BaseAquaPalette.light().scheme.onBlue,
    onPurple: BaseAquaPalette.light().scheme.onPurple,
    onGrape: BaseAquaPalette.light().scheme.onGrape,
    onPink: BaseAquaPalette.light().scheme.onPink,
    onMagenta: BaseAquaPalette.light().scheme.onMagenta,
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
    hyperlinkActive: BaseAquaPalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BaseAquaPalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BaseAquaPalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BaseAquaPalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BaseAquaPalette.dark().scheme.hyperlinkVisited,
    refErrorE0: BaseAquaPalette.dark().scheme.refErrorE0,
    refErrorE10: BaseAquaPalette.dark().scheme.refErrorE10,
    refErrorE100: BaseAquaPalette.dark().scheme.refErrorE100,
    refErrorE15: BaseAquaPalette.dark().scheme.refErrorE15,
    refErrorE2: BaseAquaPalette.dark().scheme.refErrorE2,
    refErrorE20: BaseAquaPalette.dark().scheme.refErrorE20,
    refErrorE30: BaseAquaPalette.dark().scheme.refErrorE30,
    refErrorE4: BaseAquaPalette.dark().scheme.refErrorE4,
    refErrorE40: BaseAquaPalette.dark().scheme.refErrorE40,
    refErrorE50: BaseAquaPalette.dark().scheme.refErrorE50,
    refErrorE6: BaseAquaPalette.dark().scheme.refErrorE6,
    refErrorE60: BaseAquaPalette.dark().scheme.refErrorE60,
    refErrorE70: BaseAquaPalette.dark().scheme.refErrorE70,
    refErrorE8: BaseAquaPalette.dark().scheme.refErrorE8,
    refErrorE80: BaseAquaPalette.dark().scheme.refErrorE80,
    refErrorE85: BaseAquaPalette.dark().scheme.refErrorE85,
    refErrorE90: BaseAquaPalette.dark().scheme.refErrorE90,
    refErrorE93: BaseAquaPalette.dark().scheme.refErrorE93,
    refErrorE95: BaseAquaPalette.dark().scheme.refErrorE95,
    refErrorE98: BaseAquaPalette.dark().scheme.refErrorE98,
    refErrorE99: BaseAquaPalette.dark().scheme.refErrorE99,
    refNeutralN0: BaseAquaPalette.dark().scheme.refNeutralN0,
    refNeutralN10: BaseAquaPalette.dark().scheme.refNeutralN10,
    refNeutralN100: BaseAquaPalette.dark().scheme.refNeutralN100,
    refNeutralN15: BaseAquaPalette.dark().scheme.refNeutralN15,
    refNeutralN2: BaseAquaPalette.dark().scheme.refNeutralN2,
    refNeutralN20: BaseAquaPalette.dark().scheme.refNeutralN20,
    refNeutralN30: BaseAquaPalette.dark().scheme.refNeutralN30,
    refNeutralN4: BaseAquaPalette.dark().scheme.refNeutralN4,
    refNeutralN40: BaseAquaPalette.dark().scheme.refNeutralN40,
    refNeutralN50: BaseAquaPalette.dark().scheme.refNeutralN50,
    refNeutralN6: BaseAquaPalette.dark().scheme.refNeutralN6,
    refNeutralN60: BaseAquaPalette.dark().scheme.refNeutralN60,
    refNeutralN70: BaseAquaPalette.dark().scheme.refNeutralN70,
    refNeutralN8: BaseAquaPalette.dark().scheme.refNeutralN8,
    refNeutralN80: BaseAquaPalette.dark().scheme.refNeutralN80,
    refNeutralN85: BaseAquaPalette.dark().scheme.refNeutralN85,
    refNeutralN90: BaseAquaPalette.dark().scheme.refNeutralN90,
    refNeutralN93: BaseAquaPalette.dark().scheme.refNeutralN93,
    refNeutralN95: BaseAquaPalette.dark().scheme.refNeutralN95,
    refNeutralN98: BaseAquaPalette.dark().scheme.refNeutralN98,
    refNeutralN99: BaseAquaPalette.dark().scheme.refNeutralN99,
    refNeutralVariantNv0: BaseAquaPalette.dark().scheme.refNeutralVariantNv0,
    refNeutralVariantNv10:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv10,
    refNeutralVariantNv100:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv100,
    refNeutralVariantNv15:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv15,
    refNeutralVariantNv2: BaseAquaPalette.dark().scheme.refNeutralVariantNv2,
    refNeutralVariantNv20:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv20,
    refNeutralVariantNv30:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv30,
    refNeutralVariantNv4: BaseAquaPalette.dark().scheme.refNeutralVariantNv4,
    refNeutralVariantNv40:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv40,
    refNeutralVariantNv50:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv50,
    refNeutralVariantNv6: BaseAquaPalette.dark().scheme.refNeutralVariantNv6,
    refNeutralVariantNv60:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv60,
    refNeutralVariantNv70:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv70,
    refNeutralVariantNv8: BaseAquaPalette.dark().scheme.refNeutralVariantNv8,
    refNeutralVariantNv80:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv80,
    refNeutralVariantNv85:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv85,
    refNeutralVariantNv90:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv90,
    refNeutralVariantNv93:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv93,
    refNeutralVariantNv95:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv95,
    refNeutralVariantNv98:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv98,
    refNeutralVariantNv99:
        BaseAquaPalette.dark().scheme.refNeutralVariantNv99,
    refPrimaryP0: BaseAquaPalette.dark().scheme.refPrimaryP0,
    refPrimaryP10: BaseAquaPalette.dark().scheme.refPrimaryP10,
    refPrimaryP100: BaseAquaPalette.dark().scheme.refPrimaryP100,
    refPrimaryP15: BaseAquaPalette.dark().scheme.refPrimaryP15,
    refPrimaryP2: BaseAquaPalette.dark().scheme.refPrimaryP2,
    refPrimaryP20: BaseAquaPalette.dark().scheme.refPrimaryP20,
    refPrimaryP30: BaseAquaPalette.dark().scheme.refPrimaryP30,
    refPrimaryP4: BaseAquaPalette.dark().scheme.refPrimaryP4,
    refPrimaryP40: BaseAquaPalette.dark().scheme.refPrimaryP40,
    refPrimaryP50: BaseAquaPalette.dark().scheme.refPrimaryP50,
    refPrimaryP6: BaseAquaPalette.dark().scheme.refPrimaryP6,
    refPrimaryP60: BaseAquaPalette.dark().scheme.refPrimaryP60,
    refPrimaryP70: BaseAquaPalette.dark().scheme.refPrimaryP70,
    refPrimaryP8: BaseAquaPalette.dark().scheme.refPrimaryP8,
    refPrimaryP80: BaseAquaPalette.dark().scheme.refPrimaryP80,
    refPrimaryP85: BaseAquaPalette.dark().scheme.refPrimaryP85,
    refPrimaryP90: BaseAquaPalette.dark().scheme.refPrimaryP90,
    refPrimaryP93: BaseAquaPalette.dark().scheme.refPrimaryP93,
    refPrimaryP95: BaseAquaPalette.dark().scheme.refPrimaryP95,
    refPrimaryP98: BaseAquaPalette.dark().scheme.refPrimaryP98,
    refPrimaryP99: BaseAquaPalette.dark().scheme.refPrimaryP99,
    refSecondaryS0: BaseAquaPalette.dark().scheme.refSecondaryS0,
    refSecondaryS10: BaseAquaPalette.dark().scheme.refSecondaryS10,
    refSecondaryS100: BaseAquaPalette.dark().scheme.refSecondaryS100,
    refSecondaryS15: BaseAquaPalette.dark().scheme.refSecondaryS15,
    refSecondaryS2: BaseAquaPalette.dark().scheme.refSecondaryS2,
    refSecondaryS20: BaseAquaPalette.dark().scheme.refSecondaryS20,
    refSecondaryS30: BaseAquaPalette.dark().scheme.refSecondaryS30,
    refSecondaryS4: BaseAquaPalette.dark().scheme.refSecondaryS4,
    refSecondaryS40: BaseAquaPalette.dark().scheme.refSecondaryS40,
    refSecondaryS50: BaseAquaPalette.dark().scheme.refSecondaryS50,
    refSecondaryS6: BaseAquaPalette.dark().scheme.refSecondaryS6,
    refSecondaryS60: BaseAquaPalette.dark().scheme.refSecondaryS60,
    refSecondaryS70: BaseAquaPalette.dark().scheme.refSecondaryS70,
    refSecondaryS8: BaseAquaPalette.dark().scheme.refSecondaryS8,
    refSecondaryS80: BaseAquaPalette.dark().scheme.refSecondaryS80,
    refSecondaryS85: BaseAquaPalette.dark().scheme.refSecondaryS85,
    refSecondaryS90: BaseAquaPalette.dark().scheme.refSecondaryS90,
    refSecondaryS93: BaseAquaPalette.dark().scheme.refSecondaryS93,
    refSecondaryS95: BaseAquaPalette.dark().scheme.refSecondaryS95,
    refSecondaryS98: BaseAquaPalette.dark().scheme.refSecondaryS98,
    refSecondaryS99: BaseAquaPalette.dark().scheme.refSecondaryS99,
    refSuccessU0: BaseAquaPalette.dark().scheme.refSuccessU0,
    refSuccessU10: BaseAquaPalette.dark().scheme.refSuccessU10,
    refSuccessU100: BaseAquaPalette.dark().scheme.refSuccessU100,
    refSuccessU15: BaseAquaPalette.dark().scheme.refSuccessU15,
    refSuccessU2: BaseAquaPalette.dark().scheme.refSuccessU2,
    refSuccessU20: BaseAquaPalette.dark().scheme.refSuccessU20,
    refSuccessU30: BaseAquaPalette.dark().scheme.refSuccessU30,
    refSuccessU4: BaseAquaPalette.dark().scheme.refSuccessU4,
    refSuccessU40: BaseAquaPalette.dark().scheme.refSuccessU40,
    refSuccessU50: BaseAquaPalette.dark().scheme.refSuccessU50,
    refSuccessU6: BaseAquaPalette.dark().scheme.refSuccessU6,
    refSuccessU60: BaseAquaPalette.dark().scheme.refSuccessU60,
    refSuccessU70: BaseAquaPalette.dark().scheme.refSuccessU70,
    refSuccessU8: BaseAquaPalette.dark().scheme.refSuccessU8,
    refSuccessU80: BaseAquaPalette.dark().scheme.refSuccessU80,
    refSuccessU85: BaseAquaPalette.dark().scheme.refSuccessU85,
    refSuccessU90: BaseAquaPalette.dark().scheme.refSuccessU90,
    refSuccessU93: BaseAquaPalette.dark().scheme.refSuccessU93,
    refSuccessU95: BaseAquaPalette.dark().scheme.refSuccessU95,
    refSuccessU98: BaseAquaPalette.dark().scheme.refSuccessU98,
    refSuccessU99: BaseAquaPalette.dark().scheme.refSuccessU99,
    refTertiaryT0: BaseAquaPalette.dark().scheme.refTertiaryT0,
    refTertiaryT10: BaseAquaPalette.dark().scheme.refTertiaryT10,
    refTertiaryT100: BaseAquaPalette.dark().scheme.refTertiaryT100,
    refTertiaryT15: BaseAquaPalette.dark().scheme.refTertiaryT15,
    refTertiaryT2: BaseAquaPalette.dark().scheme.refTertiaryT2,
    refTertiaryT20: BaseAquaPalette.dark().scheme.refTertiaryT20,
    refTertiaryT30: BaseAquaPalette.dark().scheme.refTertiaryT30,
    refTertiaryT4: BaseAquaPalette.dark().scheme.refTertiaryT4,
    refTertiaryT40: BaseAquaPalette.dark().scheme.refTertiaryT40,
    refTertiaryT50: BaseAquaPalette.dark().scheme.refTertiaryT50,
    refTertiaryT6: BaseAquaPalette.dark().scheme.refTertiaryT6,
    refTertiaryT60: BaseAquaPalette.dark().scheme.refTertiaryT60,
    refTertiaryT70: BaseAquaPalette.dark().scheme.refTertiaryT70,
    refTertiaryT8: BaseAquaPalette.dark().scheme.refTertiaryT8,
    refTertiaryT80: BaseAquaPalette.dark().scheme.refTertiaryT80,
    refTertiaryT85: BaseAquaPalette.dark().scheme.refTertiaryT85,
    refTertiaryT90: BaseAquaPalette.dark().scheme.refTertiaryT90,
    refTertiaryT93: BaseAquaPalette.dark().scheme.refTertiaryT93,
    refTertiaryT95: BaseAquaPalette.dark().scheme.refTertiaryT95,
    refTertiaryT98: BaseAquaPalette.dark().scheme.refTertiaryT98,
    refTertiaryT99: BaseAquaPalette.dark().scheme.refTertiaryT99,
    refWarnW0: BaseAquaPalette.dark().scheme.refWarnW0,
    refWarnW10: BaseAquaPalette.dark().scheme.refWarnW10,
    refWarnW100: BaseAquaPalette.dark().scheme.refWarnW100,
    refWarnW15: BaseAquaPalette.dark().scheme.refWarnW15,
    refWarnW2: BaseAquaPalette.dark().scheme.refWarnW2,
    refWarnW20: BaseAquaPalette.dark().scheme.refWarnW20,
    refWarnW30: BaseAquaPalette.dark().scheme.refWarnW30,
    refWarnW4: BaseAquaPalette.dark().scheme.refWarnW4,
    refWarnW40: BaseAquaPalette.dark().scheme.refWarnW40,
    refWarnW50: BaseAquaPalette.dark().scheme.refWarnW50,
    refWarnW6: BaseAquaPalette.dark().scheme.refWarnW6,
    refWarnW60: BaseAquaPalette.dark().scheme.refWarnW60,
    refWarnW70: BaseAquaPalette.dark().scheme.refWarnW70,
    refWarnW8: BaseAquaPalette.dark().scheme.refWarnW8,
    refWarnW80: BaseAquaPalette.dark().scheme.refWarnW80,
    refWarnW85: BaseAquaPalette.dark().scheme.refWarnW85,
    refWarnW90: BaseAquaPalette.dark().scheme.refWarnW90,
    refWarnW93: BaseAquaPalette.dark().scheme.refWarnW93,
    refWarnW95: BaseAquaPalette.dark().scheme.refWarnW95,
    refWarnW98: BaseAquaPalette.dark().scheme.refWarnW98,
    refWarnW99: BaseAquaPalette.dark().scheme.refWarnW99,
    stateLayersErrorContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersErrorContainerOpacity008,
    stateLayersErrorContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersErrorContainerOpacity012,
    stateLayersErrorContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersErrorContainerOpacity016,
    stateLayersErrorOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersErrorOpacity008,
    stateLayersErrorOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersErrorOpacity012,
    stateLayersErrorOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersErrorOpacity016,
    stateLayersInverseOnSurfaceOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity008,
    stateLayersInverseOnSurfaceOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity012,
    stateLayersInverseOnSurfaceOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersInverseOnSurfaceOpacity016,
    stateLayersInversePrimaryOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersInversePrimaryOpacity008,
    stateLayersInversePrimaryOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersInversePrimaryOpacity012,
    stateLayersInversePrimaryOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersInversePrimaryOpacity016,
    stateLayersInverseSurfaceOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersInverseSurfaceOpacity008,
    stateLayersInverseSurfaceOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersInverseSurfaceOpacity012,
    stateLayersInverseSurfaceOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersInverseSurfaceOpacity016,
    stateLayersOnErrorContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnErrorContainerOpacity008,
    stateLayersOnErrorContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnErrorContainerOpacity012,
    stateLayersOnErrorContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnErrorContainerOpacity016,
    stateLayersOnErrorOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnErrorOpacity008,
    stateLayersOnErrorOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnErrorOpacity012,
    stateLayersOnErrorOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnErrorOpacity016,
    stateLayersOnPrimaryContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity008,
    stateLayersOnPrimaryContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity012,
    stateLayersOnPrimaryContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryContainerOpacity016,
    stateLayersOnPrimaryFixedOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity008,
    stateLayersOnPrimaryFixedOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity012,
    stateLayersOnPrimaryFixedOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryFixedOpacity016,
    stateLayersOnPrimaryFixedVariantOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity008,
    stateLayersOnPrimaryFixedVariantOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity012,
    stateLayersOnPrimaryFixedVariantOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnPrimaryFixedVariantOpacity016,
    stateLayersOnPrimaryOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryOpacity008,
    stateLayersOnPrimaryOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryOpacity012,
    stateLayersOnPrimaryOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnPrimaryOpacity016,
    stateLayersOnSecondaryContainerOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity008,
    stateLayersOnSecondaryContainerOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity012,
    stateLayersOnSecondaryContainerOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnSecondaryContainerOpacity016,
    stateLayersOnSecondaryFixedOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity008,
    stateLayersOnSecondaryFixedOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity012,
    stateLayersOnSecondaryFixedOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnSecondaryFixedOpacity016,
    stateLayersOnSecondaryFixedVariantOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity008,
    stateLayersOnSecondaryFixedVariantOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity012,
    stateLayersOnSecondaryFixedVariantOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnSecondaryFixedVariantOpacity016,
    stateLayersOnSecondaryOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnSecondaryOpacity008,
    stateLayersOnSecondaryOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnSecondaryOpacity012,
    stateLayersOnSecondaryOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnSecondaryOpacity016,
    stateLayersOnSuccessContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnSuccessContainerOpacity008,
    stateLayersOnSuccessContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnSuccessContainerOpacity012,
    stateLayersOnSuccessContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnSuccessContainerOpacity016,
    stateLayersOnSuccessOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnSuccessOpacity008,
    stateLayersOnSuccessOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnSuccessOpacity012,
    stateLayersOnSuccessOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnSuccessOpacity016,
    stateLayersOnSurfaceOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnSurfaceOpacity008,
    stateLayersOnSurfaceOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnSurfaceOpacity012,
    stateLayersOnSurfaceOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnSurfaceOpacity016,
    stateLayersOnSurfaceVariantOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity008,
    stateLayersOnSurfaceVariantOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity012,
    stateLayersOnSurfaceVariantOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnSurfaceVariantOpacity016,
    stateLayersOnTertiaryContainerOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity008,
    stateLayersOnTertiaryContainerOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity012,
    stateLayersOnTertiaryContainerOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnTertiaryContainerOpacity016,
    stateLayersOnTertiaryFixedOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity008,
    stateLayersOnTertiaryFixedOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity012,
    stateLayersOnTertiaryFixedOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnTertiaryFixedOpacity016,
    stateLayersOnTertiaryFixedVariantOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity008,
    stateLayersOnTertiaryFixedVariantOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity012,
    stateLayersOnTertiaryFixedVariantOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersOnTertiaryFixedVariantOpacity016,
    stateLayersOnTertiaryOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnTertiaryOpacity008,
    stateLayersOnTertiaryOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnTertiaryOpacity012,
    stateLayersOnTertiaryOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnTertiaryOpacity016,
    stateLayersOnWarnContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnWarnContainerOpacity008,
    stateLayersOnWarnContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnWarnContainerOpacity012,
    stateLayersOnWarnContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnWarnContainerOpacity016,
    stateLayersOnWarnOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOnWarnOpacity008,
    stateLayersOnWarnOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOnWarnOpacity012,
    stateLayersOnWarnOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOnWarnOpacity016,
    stateLayersOutlineOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOutlineOpacity008,
    stateLayersOutlineOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOutlineOpacity012,
    stateLayersOutlineOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOutlineOpacity016,
    stateLayersOutlineVariantOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersOutlineVariantOpacity008,
    stateLayersOutlineVariantOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersOutlineVariantOpacity012,
    stateLayersOutlineVariantOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersOutlineVariantOpacity016,
    stateLayersPrimaryContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryContainerOpacity008,
    stateLayersPrimaryContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryContainerOpacity012,
    stateLayersPrimaryContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryContainerOpacity016,
    stateLayersPrimaryFixedDimOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity008,
    stateLayersPrimaryFixedDimOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity012,
    stateLayersPrimaryFixedDimOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryFixedDimOpacity016,
    stateLayersPrimaryFixedOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryFixedOpacity008,
    stateLayersPrimaryFixedOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryFixedOpacity012,
    stateLayersPrimaryFixedOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryFixedOpacity016,
    stateLayersPrimaryOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryOpacity008,
    stateLayersPrimaryOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryOpacity012,
    stateLayersPrimaryOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersPrimaryOpacity016,
    stateLayersScrimOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersScrimOpacity008,
    stateLayersScrimOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersScrimOpacity012,
    stateLayersScrimOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersScrimOpacity016,
    stateLayersSecondaryContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryContainerOpacity008,
    stateLayersSecondaryContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryContainerOpacity012,
    stateLayersSecondaryContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryContainerOpacity016,
    stateLayersSecondaryFixedDimOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity008,
    stateLayersSecondaryFixedDimOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity012,
    stateLayersSecondaryFixedDimOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryFixedDimOpacity016,
    stateLayersSecondaryFixedOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryFixedOpacity008,
    stateLayersSecondaryFixedOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryFixedOpacity012,
    stateLayersSecondaryFixedOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryFixedOpacity016,
    stateLayersSecondaryOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryOpacity008,
    stateLayersSecondaryOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryOpacity012,
    stateLayersSecondaryOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSecondaryOpacity016,
    stateLayersShadowOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersShadowOpacity008,
    stateLayersShadowOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersShadowOpacity012,
    stateLayersShadowOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersShadowOpacity016,
    stateLayersSuccessContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSuccessContainerOpacity008,
    stateLayersSuccessContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSuccessContainerOpacity012,
    stateLayersSuccessContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSuccessContainerOpacity016,
    stateLayersSuccessOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSuccessOpacity008,
    stateLayersSuccessOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSuccessOpacity012,
    stateLayersSuccessOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSuccessOpacity016,
    stateLayersSurfaceBrightOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceBrightOpacity008,
    stateLayersSurfaceBrightOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceBrightOpacity012,
    stateLayersSurfaceBrightOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceBrightOpacity016,
    stateLayersSurfaceContainerHighOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity008,
    stateLayersSurfaceContainerHighOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity012,
    stateLayersSurfaceContainerHighOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighOpacity016,
    stateLayersSurfaceContainerHighestOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity008,
    stateLayersSurfaceContainerHighestOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity012,
    stateLayersSurfaceContainerHighestOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerHighestOpacity016,
    stateLayersSurfaceContainerLowOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity008,
    stateLayersSurfaceContainerLowOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity012,
    stateLayersSurfaceContainerLowOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowOpacity016,
    stateLayersSurfaceContainerLowestOpacity008: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity008,
    stateLayersSurfaceContainerLowestOpacity012: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity012,
    stateLayersSurfaceContainerLowestOpacity016: BaseAquaPalette.dark()
        .scheme
        .stateLayersSurfaceContainerLowestOpacity016,
    stateLayersSurfaceContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceContainerOpacity008,
    stateLayersSurfaceContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceContainerOpacity012,
    stateLayersSurfaceContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceContainerOpacity016,
    stateLayersSurfaceDimOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceDimOpacity008,
    stateLayersSurfaceDimOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceDimOpacity012,
    stateLayersSurfaceDimOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceDimOpacity016,
    stateLayersSurfaceOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceOpacity008,
    stateLayersSurfaceOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceOpacity012,
    stateLayersSurfaceOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersSurfaceOpacity016,
    stateLayersTertiaryContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryContainerOpacity008,
    stateLayersTertiaryContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryContainerOpacity012,
    stateLayersTertiaryContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryContainerOpacity016,
    stateLayersTertiaryFixedDimOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity008,
    stateLayersTertiaryFixedDimOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity012,
    stateLayersTertiaryFixedDimOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryFixedDimOpacity016,
    stateLayersTertiaryFixedOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryFixedOpacity008,
    stateLayersTertiaryFixedOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryFixedOpacity012,
    stateLayersTertiaryFixedOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryFixedOpacity016,
    stateLayersTertiaryOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryOpacity008,
    stateLayersTertiaryOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryOpacity012,
    stateLayersTertiaryOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersTertiaryOpacity016,
    stateLayersWarnContainerOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersWarnContainerOpacity008,
    stateLayersWarnContainerOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersWarnContainerOpacity012,
    stateLayersWarnContainerOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersWarnContainerOpacity016,
    stateLayersWarnOpacity008:
        BaseAquaPalette.dark().scheme.stateLayersWarnOpacity008,
    stateLayersWarnOpacity012:
        BaseAquaPalette.dark().scheme.stateLayersWarnOpacity012,
    stateLayersWarnOpacity016:
        BaseAquaPalette.dark().scheme.stateLayersWarnOpacity016,
    sysError: BaseAquaPalette.dark().scheme.sysError,
    sysErrorContainer: BaseAquaPalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BaseAquaPalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BaseAquaPalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BaseAquaPalette.dark().scheme.sysInverseSurface,
    sysOnError: BaseAquaPalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BaseAquaPalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BaseAquaPalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer:
        BaseAquaPalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BaseAquaPalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BaseAquaPalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BaseAquaPalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer:
        BaseAquaPalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BaseAquaPalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BaseAquaPalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BaseAquaPalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer:
        BaseAquaPalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BaseAquaPalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BaseAquaPalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BaseAquaPalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer:
        BaseAquaPalette.dark().scheme.sysOnTertiaryContainer,
    sysOnTertiaryFixed: BaseAquaPalette.dark().scheme.sysOnTertiaryFixed,
    sysOnTertiaryFixedVariant:
        BaseAquaPalette.dark().scheme.sysOnTertiaryFixedVariant,
    sysOnWarn: BaseAquaPalette.dark().scheme.sysOnWarn,
    sysOnWarnContainer: BaseAquaPalette.dark().scheme.sysOnWarnContainer,
    sysOutline: BaseAquaPalette.dark().scheme.sysOutline,
    sysOutlineVariant: BaseAquaPalette.dark().scheme.sysOutlineVariant,
    sysPrimary: BaseAquaPalette.dark().scheme.sysPrimary,
    sysPrimaryContainer: BaseAquaPalette.dark().scheme.sysPrimaryContainer,
    sysPrimaryFixed: BaseAquaPalette.dark().scheme.sysPrimaryFixed,
    sysPrimaryFixedDim: BaseAquaPalette.dark().scheme.sysPrimaryFixedDim,
    sysScrim: BaseAquaPalette.dark().scheme.sysScrim,
    sysSecondary: BaseAquaPalette.dark().scheme.sysSecondary,
    sysSecondaryContainer:
        BaseAquaPalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BaseAquaPalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BaseAquaPalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BaseAquaPalette.dark().scheme.sysShadow,
    sysSuccess: BaseAquaPalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BaseAquaPalette.dark().scheme.sysSuccessContainer,
    sysSurfaceTinted: BaseAquaPalette.dark().scheme.sysSurfaceTinted,
    sysSurface: BaseAquaPalette.dark().scheme.sysSurface,
    sysSurfaceBright: BaseAquaPalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BaseAquaPalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh:
        BaseAquaPalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BaseAquaPalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow:
        BaseAquaPalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BaseAquaPalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BaseAquaPalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BaseAquaPalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BaseAquaPalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BaseAquaPalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BaseAquaPalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BaseAquaPalette.dark().scheme.sysWarn,
    sysWarnContainer: BaseAquaPalette.dark().scheme.sysWarnContainer,
    aqua: BaseAquaPalette.dark().scheme.aqua,
    black: BaseAquaPalette.dark().scheme.black,
    blue: BaseAquaPalette.dark().scheme.blue,
    cyan: BaseAquaPalette.dark().scheme.cyan,
    grape: BaseAquaPalette.dark().scheme.grape,
    green: BaseAquaPalette.dark().scheme.green,
    lime: BaseAquaPalette.dark().scheme.lime,
    magenta: BaseAquaPalette.dark().scheme.magenta,
    orange: BaseAquaPalette.dark().scheme.orange,
    pink: BaseAquaPalette.dark().scheme.pink,
    purple: BaseAquaPalette.dark().scheme.purple,
    red: BaseAquaPalette.dark().scheme.red,
    white: BaseAquaPalette.dark().scheme.white,
    yellow: BaseAquaPalette.dark().scheme.yellow,
    onRed: BaseAquaPalette.dark().scheme.onRed,
    onOrange: BaseAquaPalette.dark().scheme.onOrange,
    onYellow: BaseAquaPalette.dark().scheme.onYellow,
    onLime: BaseAquaPalette.dark().scheme.onLime,
    onGreen: BaseAquaPalette.dark().scheme.onGreen,
    onAqua: BaseAquaPalette.dark().scheme.onAqua,
    onCyan: BaseAquaPalette.dark().scheme.onCyan,
    onBlue: BaseAquaPalette.dark().scheme.onBlue,
    onPurple: BaseAquaPalette.dark().scheme.onPurple,
    onGrape: BaseAquaPalette.dark().scheme.onGrape,
    onPink: BaseAquaPalette.dark().scheme.onPink,
    onMagenta: BaseAquaPalette.dark().scheme.onMagenta,
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
