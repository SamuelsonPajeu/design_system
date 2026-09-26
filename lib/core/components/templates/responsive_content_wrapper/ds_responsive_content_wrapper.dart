import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Defines the alignment of the content on large screens.
enum DSResponsiveAlignment {
  left,
  center,
  right,

  /// Applies no wrapper constraints, returning the child as-is (behaves like mobile).
  none,
}

/// A wrapper that responsively aligns its content on Tablet and Desktop screens.
///
/// **How to use:**
///
/// 1. Using a single alignment for all tablet orientations:
/// ```dart
/// DSResponsiveContentWrapper(
///   tabletAlignment: DSResponsiveAlignment.center,
///   desktopAlignment: DSResponsiveAlignment.left,
///   child: MyContent(),
/// )
/// ```
///
/// 2. Using different alignments for tablet portrait and landscape:
/// ```dart
/// DSResponsiveContentWrapper(
///   tabletPortraitAlignment: DSResponsiveAlignment.none, // Full width in portrait
///   tabletLandscapeAlignment: DSResponsiveAlignment.center, // Centered in landscape
///   desktopAlignment: DSResponsiveAlignment.left,
///   child: MyContent(),
/// )
/// ```
class DSResponsiveContentWrapper extends GetResponsiveView {
  DSResponsiveContentWrapper({
    super.key,
    required this.child,
    required this.desktopAlignment,
    this.tabletAlignment,
    this.tabletPortraitAlignment,
    this.tabletLandscapeAlignment,
    this.childFlex,
    this.emptyFlex,
    this.spacing = 16.0,
  }) : assert(
          (tabletAlignment != null &&
                  tabletPortraitAlignment == null &&
                  tabletLandscapeAlignment == null) ||
              (tabletAlignment == null &&
                  tabletPortraitAlignment != null &&
                  tabletLandscapeAlignment != null),
          'You must provide either [tabletAlignment] OR both [tabletPortraitAlignment] and [tabletLandscapeAlignment]. Do not mix them.',
        );

  final Widget child;

  /// The alignment applied strictly to Desktop/Web views.
  final DSResponsiveAlignment desktopAlignment;

  /// The alignment applied to Tablets regardless of orientation.
  /// Cannot be used if portrait/landscape specific alignments are provided.
  final DSResponsiveAlignment? tabletAlignment;

  /// The alignment applied to Tablets in portrait mode.
  final DSResponsiveAlignment? tabletPortraitAlignment;

  /// The alignment applied to Tablets in landscape mode.
  final DSResponsiveAlignment? tabletLandscapeAlignment;

  final int? childFlex;
  final int? emptyFlex;
  final double spacing;

  @override
  Widget? phone() {
    return child;
  }

  @override
  Widget? tablet() {
    return Builder(
      builder: (context) {
        final Size size = MediaQuery.sizeOf(context);
        final bool isLandscape = size.width > size.height;

        // Resolves the alignment based on what the developer passed
        final DSResponsiveAlignment currentAlignment = tabletAlignment ??
            (isLandscape
                ? tabletLandscapeAlignment!
                : tabletPortraitAlignment!);

        return _buildResponsiveLayout(context, isLandscape, currentAlignment);
      },
    );
  }

  @override
  Widget? desktop() {
    return Builder(
      builder: (context) {
        final Size size = MediaQuery.sizeOf(context);
        final bool isLandscape = size.width > size.height;

        return _buildResponsiveLayout(context, isLandscape, desktopAlignment);
      },
    );
  }

  Widget _buildResponsiveLayout(
    BuildContext context,
    bool isLandscape,
    DSResponsiveAlignment alignment,
  ) {
    // If the alignment is 'none', it behaves exactly like mobile (no layout constraints)
    if (alignment == DSResponsiveAlignment.none) {
      return child;
    }

    // Default flex logic based on screen orientation
    final int effectiveChildFlex = childFlex ?? (isLandscape ? 8 : 16);
    final int effectiveEmptyFlex = emptyFlex ?? 6;

    final Widget childWidget = Flexible(flex: effectiveChildFlex, child: child);

    List<Widget> children;

    switch (alignment) {
      case DSResponsiveAlignment.left:
        children = [
          childWidget,
          SizedBox(width: spacing),
          Spacer(flex: effectiveEmptyFlex),
        ];
        break;

      case DSResponsiveAlignment.right:
        children = [
          Spacer(flex: effectiveEmptyFlex),
          SizedBox(width: spacing),
          childWidget,
        ];
        break;

      case DSResponsiveAlignment.center:
        // Divides the empty space equally on both sides to keep it centered
        final int halfFlex = (effectiveEmptyFlex / 2).ceil();
        final int safeSpacerFlex = halfFlex > 0 ? halfFlex : 1;

        children = [
          Spacer(flex: safeSpacerFlex),
          childWidget,
          Spacer(flex: safeSpacerFlex),
        ];
        break;

      case DSResponsiveAlignment.none:
        return child;
    }

    return Container(
      color: context.colors.sysSurface,
      child: Row(children: children),
    );
  }
}
