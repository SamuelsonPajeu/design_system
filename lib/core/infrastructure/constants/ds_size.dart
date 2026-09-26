import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum DSSize {
  extraSmall,
  small,
  medium,
  large,
  extraLarge;

  /// Returns responsive spacing based on the device width.
  /// Automatically scales down for mobile and up for tablet/web.
  double responsiveGap(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).shortestSide < 600;

    switch (this) {
      case DSSize.extraSmall:
        return 8.0;
      case DSSize.small:
        return isMobile ? 12.0 : 16.0;
      case DSSize.medium:
        return isMobile ? 16.0 : 24.0;
      case DSSize.large:
        return isMobile ? 24.0 : 32.0;
      case DSSize.extraLarge:
        return isMobile ? 32.0 : 48.0;
    }
  }

  double padding() {
    switch (this) {
      case DSSize.extraSmall:
        return 2.0;
      case DSSize.small:
        return 8.0;
      case DSSize.medium:
        return 16.0;
      case DSSize.large:
        return 24.0;
      case DSSize.extraLarge:
        return 32.0;
    }
  }

  double icon() {
    switch (this) {
      case DSSize.extraSmall:
        return 20.0;
      case DSSize.small:
        return 24.0;
      case DSSize.medium:
        return 40.0;
      case DSSize.large:
        return 48.0;
      case DSSize.extraLarge:
        return 64.0;
    }
  }

  double containerBox() {
    switch (this) {
      case DSSize.extraSmall:
        return 24.0;
      case DSSize.small:
        return 40.0;
      case DSSize.medium:
        return 48.0;
      case DSSize.large:
        return 64.0;
      case DSSize.extraLarge:
        return 80.0;
    }
  }

  double weight() {
    switch (this) {
      case DSSize.extraSmall:
        return 100.0;
      case DSSize.small:
        return 200.0;
      case DSSize.medium:
        return 300.0;
      case DSSize.large:
        return 400.0;
      case DSSize.extraLarge:
        return 500.0;
    }
  }

  double fill() {
    switch (this) {
      case DSSize.extraSmall:
        return 0.1;
      case DSSize.small:
        return 0.2;
      case DSSize.medium:
        return 0.4;
      case DSSize.large:
        return 0.8;
      case DSSize.extraLarge:
        return 1.0;
    }
  }

  double grade() {
    switch (this) {
      case DSSize.extraSmall:
        return -25.0;
      case DSSize.small:
        return -12.5;
      case DSSize.medium:
        return 0.0;
      case DSSize.large:
        return 12.5;
      case DSSize.extraLarge:
        return 25.0;
    }
  }

  double optical() {
    switch (this) {
      case DSSize.extraSmall:
        return 0.0;
      case DSSize.small:
        return 8.0;
      case DSSize.medium:
        return 16.0;
      case DSSize.large:
        return 24.0;
      case DSSize.extraLarge:
        return 32.0;
    }
  }

  double border() {
    switch (this) {
      case DSSize.extraSmall:
        return 8.0;
      case DSSize.small:
        return 16.0;
      case DSSize.medium:
        return 24.0;
      case DSSize.large:
        return 32.0;
      case DSSize.extraLarge:
        return 40.0;
    }
  }
}

extension DSResponsiveSizeExt on BuildContext {
  /// Applies the standard page horizontal padding rule:
  /// - Mobile (< 600px shortestSide): 16.0
  /// - Tablet Portrait (>= 600px shortestSide): 24.0
  /// - Tablet Landscape (>= 600px shortestSide, Landscape): 72.0
  /// - Web/Desktop: 24.0
  double get pagePadding {
    final size = MediaQuery.sizeOf(this);
    final isLandscape = size.width > size.height;
    final isTablet = size.shortestSide >= 600;

    if (kIsWeb && size.width >= 1024) {
      return 24.0;
    } else if (isTablet) {
      return isLandscape ? 72.0 : 24.0;
    } else {
      return 16.0;
    }
  }

  /// Applies the tight page horizontal padding rule:
  /// - Mobile (< 600px shortestSide): 16.0
  /// - Tablet Portrait (>= 600px shortestSide): 24.0
  /// - Tablet Landscape (>= 600px shortestSide, Landscape): 272.0
  /// - Web/Desktop: 360.0
  double get tightPagePadding {
    final size = MediaQuery.sizeOf(this);
    final isLandscape = size.width > size.height;
    final isTablet = size.shortestSide >= 600;

    if (kIsWeb && size.width >= 1024) {
      return 360.0;
    } else if (isTablet) {
      return isLandscape ? 272.0 : 24.0;
    } else {
      return 16.0;
    }
  }

  /// Generates a perfectly sized gap that automatically scales based on the device.
  /// Can be used in Columns (height) and Rows (width).
  SizedBox gap(DSSize size) {
    final value = size.responsiveGap(this);
    return SizedBox(height: value, width: value);
  }
}
