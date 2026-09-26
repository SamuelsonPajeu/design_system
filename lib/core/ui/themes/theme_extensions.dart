import 'package:design_system/core/ui/palettes/colors_theme_extension.dart';
import 'package:design_system/core/ui/texts/texts_theme_extension.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// --- BuildContext Extensions ---
extension StandardColorsThemeGetter on BuildContext {
  /// Usage example: `context.colors`
  /// Provides access to the ColorsThemeExtension via BuildContext.
  /// Falls back to the default light theme colors if not registered.
  ColorsThemeExtension get colors {
    return Theme.of(this).extension<ColorsThemeExtension>() ??
        BaseAppTheme.lightAppColors;
  }
}

extension StandardTextsThemeGetter on BuildContext {
  /// Usage example: `context.texts`
  /// Provides access to the TextsThemeExtension via BuildContext.
  /// Falls back to the default light theme texts if not registered.
  TextsThemeExtension get texts {
    return Theme.of(this).extension<TextsThemeExtension>() ??
        BaseAppTheme.lightTextTheme;
  }
}

extension ThemeGetter on BuildContext {
  /// Usage example: `context.theme`
  /// Standard way to get ThemeData from BuildContext.
  ThemeData get theme => Theme.of(this);
}

// --- GetX Extensions ---

extension GetXColorsThemeExtension on GetInterface {
  /// Usage example: `Get.colors`
  /// Provides access to the ColorsThemeExtension via GetX's theme.
  /// Assumes the ColorsThemeExtension is always registered with the ThemeData.
  ColorsThemeExtension get colors => theme.extension<ColorsThemeExtension>()!;
}

extension GetXTextsThemeExtension on GetInterface {
  /// Usage example: `Get.texts`
  /// Provides access to the TextsThemeExtension via GetX's theme.
  /// Assumes the TextsThemeExtension is always registered with the ThemeData.
  TextsThemeExtension get texts => theme.extension<TextsThemeExtension>()!;
}
