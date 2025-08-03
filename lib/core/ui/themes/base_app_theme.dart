import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/palettes/base_palette.dart';
import 'package:design_system/core/ui/texts/base_texts.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseAppTheme extends GetxController {
  final Rx<ThemeMode> _themeMode = ThemeMode.system.obs;

  ThemeMode get themeMode => _themeMode.value;

  set themeMode(ThemeMode themeMode) {
    _themeMode.value = themeMode;
  }

  void changeTheme() {
    themeMode == ThemeMode.light
        ? themeMode = ThemeMode.dark
        : themeMode = ThemeMode.light;
    Get.changeThemeMode(themeMode);
  }

  static final light = ThemeData.light()
      .copyWith(extensions: [_lightAppColors, _lightTextTheme]);

  static final _lightAppColors = ColorsThemeExtension(
    hyperlinkActive: BasePalette.light().scheme.hyperlinkActive,
    hyperlinkFocused: BasePalette.light().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePalette.light().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePalette.light().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePalette.light().scheme.hyperlinkVisited,
    referrore0: BasePalette.light().scheme.referrore0,
    referrore10: BasePalette.light().scheme.referrore10,
    referrore100: BasePalette.light().scheme.referrore100,
    referrore15: BasePalette.light().scheme.referrore15,
    referrore2: BasePalette.light().scheme.referrore2,
    referrore20: BasePalette.light().scheme.referrore20,
    referrore30: BasePalette.light().scheme.referrore30,
    referrore4: BasePalette.light().scheme.referrore4,
    referrore40: BasePalette.light().scheme.referrore40,
    referrore50: BasePalette.light().scheme.referrore50,
    referrore6: BasePalette.light().scheme.referrore6,
    referrore60: BasePalette.light().scheme.referrore60,
    referrore70: BasePalette.light().scheme.referrore70,
    referrore8: BasePalette.light().scheme.referrore8,
    referrore80: BasePalette.light().scheme.referrore80,
    referrore85: BasePalette.light().scheme.referrore85,
    referrore90: BasePalette.light().scheme.referrore90,
    referrore93: BasePalette.light().scheme.referrore93,
    referrore95: BasePalette.light().scheme.referrore95,
    referrore98: BasePalette.light().scheme.referrore98,
    referrore99: BasePalette.light().scheme.referrore99,
    refneutraln0: BasePalette.light().scheme.refneutraln0,
    refneutraln10: BasePalette.light().scheme.refneutraln10,
    refneutraln100: BasePalette.light().scheme.refneutraln100,
    refneutraln15: BasePalette.light().scheme.refneutraln15,
    refneutraln2: BasePalette.light().scheme.refneutraln2,
    refneutraln20: BasePalette.light().scheme.refneutraln20,
    refneutraln30: BasePalette.light().scheme.refneutraln30,
    refneutraln4: BasePalette.light().scheme.refneutraln4,
    refneutraln40: BasePalette.light().scheme.refneutraln40,
    refneutraln50: BasePalette.light().scheme.refneutraln50,
    refneutraln6: BasePalette.light().scheme.refneutraln6,
    refneutraln60: BasePalette.light().scheme.refneutraln60,
    refneutraln70: BasePalette.light().scheme.refneutraln70,
    refneutraln8: BasePalette.light().scheme.refneutraln8,
    refneutraln80: BasePalette.light().scheme.refneutraln80,
    refneutraln85: BasePalette.light().scheme.refneutraln85,
    refneutraln90: BasePalette.light().scheme.refneutraln90,
    refneutraln93: BasePalette.light().scheme.refneutraln93,
    refneutraln95: BasePalette.light().scheme.refneutraln95,
    refneutraln98: BasePalette.light().scheme.refneutraln98,
    refneutraln99: BasePalette.light().scheme.refneutraln99,
    refneutralvariantnv0: BasePalette.light().scheme.refneutralvariantnv0,
    refneutralvariantnv10: BasePalette.light().scheme.refneutralvariantnv10,
    refneutralvariantnv100: BasePalette.light().scheme.refneutralvariantnv100,
    refneutralvariantnv15: BasePalette.light().scheme.refneutralvariantnv15,
    refneutralvariantnv2: BasePalette.light().scheme.refneutralvariantnv2,
    refneutralvariantnv20: BasePalette.light().scheme.refneutralvariantnv20,
    refneutralvariantnv30: BasePalette.light().scheme.refneutralvariantnv30,
    refneutralvariantnv4: BasePalette.light().scheme.refneutralvariantnv4,
    refneutralvariantnv40: BasePalette.light().scheme.refneutralvariantnv40,
    refneutralvariantnv50: BasePalette.light().scheme.refneutralvariantnv50,
    refneutralvariantnv6: BasePalette.light().scheme.refneutralvariantnv6,
    refneutralvariantnv60: BasePalette.light().scheme.refneutralvariantnv60,
    refneutralvariantnv70: BasePalette.light().scheme.refneutralvariantnv70,
    refneutralvariantnv8: BasePalette.light().scheme.refneutralvariantnv8,
    refneutralvariantnv80: BasePalette.light().scheme.refneutralvariantnv80,
    refneutralvariantnv85: BasePalette.light().scheme.refneutralvariantnv85,
    refneutralvariantnv90: BasePalette.light().scheme.refneutralvariantnv90,
    refneutralvariantnv93: BasePalette.light().scheme.refneutralvariantnv93,
    refneutralvariantnv95: BasePalette.light().scheme.refneutralvariantnv95,
    refneutralvariantnv98: BasePalette.light().scheme.refneutralvariantnv98,
    refneutralvariantnv99: BasePalette.light().scheme.refneutralvariantnv99,
    refprimaryp0: BasePalette.light().scheme.refprimaryp0,
    refprimaryp10: BasePalette.light().scheme.refprimaryp10,
    refprimaryp100: BasePalette.light().scheme.refprimaryp100,
    refprimaryp15: BasePalette.light().scheme.refprimaryp15,
    refprimaryp2: BasePalette.light().scheme.refprimaryp2,
    refprimaryp20: BasePalette.light().scheme.refprimaryp20,
    refprimaryp30: BasePalette.light().scheme.refprimaryp30,
    refprimaryp4: BasePalette.light().scheme.refprimaryp4,
    refprimaryp40: BasePalette.light().scheme.refprimaryp40,
    refprimaryp50: BasePalette.light().scheme.refprimaryp50,
    refprimaryp6: BasePalette.light().scheme.refprimaryp6,
    refprimaryp60: BasePalette.light().scheme.refprimaryp60,
    refprimaryp70: BasePalette.light().scheme.refprimaryp70,
    refprimaryp8: BasePalette.light().scheme.refprimaryp8,
    refprimaryp80: BasePalette.light().scheme.refprimaryp80,
    refprimaryp85: BasePalette.light().scheme.refprimaryp85,
    refprimaryp90: BasePalette.light().scheme.refprimaryp90,
    refprimaryp93: BasePalette.light().scheme.refprimaryp93,
    refprimaryp95: BasePalette.light().scheme.refprimaryp95,
    refprimaryp98: BasePalette.light().scheme.refprimaryp98,
    refprimaryp99: BasePalette.light().scheme.refprimaryp99,
    refsecondarys0: BasePalette.light().scheme.refsecondarys0,
    refsecondarys10: BasePalette.light().scheme.refsecondarys10,
    refsecondarys100: BasePalette.light().scheme.refsecondarys100,
    refsecondarys15: BasePalette.light().scheme.refsecondarys15,
    refsecondarys2: BasePalette.light().scheme.refsecondarys2,
    refsecondarys20: BasePalette.light().scheme.refsecondarys20,
    refsecondarys30: BasePalette.light().scheme.refsecondarys30,
    refsecondarys4: BasePalette.light().scheme.refsecondarys4,
    refsecondarys40: BasePalette.light().scheme.refsecondarys40,
    refsecondarys50: BasePalette.light().scheme.refsecondarys50,
    refsecondarys6: BasePalette.light().scheme.refsecondarys6,
    refsecondarys60: BasePalette.light().scheme.refsecondarys60,
    refsecondarys70: BasePalette.light().scheme.refsecondarys70,
    refsecondarys8: BasePalette.light().scheme.refsecondarys8,
    refsecondarys80: BasePalette.light().scheme.refsecondarys80,
    refsecondarys85: BasePalette.light().scheme.refsecondarys85,
    refsecondarys90: BasePalette.light().scheme.refsecondarys90,
    refsecondarys93: BasePalette.light().scheme.refsecondarys93,
    refsecondarys95: BasePalette.light().scheme.refsecondarys95,
    refsecondarys98: BasePalette.light().scheme.refsecondarys98,
    refsecondarys99: BasePalette.light().scheme.refsecondarys99,
    refsuccessu0: BasePalette.light().scheme.refsuccessu0,
    refsuccessu10: BasePalette.light().scheme.refsuccessu10,
    refsuccessu100: BasePalette.light().scheme.refsuccessu100,
    refsuccessu15: BasePalette.light().scheme.refsuccessu15,
    refsuccessu2: BasePalette.light().scheme.refsuccessu2,
    refsuccessu20: BasePalette.light().scheme.refsuccessu20,
    refsuccessu30: BasePalette.light().scheme.refsuccessu30,
    refsuccessu4: BasePalette.light().scheme.refsuccessu4,
    refsuccessu40: BasePalette.light().scheme.refsuccessu40,
    refsuccessu50: BasePalette.light().scheme.refsuccessu50,
    refsuccessu6: BasePalette.light().scheme.refsuccessu6,
    refsuccessu60: BasePalette.light().scheme.refsuccessu60,
    refsuccessu70: BasePalette.light().scheme.refsuccessu70,
    refsuccessu8: BasePalette.light().scheme.refsuccessu8,
    refsuccessu80: BasePalette.light().scheme.refsuccessu80,
    refsuccessu85: BasePalette.light().scheme.refsuccessu85,
    refsuccessu90: BasePalette.light().scheme.refsuccessu90,
    refsuccessu93: BasePalette.light().scheme.refsuccessu93,
    refsuccessu95: BasePalette.light().scheme.refsuccessu95,
    refsuccessu98: BasePalette.light().scheme.refsuccessu98,
    refsuccessu99: BasePalette.light().scheme.refsuccessu99,
    reftertiaryt0: BasePalette.light().scheme.reftertiaryt0,
    reftertiaryt10: BasePalette.light().scheme.reftertiaryt10,
    reftertiaryt100: BasePalette.light().scheme.reftertiaryt100,
    reftertiaryt15: BasePalette.light().scheme.reftertiaryt15,
    reftertiaryt2: BasePalette.light().scheme.reftertiaryt2,
    reftertiaryt20: BasePalette.light().scheme.reftertiaryt20,
    reftertiaryt30: BasePalette.light().scheme.reftertiaryt30,
    reftertiaryt4: BasePalette.light().scheme.reftertiaryt4,
    reftertiaryt40: BasePalette.light().scheme.reftertiaryt40,
    reftertiaryt50: BasePalette.light().scheme.reftertiaryt50,
    reftertiaryt6: BasePalette.light().scheme.reftertiaryt6,
    reftertiaryt60: BasePalette.light().scheme.reftertiaryt60,
    reftertiaryt70: BasePalette.light().scheme.reftertiaryt70,
    reftertiaryt8: BasePalette.light().scheme.reftertiaryt8,
    reftertiaryt80: BasePalette.light().scheme.reftertiaryt80,
    reftertiaryt85: BasePalette.light().scheme.reftertiaryt85,
    reftertiaryt90: BasePalette.light().scheme.reftertiaryt90,
    reftertiaryt93: BasePalette.light().scheme.reftertiaryt93,
    reftertiaryt95: BasePalette.light().scheme.reftertiaryt95,
    reftertiaryt98: BasePalette.light().scheme.reftertiaryt98,
    reftertiaryt99: BasePalette.light().scheme.reftertiaryt99,
    refwarnw0: BasePalette.light().scheme.refwarnw0,
    refwarnw10: BasePalette.light().scheme.refwarnw10,
    refwarnw100: BasePalette.light().scheme.refwarnw100,
    refwarnw15: BasePalette.light().scheme.refwarnw15,
    refwarnw2: BasePalette.light().scheme.refwarnw2,
    refwarnw20: BasePalette.light().scheme.refwarnw20,
    refwarnw30: BasePalette.light().scheme.refwarnw30,
    refwarnw4: BasePalette.light().scheme.refwarnw4,
    refwarnw40: BasePalette.light().scheme.refwarnw40,
    refwarnw50: BasePalette.light().scheme.refwarnw50,
    refwarnw6: BasePalette.light().scheme.refwarnw6,
    refwarnw60: BasePalette.light().scheme.refwarnw60,
    refwarnw70: BasePalette.light().scheme.refwarnw70,
    refwarnw8: BasePalette.light().scheme.refwarnw8,
    refwarnw80: BasePalette.light().scheme.refwarnw80,
    refwarnw85: BasePalette.light().scheme.refwarnw85,
    refwarnw90: BasePalette.light().scheme.refwarnw90,
    refwarnw93: BasePalette.light().scheme.refwarnw93,
    refwarnw95: BasePalette.light().scheme.refwarnw95,
    refwarnw98: BasePalette.light().scheme.refwarnw98,
    refwarnw99: BasePalette.light().scheme.refwarnw99,
    statelayerserrorcontaineropacity008:
        BasePalette.light().scheme.statelayerserrorcontaineropacity008,
    statelayerserrorcontaineropacity012:
        BasePalette.light().scheme.statelayerserrorcontaineropacity012,
    statelayerserrorcontaineropacity016:
        BasePalette.light().scheme.statelayerserrorcontaineropacity016,
    statelayerserroropacity008:
        BasePalette.light().scheme.statelayerserroropacity008,
    statelayerserroropacity012:
        BasePalette.light().scheme.statelayerserroropacity012,
    statelayerserroropacity016:
        BasePalette.light().scheme.statelayerserroropacity016,
    statelayersinverseonsurfaceopacity008:
        BasePalette.light().scheme.statelayersinverseonsurfaceopacity008,
    statelayersinverseonsurfaceopacity012:
        BasePalette.light().scheme.statelayersinverseonsurfaceopacity012,
    statelayersinverseonsurfaceopacity016:
        BasePalette.light().scheme.statelayersinverseonsurfaceopacity016,
    statelayersinverseprimaryopacity008:
        BasePalette.light().scheme.statelayersinverseprimaryopacity008,
    statelayersinverseprimaryopacity012:
        BasePalette.light().scheme.statelayersinverseprimaryopacity012,
    statelayersinverseprimaryopacity016:
        BasePalette.light().scheme.statelayersinverseprimaryopacity016,
    statelayersinversesurfaceopacity008:
        BasePalette.light().scheme.statelayersinversesurfaceopacity008,
    statelayersinversesurfaceopacity012:
        BasePalette.light().scheme.statelayersinversesurfaceopacity012,
    statelayersinversesurfaceopacity016:
        BasePalette.light().scheme.statelayersinversesurfaceopacity016,
    statelayersonerrorcontaineropacity008:
        BasePalette.light().scheme.statelayersonerrorcontaineropacity008,
    statelayersonerrorcontaineropacity012:
        BasePalette.light().scheme.statelayersonerrorcontaineropacity012,
    statelayersonerrorcontaineropacity016:
        BasePalette.light().scheme.statelayersonerrorcontaineropacity016,
    statelayersonerroropacity008:
        BasePalette.light().scheme.statelayersonerroropacity008,
    statelayersonerroropacity012:
        BasePalette.light().scheme.statelayersonerroropacity012,
    statelayersonerroropacity016:
        BasePalette.light().scheme.statelayersonerroropacity016,
    statelayersonprimarycontaineropacity008:
        BasePalette.light().scheme.statelayersonprimarycontaineropacity008,
    statelayersonprimarycontaineropacity012:
        BasePalette.light().scheme.statelayersonprimarycontaineropacity012,
    statelayersonprimarycontaineropacity016:
        BasePalette.light().scheme.statelayersonprimarycontaineropacity016,
    statelayersonprimaryfixedopacity008:
        BasePalette.light().scheme.statelayersonprimaryfixedopacity008,
    statelayersonprimaryfixedopacity012:
        BasePalette.light().scheme.statelayersonprimaryfixedopacity012,
    statelayersonprimaryfixedopacity016:
        BasePalette.light().scheme.statelayersonprimaryfixedopacity016,
    statelayersonprimaryfixedvariantopacity008:
        BasePalette.light().scheme.statelayersonprimaryfixedvariantopacity008,
    statelayersonprimaryfixedvariantopacity012:
        BasePalette.light().scheme.statelayersonprimaryfixedvariantopacity012,
    statelayersonprimaryfixedvariantopacity016:
        BasePalette.light().scheme.statelayersonprimaryfixedvariantopacity016,
    statelayersonprimaryopacity008:
        BasePalette.light().scheme.statelayersonprimaryopacity008,
    statelayersonprimaryopacity012:
        BasePalette.light().scheme.statelayersonprimaryopacity012,
    statelayersonprimaryopacity016:
        BasePalette.light().scheme.statelayersonprimaryopacity016,
    statelayersonsecondarycontaineropacity008:
        BasePalette.light().scheme.statelayersonsecondarycontaineropacity008,
    statelayersonsecondarycontaineropacity012:
        BasePalette.light().scheme.statelayersonsecondarycontaineropacity012,
    statelayersonsecondarycontaineropacity016:
        BasePalette.light().scheme.statelayersonsecondarycontaineropacity016,
    statelayersonsecondaryfixedopacity008:
        BasePalette.light().scheme.statelayersonsecondaryfixedopacity008,
    statelayersonsecondaryfixedopacity012:
        BasePalette.light().scheme.statelayersonsecondaryfixedopacity012,
    statelayersonsecondaryfixedopacity016:
        BasePalette.light().scheme.statelayersonsecondaryfixedopacity016,
    statelayersonsecondaryfixedvariantopacity008:
        BasePalette.light().scheme.statelayersonsecondaryfixedvariantopacity008,
    statelayersonsecondaryfixedvariantopacity012:
        BasePalette.light().scheme.statelayersonsecondaryfixedvariantopacity012,
    statelayersonsecondaryfixedvariantopacity016:
        BasePalette.light().scheme.statelayersonsecondaryfixedvariantopacity016,
    statelayersonsecondaryopacity008:
        BasePalette.light().scheme.statelayersonsecondaryopacity008,
    statelayersonsecondaryopacity012:
        BasePalette.light().scheme.statelayersonsecondaryopacity012,
    statelayersonsecondaryopacity016:
        BasePalette.light().scheme.statelayersonsecondaryopacity016,
    statelayersonsuccesscontaineropacity008:
        BasePalette.light().scheme.statelayersonsuccesscontaineropacity008,
    statelayersonsuccesscontaineropacity012:
        BasePalette.light().scheme.statelayersonsuccesscontaineropacity012,
    statelayersonsuccesscontaineropacity016:
        BasePalette.light().scheme.statelayersonsuccesscontaineropacity016,
    statelayersonsuccessopacity008:
        BasePalette.light().scheme.statelayersonsuccessopacity008,
    statelayersonsuccessopacity012:
        BasePalette.light().scheme.statelayersonsuccessopacity012,
    statelayersonsuccessopacity016:
        BasePalette.light().scheme.statelayersonsuccessopacity016,
    statelayersonsurfaceopacity008:
        BasePalette.light().scheme.statelayersonsurfaceopacity008,
    statelayersonsurfaceopacity012:
        BasePalette.light().scheme.statelayersonsurfaceopacity012,
    statelayersonsurfaceopacity016:
        BasePalette.light().scheme.statelayersonsurfaceopacity016,
    statelayersonsurfacevariantopacity008:
        BasePalette.light().scheme.statelayersonsurfacevariantopacity008,
    statelayersonsurfacevariantopacity012:
        BasePalette.light().scheme.statelayersonsurfacevariantopacity012,
    statelayersonsurfacevariantopacity016:
        BasePalette.light().scheme.statelayersonsurfacevariantopacity016,
    statelayersontertiarycontaineropacity008:
        BasePalette.light().scheme.statelayersontertiarycontaineropacity008,
    statelayersontertiarycontaineropacity012:
        BasePalette.light().scheme.statelayersontertiarycontaineropacity012,
    statelayersontertiarycontaineropacity016:
        BasePalette.light().scheme.statelayersontertiarycontaineropacity016,
    statelayersontertiaryfixedopacity008:
        BasePalette.light().scheme.statelayersontertiaryfixedopacity008,
    statelayersontertiaryfixedopacity012:
        BasePalette.light().scheme.statelayersontertiaryfixedopacity012,
    statelayersontertiaryfixedopacity016:
        BasePalette.light().scheme.statelayersontertiaryfixedopacity016,
    statelayersontertiaryfixedvariantopacity008:
        BasePalette.light().scheme.statelayersontertiaryfixedvariantopacity008,
    statelayersontertiaryfixedvariantopacity012:
        BasePalette.light().scheme.statelayersontertiaryfixedvariantopacity012,
    statelayersontertiaryfixedvariantopacity016:
        BasePalette.light().scheme.statelayersontertiaryfixedvariantopacity016,
    statelayersontertiaryopacity008:
        BasePalette.light().scheme.statelayersontertiaryopacity008,
    statelayersontertiaryopacity012:
        BasePalette.light().scheme.statelayersontertiaryopacity012,
    statelayersontertiaryopacity016:
        BasePalette.light().scheme.statelayersontertiaryopacity016,
    statelayersonwarncontaineropacity008:
        BasePalette.light().scheme.statelayersonwarncontaineropacity008,
    statelayersonwarncontaineropacity012:
        BasePalette.light().scheme.statelayersonwarncontaineropacity012,
    statelayersonwarncontaineropacity016:
        BasePalette.light().scheme.statelayersonwarncontaineropacity016,
    statelayersonwarnopacity008:
        BasePalette.light().scheme.statelayersonwarnopacity008,
    statelayersonwarnopacity012:
        BasePalette.light().scheme.statelayersonwarnopacity012,
    statelayersonwarnopacity016:
        BasePalette.light().scheme.statelayersonwarnopacity016,
    statelayersoutlineopacity008:
        BasePalette.light().scheme.statelayersoutlineopacity008,
    statelayersoutlineopacity012:
        BasePalette.light().scheme.statelayersoutlineopacity012,
    statelayersoutlineopacity016:
        BasePalette.light().scheme.statelayersoutlineopacity016,
    statelayersoutlinevariantopacity008:
        BasePalette.light().scheme.statelayersoutlinevariantopacity008,
    statelayersoutlinevariantopacity012:
        BasePalette.light().scheme.statelayersoutlinevariantopacity012,
    statelayersoutlinevariantopacity016:
        BasePalette.light().scheme.statelayersoutlinevariantopacity016,
    statelayersprimarycontaineropacity008:
        BasePalette.light().scheme.statelayersprimarycontaineropacity008,
    statelayersprimarycontaineropacity012:
        BasePalette.light().scheme.statelayersprimarycontaineropacity012,
    statelayersprimarycontaineropacity016:
        BasePalette.light().scheme.statelayersprimarycontaineropacity016,
    statelayersprimaryfixeddimopacity008:
        BasePalette.light().scheme.statelayersprimaryfixeddimopacity008,
    statelayersprimaryfixeddimopacity012:
        BasePalette.light().scheme.statelayersprimaryfixeddimopacity012,
    statelayersprimaryfixeddimopacity016:
        BasePalette.light().scheme.statelayersprimaryfixeddimopacity016,
    statelayersprimaryfixedopacity008:
        BasePalette.light().scheme.statelayersprimaryfixedopacity008,
    statelayersprimaryfixedopacity012:
        BasePalette.light().scheme.statelayersprimaryfixedopacity012,
    statelayersprimaryfixedopacity016:
        BasePalette.light().scheme.statelayersprimaryfixedopacity016,
    statelayersprimaryopacity008:
        BasePalette.light().scheme.statelayersprimaryopacity008,
    statelayersprimaryopacity012:
        BasePalette.light().scheme.statelayersprimaryopacity012,
    statelayersprimaryopacity016:
        BasePalette.light().scheme.statelayersprimaryopacity016,
    statelayersscrimopacity008:
        BasePalette.light().scheme.statelayersscrimopacity008,
    statelayersscrimopacity012:
        BasePalette.light().scheme.statelayersscrimopacity012,
    statelayersscrimopacity016:
        BasePalette.light().scheme.statelayersscrimopacity016,
    statelayerssecondarycontaineropacity008:
        BasePalette.light().scheme.statelayerssecondarycontaineropacity008,
    statelayerssecondarycontaineropacity012:
        BasePalette.light().scheme.statelayerssecondarycontaineropacity012,
    statelayerssecondarycontaineropacity016:
        BasePalette.light().scheme.statelayerssecondarycontaineropacity016,
    statelayerssecondaryfixeddimopacity008:
        BasePalette.light().scheme.statelayerssecondaryfixeddimopacity008,
    statelayerssecondaryfixeddimopacity012:
        BasePalette.light().scheme.statelayerssecondaryfixeddimopacity012,
    statelayerssecondaryfixeddimopacity016:
        BasePalette.light().scheme.statelayerssecondaryfixeddimopacity016,
    statelayerssecondaryfixedopacity008:
        BasePalette.light().scheme.statelayerssecondaryfixedopacity008,
    statelayerssecondaryfixedopacity012:
        BasePalette.light().scheme.statelayerssecondaryfixedopacity012,
    statelayerssecondaryfixedopacity016:
        BasePalette.light().scheme.statelayerssecondaryfixedopacity016,
    statelayerssecondaryopacity008:
        BasePalette.light().scheme.statelayerssecondaryopacity008,
    statelayerssecondaryopacity012:
        BasePalette.light().scheme.statelayerssecondaryopacity012,
    statelayerssecondaryopacity016:
        BasePalette.light().scheme.statelayerssecondaryopacity016,
    statelayersshadowopacity008:
        BasePalette.light().scheme.statelayersshadowopacity008,
    statelayersshadowopacity012:
        BasePalette.light().scheme.statelayersshadowopacity012,
    statelayersshadowopacity016:
        BasePalette.light().scheme.statelayersshadowopacity016,
    statelayerssuccesscontaineropacity008:
        BasePalette.light().scheme.statelayerssuccesscontaineropacity008,
    statelayerssuccesscontaineropacity012:
        BasePalette.light().scheme.statelayerssuccesscontaineropacity012,
    statelayerssuccesscontaineropacity016:
        BasePalette.light().scheme.statelayerssuccesscontaineropacity016,
    statelayerssuccessopacity008:
        BasePalette.light().scheme.statelayerssuccessopacity008,
    statelayerssuccessopacity012:
        BasePalette.light().scheme.statelayerssuccessopacity012,
    statelayerssuccessopacity016:
        BasePalette.light().scheme.statelayerssuccessopacity016,
    statelayerssurfacebrightopacity008:
        BasePalette.light().scheme.statelayerssurfacebrightopacity008,
    statelayerssurfacebrightopacity012:
        BasePalette.light().scheme.statelayerssurfacebrightopacity012,
    statelayerssurfacebrightopacity016:
        BasePalette.light().scheme.statelayerssurfacebrightopacity016,
    statelayerssurfacecontainerhighopacity008:
        BasePalette.light().scheme.statelayerssurfacecontainerhighopacity008,
    statelayerssurfacecontainerhighopacity012:
        BasePalette.light().scheme.statelayerssurfacecontainerhighopacity012,
    statelayerssurfacecontainerhighopacity016:
        BasePalette.light().scheme.statelayerssurfacecontainerhighopacity016,
    statelayerssurfacecontainerhighestopacity008:
        BasePalette.light().scheme.statelayerssurfacecontainerhighestopacity008,
    statelayerssurfacecontainerhighestopacity012:
        BasePalette.light().scheme.statelayerssurfacecontainerhighestopacity012,
    statelayerssurfacecontainerhighestopacity016:
        BasePalette.light().scheme.statelayerssurfacecontainerhighestopacity016,
    statelayerssurfacecontainerlowopacity008:
        BasePalette.light().scheme.statelayerssurfacecontainerlowopacity008,
    statelayerssurfacecontainerlowopacity012:
        BasePalette.light().scheme.statelayerssurfacecontainerlowopacity012,
    statelayerssurfacecontainerlowopacity016:
        BasePalette.light().scheme.statelayerssurfacecontainerlowopacity016,
    statelayerssurfacecontainerlowestopacity008:
        BasePalette.light().scheme.statelayerssurfacecontainerlowestopacity008,
    statelayerssurfacecontainerlowestopacity012:
        BasePalette.light().scheme.statelayerssurfacecontainerlowestopacity012,
    statelayerssurfacecontainerlowestopacity016:
        BasePalette.light().scheme.statelayerssurfacecontainerlowestopacity016,
    statelayerssurfacecontaineropacity008:
        BasePalette.light().scheme.statelayerssurfacecontaineropacity008,
    statelayerssurfacecontaineropacity012:
        BasePalette.light().scheme.statelayerssurfacecontaineropacity012,
    statelayerssurfacecontaineropacity016:
        BasePalette.light().scheme.statelayerssurfacecontaineropacity016,
    statelayerssurfacedimopacity008:
        BasePalette.light().scheme.statelayerssurfacedimopacity008,
    statelayerssurfacedimopacity012:
        BasePalette.light().scheme.statelayerssurfacedimopacity012,
    statelayerssurfacedimopacity016:
        BasePalette.light().scheme.statelayerssurfacedimopacity016,
    statelayerssurfaceopacity008:
        BasePalette.light().scheme.statelayerssurfaceopacity008,
    statelayerssurfaceopacity012:
        BasePalette.light().scheme.statelayerssurfaceopacity012,
    statelayerssurfaceopacity016:
        BasePalette.light().scheme.statelayerssurfaceopacity016,
    statelayerstertiarycontaineropacity008:
        BasePalette.light().scheme.statelayerstertiarycontaineropacity008,
    statelayerstertiarycontaineropacity012:
        BasePalette.light().scheme.statelayerstertiarycontaineropacity012,
    statelayerstertiarycontaineropacity016:
        BasePalette.light().scheme.statelayerstertiarycontaineropacity016,
    statelayerstertiaryfixeddimopacity008:
        BasePalette.light().scheme.statelayerstertiaryfixeddimopacity008,
    statelayerstertiaryfixeddimopacity012:
        BasePalette.light().scheme.statelayerstertiaryfixeddimopacity012,
    statelayerstertiaryfixeddimopacity016:
        BasePalette.light().scheme.statelayerstertiaryfixeddimopacity016,
    statelayerstertiaryfixedopacity008:
        BasePalette.light().scheme.statelayerstertiaryfixedopacity008,
    statelayerstertiaryfixedopacity012:
        BasePalette.light().scheme.statelayerstertiaryfixedopacity012,
    statelayerstertiaryfixedopacity016:
        BasePalette.light().scheme.statelayerstertiaryfixedopacity016,
    statelayerstertiaryopacity008:
        BasePalette.light().scheme.statelayerstertiaryopacity008,
    statelayerstertiaryopacity012:
        BasePalette.light().scheme.statelayerstertiaryopacity012,
    statelayerstertiaryopacity016:
        BasePalette.light().scheme.statelayerssurfacecontaineropacity016,
    statelayerswarncontaineropacity008:
        BasePalette.light().scheme.statelayerswarncontaineropacity008,
    statelayerswarncontaineropacity012:
        BasePalette.light().scheme.statelayerswarncontaineropacity012,
    statelayerswarncontaineropacity016:
        BasePalette.light().scheme.statelayerswarncontaineropacity016,
    statelayerswarnopacity008:
        BasePalette.light().scheme.statelayerswarnopacity008,
    statelayerswarnopacity012:
        BasePalette.light().scheme.statelayerswarnopacity012,
    statelayerswarnopacity016:
        BasePalette.light().scheme.statelayerswarnopacity016,
    sysError: BasePalette.light().scheme.sysError,
    sysErrorContainer: BasePalette.light().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePalette.light().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePalette.light().scheme.sysInversePrimary,
    sysInverseSurface: BasePalette.light().scheme.sysInverseSurface,
    sysOnError: BasePalette.light().scheme.sysOnError,
    sysOnErrorContainer: BasePalette.light().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePalette.light().scheme.sysOnPrimary,
    sysOnPrimaryContainer: BasePalette.light().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePalette.light().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePalette.light().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePalette.light().scheme.sysOnSecondary,
    sysOnSecondaryContainer: BasePalette.light().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePalette.light().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePalette.light().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePalette.light().scheme.sysOnSuccess,
    sysOnSuccessContainer: BasePalette.light().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePalette.light().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePalette.light().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePalette.light().scheme.sysOnTertiary,
    sysOnTertiaryContainer: BasePalette.light().scheme.sysOnTertiaryContainer,
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
    sysSecondaryContainer: BasePalette.light().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePalette.light().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePalette.light().scheme.sysSecondaryFixedDim,
    sysShadow: BasePalette.light().scheme.sysShadow,
    sysSuccess: BasePalette.light().scheme.sysSuccess,
    sysSuccessContainer: BasePalette.light().scheme.sysSuccessContainer,
    sysSurface: BasePalette.light().scheme.sysSurface,
    sysSurfaceBright: BasePalette.light().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePalette.light().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh: BasePalette.light().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePalette.light().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow: BasePalette.light().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePalette.light().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePalette.light().scheme.sysSurfaceDim,
    sysTertiary: BasePalette.light().scheme.sysTertiary,
    sysTertiaryContainer: BasePalette.light().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePalette.light().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePalette.light().scheme.sysTertiaryFixedDim,
    sysWarn: BasePalette.light().scheme.sysWarn,
    sysWarnContainer: BasePalette.light().scheme.sysWarnContainer,
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
    labelLarge: BaseTexts().labelLarge,
    labelMedium: BaseTexts().labelMedium,
    labelSmall: BaseTexts().labelSmall,
  );

  static final dark = ThemeData.dark().copyWith(
    extensions: [_darkAppColors, _darkTextTheme],
  );

  static final _darkAppColors = ColorsThemeExtension(
    hyperlinkActive: BasePalette.dark().scheme.hyperlinkActive,
    hyperlinkFocused: BasePalette.dark().scheme.hyperlinkFocused,
    hyperlinkHovered: BasePalette.dark().scheme.hyperlinkHovered,
    hyperlinkNormal: BasePalette.dark().scheme.hyperlinkNormal,
    hyperlinkVisited: BasePalette.dark().scheme.hyperlinkVisited,
    referrore0: BasePalette.dark().scheme.referrore0,
    referrore10: BasePalette.dark().scheme.referrore10,
    referrore100: BasePalette.dark().scheme.referrore100,
    referrore15: BasePalette.dark().scheme.referrore15,
    referrore2: BasePalette.dark().scheme.referrore2,
    referrore20: BasePalette.dark().scheme.referrore20,
    referrore30: BasePalette.dark().scheme.referrore30,
    referrore4: BasePalette.dark().scheme.referrore4,
    referrore40: BasePalette.dark().scheme.referrore40,
    referrore50: BasePalette.dark().scheme.referrore50,
    referrore6: BasePalette.dark().scheme.referrore6,
    referrore60: BasePalette.dark().scheme.referrore60,
    referrore70: BasePalette.dark().scheme.referrore70,
    referrore8: BasePalette.dark().scheme.referrore8,
    referrore80: BasePalette.dark().scheme.referrore80,
    referrore85: BasePalette.dark().scheme.referrore85,
    referrore90: BasePalette.dark().scheme.referrore90,
    referrore93: BasePalette.dark().scheme.referrore93,
    referrore95: BasePalette.dark().scheme.referrore95,
    referrore98: BasePalette.dark().scheme.referrore98,
    referrore99: BasePalette.dark().scheme.referrore99,
    refneutraln0: BasePalette.dark().scheme.refneutraln0,
    refneutraln10: BasePalette.dark().scheme.refneutraln10,
    refneutraln100: BasePalette.dark().scheme.refneutraln100,
    refneutraln15: BasePalette.dark().scheme.refneutraln15,
    refneutraln2: BasePalette.dark().scheme.refneutraln2,
    refneutraln20: BasePalette.dark().scheme.refneutraln20,
    refneutraln30: BasePalette.dark().scheme.refneutraln30,
    refneutraln4: BasePalette.dark().scheme.refneutraln4,
    refneutraln40: BasePalette.dark().scheme.refneutraln40,
    refneutraln50: BasePalette.dark().scheme.refneutraln50,
    refneutraln6: BasePalette.dark().scheme.refneutraln6,
    refneutraln60: BasePalette.dark().scheme.refneutraln60,
    refneutraln70: BasePalette.dark().scheme.refneutraln70,
    refneutraln8: BasePalette.dark().scheme.refneutraln8,
    refneutraln80: BasePalette.dark().scheme.refneutraln80,
    refneutraln85: BasePalette.dark().scheme.refneutraln85,
    refneutraln90: BasePalette.dark().scheme.refneutraln90,
    refneutraln93: BasePalette.dark().scheme.refneutraln93,
    refneutraln95: BasePalette.dark().scheme.refneutraln95,
    refneutraln98: BasePalette.dark().scheme.refneutraln98,
    refneutraln99: BasePalette.dark().scheme.refneutraln99,
    refneutralvariantnv0: BasePalette.dark().scheme.refneutralvariantnv0,
    refneutralvariantnv10: BasePalette.dark().scheme.refneutralvariantnv10,
    refneutralvariantnv100: BasePalette.dark().scheme.refneutralvariantnv100,
    refneutralvariantnv15: BasePalette.dark().scheme.refneutralvariantnv15,
    refneutralvariantnv2: BasePalette.dark().scheme.refneutralvariantnv2,
    refneutralvariantnv20: BasePalette.dark().scheme.refneutralvariantnv20,
    refneutralvariantnv30: BasePalette.dark().scheme.refneutralvariantnv30,
    refneutralvariantnv4: BasePalette.dark().scheme.refneutralvariantnv4,
    refneutralvariantnv40: BasePalette.dark().scheme.refneutralvariantnv40,
    refneutralvariantnv50: BasePalette.dark().scheme.refneutralvariantnv50,
    refneutralvariantnv6: BasePalette.dark().scheme.refneutralvariantnv6,
    refneutralvariantnv60: BasePalette.dark().scheme.refneutralvariantnv60,
    refneutralvariantnv70: BasePalette.dark().scheme.refneutralvariantnv70,
    refneutralvariantnv8: BasePalette.dark().scheme.refneutralvariantnv8,
    refneutralvariantnv80: BasePalette.dark().scheme.refneutralvariantnv80,
    refneutralvariantnv85: BasePalette.dark().scheme.refneutralvariantnv85,
    refneutralvariantnv90: BasePalette.dark().scheme.refneutralvariantnv90,
    refneutralvariantnv93: BasePalette.dark().scheme.refneutralvariantnv93,
    refneutralvariantnv95: BasePalette.dark().scheme.refneutralvariantnv95,
    refneutralvariantnv98: BasePalette.dark().scheme.refneutralvariantnv98,
    refneutralvariantnv99: BasePalette.dark().scheme.refneutralvariantnv99,
    refprimaryp0: BasePalette.dark().scheme.refprimaryp0,
    refprimaryp10: BasePalette.dark().scheme.refprimaryp10,
    refprimaryp100: BasePalette.dark().scheme.refprimaryp100,
    refprimaryp15: BasePalette.dark().scheme.refprimaryp15,
    refprimaryp2: BasePalette.dark().scheme.refprimaryp2,
    refprimaryp20: BasePalette.dark().scheme.refprimaryp20,
    refprimaryp30: BasePalette.dark().scheme.refprimaryp30,
    refprimaryp4: BasePalette.dark().scheme.refprimaryp4,
    refprimaryp40: BasePalette.dark().scheme.refprimaryp40,
    refprimaryp50: BasePalette.dark().scheme.refprimaryp50,
    refprimaryp6: BasePalette.dark().scheme.refprimaryp6,
    refprimaryp60: BasePalette.dark().scheme.refprimaryp60,
    refprimaryp70: BasePalette.dark().scheme.refprimaryp70,
    refprimaryp8: BasePalette.dark().scheme.refprimaryp8,
    refprimaryp80: BasePalette.dark().scheme.refprimaryp80,
    refprimaryp85: BasePalette.dark().scheme.refprimaryp85,
    refprimaryp90: BasePalette.dark().scheme.refprimaryp90,
    refprimaryp93: BasePalette.dark().scheme.refprimaryp93,
    refprimaryp95: BasePalette.dark().scheme.refprimaryp95,
    refprimaryp98: BasePalette.dark().scheme.refprimaryp98,
    refprimaryp99: BasePalette.dark().scheme.refprimaryp99,
    refsecondarys0: BasePalette.dark().scheme.refsecondarys0,
    refsecondarys10: BasePalette.dark().scheme.refsecondarys10,
    refsecondarys100: BasePalette.dark().scheme.refsecondarys100,
    refsecondarys15: BasePalette.dark().scheme.refsecondarys15,
    refsecondarys2: BasePalette.dark().scheme.refsecondarys2,
    refsecondarys20: BasePalette.dark().scheme.refsecondarys20,
    refsecondarys30: BasePalette.dark().scheme.refsecondarys30,
    refsecondarys4: BasePalette.dark().scheme.refsecondarys4,
    refsecondarys40: BasePalette.dark().scheme.refsecondarys40,
    refsecondarys50: BasePalette.dark().scheme.refsecondarys50,
    refsecondarys6: BasePalette.dark().scheme.refsecondarys6,
    refsecondarys60: BasePalette.dark().scheme.refsecondarys60,
    refsecondarys70: BasePalette.dark().scheme.refsecondarys70,
    refsecondarys8: BasePalette.dark().scheme.refsecondarys8,
    refsecondarys80: BasePalette.dark().scheme.refsecondarys80,
    refsecondarys85: BasePalette.dark().scheme.refsecondarys85,
    refsecondarys90: BasePalette.dark().scheme.refsecondarys90,
    refsecondarys93: BasePalette.dark().scheme.refsecondarys93,
    refsecondarys95: BasePalette.dark().scheme.refsecondarys95,
    refsecondarys98: BasePalette.dark().scheme.refsecondarys98,
    refsecondarys99: BasePalette.dark().scheme.refsecondarys99,
    refsuccessu0: BasePalette.dark().scheme.refsuccessu0,
    refsuccessu10: BasePalette.dark().scheme.refsuccessu10,
    refsuccessu100: BasePalette.dark().scheme.refsuccessu100,
    refsuccessu15: BasePalette.dark().scheme.refsuccessu15,
    refsuccessu2: BasePalette.dark().scheme.refsuccessu2,
    refsuccessu20: BasePalette.dark().scheme.refsuccessu20,
    refsuccessu30: BasePalette.dark().scheme.refsuccessu30,
    refsuccessu4: BasePalette.dark().scheme.refsuccessu4,
    refsuccessu40: BasePalette.dark().scheme.refsuccessu40,
    refsuccessu50: BasePalette.dark().scheme.refsuccessu50,
    refsuccessu6: BasePalette.dark().scheme.refsuccessu6,
    refsuccessu60: BasePalette.dark().scheme.refsuccessu60,
    refsuccessu70: BasePalette.dark().scheme.refsuccessu70,
    refsuccessu8: BasePalette.dark().scheme.refsuccessu8,
    refsuccessu80: BasePalette.dark().scheme.refsuccessu80,
    refsuccessu85: BasePalette.dark().scheme.refsuccessu85,
    refsuccessu90: BasePalette.dark().scheme.refsuccessu90,
    refsuccessu93: BasePalette.dark().scheme.refsuccessu93,
    refsuccessu95: BasePalette.dark().scheme.refsuccessu95,
    refsuccessu98: BasePalette.dark().scheme.refsuccessu98,
    refsuccessu99: BasePalette.dark().scheme.refsuccessu99,
    reftertiaryt0: BasePalette.dark().scheme.reftertiaryt0,
    reftertiaryt10: BasePalette.dark().scheme.reftertiaryt10,
    reftertiaryt100: BasePalette.dark().scheme.reftertiaryt100,
    reftertiaryt15: BasePalette.dark().scheme.reftertiaryt15,
    reftertiaryt2: BasePalette.dark().scheme.reftertiaryt2,
    reftertiaryt20: BasePalette.dark().scheme.reftertiaryt20,
    reftertiaryt30: BasePalette.dark().scheme.reftertiaryt30,
    reftertiaryt4: BasePalette.dark().scheme.reftertiaryt4,
    reftertiaryt40: BasePalette.dark().scheme.reftertiaryt40,
    reftertiaryt50: BasePalette.dark().scheme.reftertiaryt50,
    reftertiaryt6: BasePalette.dark().scheme.reftertiaryt6,
    reftertiaryt60: BasePalette.dark().scheme.reftertiaryt60,
    reftertiaryt70: BasePalette.dark().scheme.reftertiaryt70,
    reftertiaryt8: BasePalette.dark().scheme.reftertiaryt8,
    reftertiaryt80: BasePalette.dark().scheme.reftertiaryt80,
    reftertiaryt85: BasePalette.dark().scheme.reftertiaryt85,
    reftertiaryt90: BasePalette.dark().scheme.reftertiaryt90,
    reftertiaryt93: BasePalette.dark().scheme.reftertiaryt93,
    reftertiaryt95: BasePalette.dark().scheme.reftertiaryt95,
    reftertiaryt98: BasePalette.dark().scheme.reftertiaryt98,
    reftertiaryt99: BasePalette.dark().scheme.reftertiaryt99,
    refwarnw0: BasePalette.dark().scheme.refwarnw0,
    refwarnw10: BasePalette.dark().scheme.refwarnw10,
    refwarnw100: BasePalette.dark().scheme.refwarnw100,
    refwarnw15: BasePalette.dark().scheme.refwarnw15,
    refwarnw2: BasePalette.dark().scheme.refwarnw2,
    refwarnw20: BasePalette.dark().scheme.refwarnw20,
    refwarnw30: BasePalette.dark().scheme.refwarnw30,
    refwarnw4: BasePalette.dark().scheme.refwarnw4,
    refwarnw40: BasePalette.dark().scheme.refwarnw40,
    refwarnw50: BasePalette.dark().scheme.refwarnw50,
    refwarnw6: BasePalette.dark().scheme.refwarnw6,
    refwarnw60: BasePalette.dark().scheme.refwarnw60,
    refwarnw70: BasePalette.dark().scheme.refwarnw70,
    refwarnw8: BasePalette.dark().scheme.refwarnw8,
    refwarnw80: BasePalette.dark().scheme.refwarnw80,
    refwarnw85: BasePalette.dark().scheme.refwarnw85,
    refwarnw90: BasePalette.dark().scheme.refwarnw90,
    refwarnw93: BasePalette.dark().scheme.refwarnw93,
    refwarnw95: BasePalette.dark().scheme.refwarnw95,
    refwarnw98: BasePalette.dark().scheme.refwarnw98,
    refwarnw99: BasePalette.dark().scheme.refwarnw99,
    statelayerserrorcontaineropacity008:
        BasePalette.dark().scheme.statelayerserrorcontaineropacity008,
    statelayerserrorcontaineropacity012:
        BasePalette.dark().scheme.statelayerserrorcontaineropacity012,
    statelayerserrorcontaineropacity016:
        BasePalette.dark().scheme.statelayerserrorcontaineropacity016,
    statelayerserroropacity008:
        BasePalette.dark().scheme.statelayerserroropacity008,
    statelayerserroropacity012:
        BasePalette.dark().scheme.statelayerserroropacity012,
    statelayerserroropacity016:
        BasePalette.dark().scheme.statelayerserroropacity016,
    statelayersinverseonsurfaceopacity008:
        BasePalette.dark().scheme.statelayersinverseonsurfaceopacity008,
    statelayersinverseonsurfaceopacity012:
        BasePalette.dark().scheme.statelayersinverseonsurfaceopacity012,
    statelayersinverseonsurfaceopacity016:
        BasePalette.dark().scheme.statelayersinverseonsurfaceopacity016,
    statelayersinverseprimaryopacity008:
        BasePalette.dark().scheme.statelayersinverseprimaryopacity008,
    statelayersinverseprimaryopacity012:
        BasePalette.dark().scheme.statelayersinverseprimaryopacity012,
    statelayersinverseprimaryopacity016:
        BasePalette.dark().scheme.statelayersinverseprimaryopacity016,
    statelayersinversesurfaceopacity008:
        BasePalette.dark().scheme.statelayersinversesurfaceopacity008,
    statelayersinversesurfaceopacity012:
        BasePalette.dark().scheme.statelayersinversesurfaceopacity012,
    statelayersinversesurfaceopacity016:
        BasePalette.dark().scheme.statelayersinversesurfaceopacity016,
    statelayersonerrorcontaineropacity008:
        BasePalette.dark().scheme.statelayersonerrorcontaineropacity008,
    statelayersonerrorcontaineropacity012:
        BasePalette.dark().scheme.statelayersonerrorcontaineropacity012,
    statelayersonerrorcontaineropacity016:
        BasePalette.dark().scheme.statelayersonerrorcontaineropacity016,
    statelayersonerroropacity008:
        BasePalette.dark().scheme.statelayersonerroropacity008,
    statelayersonerroropacity012:
        BasePalette.dark().scheme.statelayersonerroropacity012,
    statelayersonerroropacity016:
        BasePalette.dark().scheme.statelayersonerroropacity016,
    statelayersonprimarycontaineropacity008:
        BasePalette.dark().scheme.statelayersonprimarycontaineropacity008,
    statelayersonprimarycontaineropacity012:
        BasePalette.dark().scheme.statelayersonprimarycontaineropacity012,
    statelayersonprimarycontaineropacity016:
        BasePalette.dark().scheme.statelayersonprimarycontaineropacity016,
    statelayersonprimaryfixedopacity008:
        BasePalette.dark().scheme.statelayersonprimaryfixedopacity008,
    statelayersonprimaryfixedopacity012:
        BasePalette.dark().scheme.statelayersonprimaryfixedopacity012,
    statelayersonprimaryfixedopacity016:
        BasePalette.dark().scheme.statelayersonprimaryfixedopacity016,
    statelayersonprimaryfixedvariantopacity008:
        BasePalette.dark().scheme.statelayersonprimaryfixedvariantopacity008,
    statelayersonprimaryfixedvariantopacity012:
        BasePalette.dark().scheme.statelayersonprimaryfixedvariantopacity012,
    statelayersonprimaryfixedvariantopacity016:
        BasePalette.dark().scheme.statelayersonprimaryfixedvariantopacity016,
    statelayersonprimaryopacity008:
        BasePalette.dark().scheme.statelayersonprimaryopacity008,
    statelayersonprimaryopacity012:
        BasePalette.dark().scheme.statelayersonprimaryopacity012,
    statelayersonprimaryopacity016:
        BasePalette.dark().scheme.statelayersonprimaryopacity016,
    statelayersonsecondarycontaineropacity008:
        BasePalette.dark().scheme.statelayersonsecondarycontaineropacity008,
    statelayersonsecondarycontaineropacity012:
        BasePalette.dark().scheme.statelayersonsecondarycontaineropacity012,
    statelayersonsecondarycontaineropacity016:
        BasePalette.dark().scheme.statelayersonsecondarycontaineropacity016,
    statelayersonsecondaryfixedopacity008:
        BasePalette.dark().scheme.statelayersonsecondaryfixedopacity008,
    statelayersonsecondaryfixedopacity012:
        BasePalette.dark().scheme.statelayersonsecondaryfixedopacity012,
    statelayersonsecondaryfixedopacity016:
        BasePalette.dark().scheme.statelayersonsecondaryfixedopacity016,
    statelayersonsecondaryfixedvariantopacity008:
        BasePalette.dark().scheme.statelayersonsecondaryfixedvariantopacity008,
    statelayersonsecondaryfixedvariantopacity012:
        BasePalette.dark().scheme.statelayersonsecondaryfixedvariantopacity012,
    statelayersonsecondaryfixedvariantopacity016:
        BasePalette.dark().scheme.statelayersonsecondaryfixedvariantopacity016,
    statelayersonsecondaryopacity008:
        BasePalette.dark().scheme.statelayersonsecondaryopacity008,
    statelayersonsecondaryopacity012:
        BasePalette.dark().scheme.statelayersonsecondaryopacity012,
    statelayersonsecondaryopacity016:
        BasePalette.dark().scheme.statelayersonsecondaryopacity016,
    statelayersonsuccesscontaineropacity008:
        BasePalette.dark().scheme.statelayersonsuccesscontaineropacity008,
    statelayersonsuccesscontaineropacity012:
        BasePalette.dark().scheme.statelayersonsuccesscontaineropacity012,
    statelayersonsuccesscontaineropacity016:
        BasePalette.dark().scheme.statelayersonsuccesscontaineropacity016,
    statelayersonsuccessopacity008:
        BasePalette.dark().scheme.statelayersonsuccessopacity008,
    statelayersonsuccessopacity012:
        BasePalette.dark().scheme.statelayersonsuccessopacity012,
    statelayersonsuccessopacity016:
        BasePalette.dark().scheme.statelayersonsuccessopacity016,
    statelayersonsurfaceopacity008:
        BasePalette.dark().scheme.statelayersonsurfaceopacity008,
    statelayersonsurfaceopacity012:
        BasePalette.dark().scheme.statelayersonsurfaceopacity012,
    statelayersonsurfaceopacity016:
        BasePalette.dark().scheme.statelayersonsurfaceopacity016,
    statelayersonsurfacevariantopacity008:
        BasePalette.dark().scheme.statelayersonsurfacevariantopacity008,
    statelayersonsurfacevariantopacity012:
        BasePalette.dark().scheme.statelayersonsurfacevariantopacity012,
    statelayersonsurfacevariantopacity016:
        BasePalette.dark().scheme.statelayersonsurfacevariantopacity016,
    statelayersontertiarycontaineropacity008:
        BasePalette.dark().scheme.statelayersontertiarycontaineropacity008,
    statelayersontertiarycontaineropacity012:
        BasePalette.dark().scheme.statelayersontertiarycontaineropacity012,
    statelayersontertiarycontaineropacity016:
        BasePalette.dark().scheme.statelayersontertiarycontaineropacity016,
    statelayersontertiaryfixedopacity008:
        BasePalette.dark().scheme.statelayersontertiaryfixedopacity008,
    statelayersontertiaryfixedopacity012:
        BasePalette.dark().scheme.statelayersontertiaryfixedopacity012,
    statelayersontertiaryfixedopacity016:
        BasePalette.dark().scheme.statelayersontertiaryfixedopacity016,
    statelayersontertiaryfixedvariantopacity008:
        BasePalette.dark().scheme.statelayersontertiaryfixedvariantopacity008,
    statelayersontertiaryfixedvariantopacity012:
        BasePalette.dark().scheme.statelayersontertiaryfixedvariantopacity012,
    statelayersontertiaryfixedvariantopacity016:
        BasePalette.dark().scheme.statelayersontertiaryfixedvariantopacity016,
    statelayersontertiaryopacity008:
        BasePalette.dark().scheme.statelayersontertiaryopacity008,
    statelayersontertiaryopacity012:
        BasePalette.dark().scheme.statelayersontertiaryopacity012,
    statelayersontertiaryopacity016:
        BasePalette.dark().scheme.statelayersontertiaryopacity016,
    statelayersonwarncontaineropacity008:
        BasePalette.dark().scheme.statelayersonwarncontaineropacity008,
    statelayersonwarncontaineropacity012:
        BasePalette.dark().scheme.statelayersonwarncontaineropacity012,
    statelayersonwarncontaineropacity016:
        BasePalette.dark().scheme.statelayersonwarncontaineropacity016,
    statelayersonwarnopacity008:
        BasePalette.dark().scheme.statelayersonwarnopacity008,
    statelayersonwarnopacity012:
        BasePalette.dark().scheme.statelayersonwarnopacity012,
    statelayersonwarnopacity016:
        BasePalette.dark().scheme.statelayersonwarnopacity016,
    statelayersoutlineopacity008:
        BasePalette.dark().scheme.statelayersoutlineopacity008,
    statelayersoutlineopacity012:
        BasePalette.dark().scheme.statelayersoutlineopacity012,
    statelayersoutlineopacity016:
        BasePalette.dark().scheme.statelayersoutlineopacity016,
    statelayersoutlinevariantopacity008:
        BasePalette.dark().scheme.statelayersoutlinevariantopacity008,
    statelayersoutlinevariantopacity012:
        BasePalette.dark().scheme.statelayersoutlinevariantopacity012,
    statelayersoutlinevariantopacity016:
        BasePalette.dark().scheme.statelayersoutlinevariantopacity016,
    statelayersprimarycontaineropacity008:
        BasePalette.dark().scheme.statelayersprimarycontaineropacity008,
    statelayersprimarycontaineropacity012:
        BasePalette.dark().scheme.statelayersprimarycontaineropacity012,
    statelayersprimarycontaineropacity016:
        BasePalette.dark().scheme.statelayersprimarycontaineropacity016,
    statelayersprimaryfixeddimopacity008:
        BasePalette.dark().scheme.statelayersprimaryfixeddimopacity008,
    statelayersprimaryfixeddimopacity012:
        BasePalette.dark().scheme.statelayersprimaryfixeddimopacity012,
    statelayersprimaryfixeddimopacity016:
        BasePalette.dark().scheme.statelayersprimaryfixeddimopacity016,
    statelayersprimaryfixedopacity008:
        BasePalette.dark().scheme.statelayersprimaryfixedopacity008,
    statelayersprimaryfixedopacity012:
        BasePalette.dark().scheme.statelayersprimaryfixedopacity012,
    statelayersprimaryfixedopacity016:
        BasePalette.dark().scheme.statelayersprimaryfixedopacity016,
    statelayersprimaryopacity008:
        BasePalette.dark().scheme.statelayersprimaryopacity008,
    statelayersprimaryopacity012:
        BasePalette.dark().scheme.statelayersprimaryopacity012,
    statelayersprimaryopacity016:
        BasePalette.dark().scheme.statelayersprimaryopacity016,
    statelayersscrimopacity008:
        BasePalette.dark().scheme.statelayersscrimopacity008,
    statelayersscrimopacity012:
        BasePalette.dark().scheme.statelayersscrimopacity012,
    statelayersscrimopacity016:
        BasePalette.dark().scheme.statelayersscrimopacity016,
    statelayerssecondarycontaineropacity008:
        BasePalette.dark().scheme.statelayerssecondarycontaineropacity008,
    statelayerssecondarycontaineropacity012:
        BasePalette.dark().scheme.statelayerssecondarycontaineropacity012,
    statelayerssecondarycontaineropacity016:
        BasePalette.dark().scheme.statelayerssecondarycontaineropacity016,
    statelayerssecondaryfixeddimopacity008:
        BasePalette.dark().scheme.statelayerssecondaryfixeddimopacity008,
    statelayerssecondaryfixeddimopacity012:
        BasePalette.dark().scheme.statelayerssecondaryfixeddimopacity012,
    statelayerssecondaryfixeddimopacity016:
        BasePalette.dark().scheme.statelayerssecondaryfixeddimopacity016,
    statelayerssecondaryfixedopacity008:
        BasePalette.dark().scheme.statelayerssecondaryfixedopacity008,
    statelayerssecondaryfixedopacity012:
        BasePalette.dark().scheme.statelayerssecondaryfixedopacity012,
    statelayerssecondaryfixedopacity016:
        BasePalette.dark().scheme.statelayerssecondaryfixedopacity016,
    statelayerssecondaryopacity008:
        BasePalette.dark().scheme.statelayerssecondaryopacity008,
    statelayerssecondaryopacity012:
        BasePalette.dark().scheme.statelayerssecondaryopacity012,
    statelayerssecondaryopacity016:
        BasePalette.dark().scheme.statelayerssecondaryopacity016,
    statelayersshadowopacity008:
        BasePalette.dark().scheme.statelayersshadowopacity008,
    statelayersshadowopacity012:
        BasePalette.dark().scheme.statelayersshadowopacity012,
    statelayersshadowopacity016:
        BasePalette.dark().scheme.statelayersshadowopacity016,
    statelayerssuccesscontaineropacity008:
        BasePalette.dark().scheme.statelayerssuccesscontaineropacity008,
    statelayerssuccesscontaineropacity012:
        BasePalette.dark().scheme.statelayerssuccesscontaineropacity012,
    statelayerssuccesscontaineropacity016:
        BasePalette.dark().scheme.statelayerssuccesscontaineropacity016,
    statelayerssuccessopacity008:
        BasePalette.dark().scheme.statelayerssuccessopacity008,
    statelayerssuccessopacity012:
        BasePalette.dark().scheme.statelayerssuccessopacity012,
    statelayerssuccessopacity016:
        BasePalette.dark().scheme.statelayerssuccessopacity016,
    statelayerssurfacebrightopacity008:
        BasePalette.dark().scheme.statelayerssurfacebrightopacity008,
    statelayerssurfacebrightopacity012:
        BasePalette.dark().scheme.statelayerssurfacebrightopacity012,
    statelayerssurfacebrightopacity016:
        BasePalette.dark().scheme.statelayerssurfacebrightopacity016,
    statelayerssurfacecontainerhighopacity008:
        BasePalette.dark().scheme.statelayerssurfacecontainerhighopacity008,
    statelayerssurfacecontainerhighopacity012:
        BasePalette.dark().scheme.statelayerssurfacecontainerhighopacity012,
    statelayerssurfacecontainerhighopacity016:
        BasePalette.dark().scheme.statelayerssurfacecontainerhighopacity016,
    statelayerssurfacecontainerhighestopacity008:
        BasePalette.dark().scheme.statelayerssurfacecontainerhighestopacity008,
    statelayerssurfacecontainerhighestopacity012:
        BasePalette.dark().scheme.statelayerssurfacecontainerhighestopacity012,
    statelayerssurfacecontainerhighestopacity016:
        BasePalette.dark().scheme.statelayerssurfacecontainerhighestopacity016,
    statelayerssurfacecontainerlowopacity008:
        BasePalette.dark().scheme.statelayerssurfacecontainerlowopacity008,
    statelayerssurfacecontainerlowopacity012:
        BasePalette.dark().scheme.statelayerssurfacecontainerlowopacity012,
    statelayerssurfacecontainerlowopacity016:
        BasePalette.dark().scheme.statelayerssurfacecontainerlowopacity016,
    statelayerssurfacecontainerlowestopacity008:
        BasePalette.dark().scheme.statelayerssurfacecontainerlowestopacity008,
    statelayerssurfacecontainerlowestopacity012:
        BasePalette.dark().scheme.statelayerssurfacecontainerlowestopacity012,
    statelayerssurfacecontainerlowestopacity016:
        BasePalette.dark().scheme.statelayerssurfacecontainerlowestopacity016,
    statelayerssurfacecontaineropacity008:
        BasePalette.dark().scheme.statelayerssurfacecontaineropacity008,
    statelayerssurfacecontaineropacity012:
        BasePalette.dark().scheme.statelayerssurfacecontaineropacity012,
    statelayerssurfacecontaineropacity016:
        BasePalette.dark().scheme.statelayerssurfacecontaineropacity016,
    statelayerssurfacedimopacity008:
        BasePalette.dark().scheme.statelayerssurfacedimopacity008,
    statelayerssurfacedimopacity012:
        BasePalette.dark().scheme.statelayerssurfacedimopacity012,
    statelayerssurfacedimopacity016:
        BasePalette.dark().scheme.statelayerssurfacedimopacity016,
    statelayerssurfaceopacity008:
        BasePalette.dark().scheme.statelayerssurfaceopacity008,
    statelayerssurfaceopacity012:
        BasePalette.dark().scheme.statelayerssurfaceopacity012,
    statelayerssurfaceopacity016:
        BasePalette.dark().scheme.statelayerssurfaceopacity016,
    statelayerstertiarycontaineropacity008:
        BasePalette.dark().scheme.statelayerstertiarycontaineropacity008,
    statelayerstertiarycontaineropacity012:
        BasePalette.dark().scheme.statelayerstertiarycontaineropacity012,
    statelayerstertiarycontaineropacity016:
        BasePalette.dark().scheme.statelayerstertiarycontaineropacity016,
    statelayerstertiaryfixeddimopacity008:
        BasePalette.dark().scheme.statelayerstertiaryfixeddimopacity008,
    statelayerstertiaryfixeddimopacity012:
        BasePalette.dark().scheme.statelayerstertiaryfixeddimopacity012,
    statelayerstertiaryfixeddimopacity016:
        BasePalette.dark().scheme.statelayerstertiaryfixeddimopacity016,
    statelayerstertiaryfixedopacity008:
        BasePalette.dark().scheme.statelayerstertiaryfixedopacity008,
    statelayerstertiaryfixedopacity012:
        BasePalette.dark().scheme.statelayerstertiaryfixedopacity012,
    statelayerstertiaryfixedopacity016:
        BasePalette.dark().scheme.statelayerstertiaryfixedopacity016,
    statelayerstertiaryopacity008:
        BasePalette.dark().scheme.statelayerstertiaryopacity008,
    statelayerstertiaryopacity012:
        BasePalette.dark().scheme.statelayerstertiaryopacity012,
    statelayerstertiaryopacity016:
        BasePalette.dark().scheme.statelayerssurfacecontaineropacity016,
    statelayerswarncontaineropacity008:
        BasePalette.dark().scheme.statelayerswarncontaineropacity008,
    statelayerswarncontaineropacity012:
        BasePalette.dark().scheme.statelayerswarncontaineropacity012,
    statelayerswarncontaineropacity016:
        BasePalette.dark().scheme.statelayerswarncontaineropacity016,
    statelayerswarnopacity008:
        BasePalette.dark().scheme.statelayerswarnopacity008,
    statelayerswarnopacity012:
        BasePalette.dark().scheme.statelayerswarnopacity012,
    statelayerswarnopacity016:
        BasePalette.dark().scheme.statelayerswarnopacity016,
    sysError: BasePalette.dark().scheme.sysError,
    sysErrorContainer: BasePalette.dark().scheme.sysErrorContainer,
    sysInverseOnSurface: BasePalette.dark().scheme.sysInverseOnSurface,
    sysInversePrimary: BasePalette.dark().scheme.sysInversePrimary,
    sysInverseSurface: BasePalette.dark().scheme.sysInverseSurface,
    sysOnError: BasePalette.dark().scheme.sysOnError,
    sysOnErrorContainer: BasePalette.dark().scheme.sysOnErrorContainer,
    sysOnPrimary: BasePalette.dark().scheme.sysOnPrimary,
    sysOnPrimaryContainer: BasePalette.dark().scheme.sysOnPrimaryContainer,
    sysOnPrimaryFixed: BasePalette.dark().scheme.sysOnPrimaryFixed,
    sysOnPrimaryFixedVariant:
        BasePalette.dark().scheme.sysOnPrimaryFixedVariant,
    sysOnSecondary: BasePalette.dark().scheme.sysOnSecondary,
    sysOnSecondaryContainer: BasePalette.dark().scheme.sysOnSecondaryContainer,
    sysOnSecondaryFixed: BasePalette.dark().scheme.sysOnSecondaryFixed,
    sysOnSecondaryFixedVariant:
        BasePalette.dark().scheme.sysOnSecondaryFixedVariant,
    sysOnSuccess: BasePalette.dark().scheme.sysOnSuccess,
    sysOnSuccessContainer: BasePalette.dark().scheme.sysOnSuccessContainer,
    sysOnSurface: BasePalette.dark().scheme.sysOnSurface,
    sysOnSurfaceVariant: BasePalette.dark().scheme.sysOnSurfaceVariant,
    sysOnTertiary: BasePalette.dark().scheme.sysOnTertiary,
    sysOnTertiaryContainer: BasePalette.dark().scheme.sysOnTertiaryContainer,
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
    sysSecondaryContainer: BasePalette.dark().scheme.sysSecondaryContainer,
    sysSecondaryFixed: BasePalette.dark().scheme.sysSecondaryFixed,
    sysSecondaryFixedDim: BasePalette.dark().scheme.sysSecondaryFixedDim,
    sysShadow: BasePalette.dark().scheme.sysShadow,
    sysSuccess: BasePalette.dark().scheme.sysSuccess,
    sysSuccessContainer: BasePalette.dark().scheme.sysSuccessContainer,
    sysSurface: BasePalette.dark().scheme.sysSurface,
    sysSurfaceBright: BasePalette.dark().scheme.sysSurfaceBright,
    sysSurfaceContainer: BasePalette.dark().scheme.sysSurfaceContainer,
    sysSurfaceContainerHigh: BasePalette.dark().scheme.sysSurfaceContainerHigh,
    sysSurfaceContainerHighest:
        BasePalette.dark().scheme.sysSurfaceContainerHighest,
    sysSurfaceContainerLow: BasePalette.dark().scheme.sysSurfaceContainerLow,
    sysSurfaceContainerLowest:
        BasePalette.dark().scheme.sysSurfaceContainerLowest,
    sysSurfaceDim: BasePalette.dark().scheme.sysSurfaceDim,
    sysTertiary: BasePalette.dark().scheme.sysTertiary,
    sysTertiaryContainer: BasePalette.dark().scheme.sysTertiaryContainer,
    sysTertiaryFixed: BasePalette.dark().scheme.sysTertiaryFixed,
    sysTertiaryFixedDim: BasePalette.dark().scheme.sysTertiaryFixedDim,
    sysWarn: BasePalette.dark().scheme.sysWarn,
    sysWarnContainer: BasePalette.dark().scheme.sysWarnContainer,
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
    labelLarge: BaseTexts().labelLarge,
    labelMedium: BaseTexts().labelMedium,
    labelSmall: BaseTexts().labelSmall,
  );
}

extension AppTextsThemeExtension on ThemeData {
  // Usage example: Theme.of(context).texts;
  TextsThemeExtension get texts =>
      extension<TextsThemeExtension>() ?? BaseAppTheme._lightTextTheme;
}

extension TextThemeGetter on BuildContext {
  // Usage example: `context.textTheme`
  ThemeExtension get textTheme => Theme.of(this).extension<ThemeExtension>()!;
}

extension AppThemeExtension on ThemeData {
  // Usage example: Theme.of(context).colors;
  ColorsThemeExtension get colors =>
      extension<ColorsThemeExtension>() ?? BaseAppTheme._lightAppColors;
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}
