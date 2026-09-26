import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Design System Search Anchor that opens a search view.
/// Wraps [SearchAnchor] and [SearchBar] to enforce DS tokens.
class DSSearchAnchor extends StatefulWidget {
  /// Creates a [DSSearchAnchor] with a [SearchBar] trigger.
  factory DSSearchAnchor.searchBar({
    Key? key,
    Widget? barLeading,
    Iterable<Widget>? barTrailing,
    String? barHintText,
    GestureTapCallback? onTap,
    ValueChanged<String>? onSubmitted,
    ValueChanged<String>? onChanged,
    VoidCallback? onClose,
    VoidCallback? onOpen,
    WidgetStateProperty<double?>? barElevation,
    WidgetStateProperty<Color?>? barBackgroundColor,
    WidgetStateProperty<Color?>? barOverlayColor,
    WidgetStateProperty<BorderSide?>? barSide,
    WidgetStateProperty<OutlinedBorder?>? barShape,
    WidgetStateProperty<EdgeInsetsGeometry?>? barPadding,
    EdgeInsetsGeometry? viewBarPadding,
    WidgetStateProperty<TextStyle?>? barTextStyle,
    WidgetStateProperty<TextStyle?>? barHintStyle,
    ViewBuilder? viewBuilder,
    Widget? viewLeading,
    Iterable<Widget>? viewTrailing,
    String? viewHintText,
    Color? viewBackgroundColor,
    double? viewElevation,
    BorderSide? viewSide,
    OutlinedBorder? viewShape,
    double? viewHeaderHeight,
    TextStyle? viewHeaderTextStyle,
    TextStyle? viewHeaderHintStyle,
    Color? dividerColor,
    BoxConstraints? constraints,
    BoxConstraints? viewConstraints,
    EdgeInsetsGeometry? viewPadding,
    bool? shrinkWrap,
    bool? isFullScreen,
    SearchController? searchController,
    TextCapitalization textCapitalization = TextCapitalization.none,
    required SuggestionsBuilder suggestionsBuilder,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    bool enabled = true,
  }) {
    return DSSearchAnchor._(
      key: key,
      barLeading: barLeading,
      barTrailing: barTrailing,
      barHintText: barHintText,
      onTap: onTap,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      onClose: onClose,
      onOpen: onOpen,
      barElevation: barElevation,
      barBackgroundColor: barBackgroundColor,
      barOverlayColor: barOverlayColor,
      barSide: barSide,
      barShape: barShape,
      barPadding: barPadding,
      viewBarPadding: viewBarPadding,
      barTextStyle: barTextStyle,
      barHintStyle: barHintStyle,
      viewBuilder: viewBuilder,
      viewLeading: viewLeading,
      viewTrailing: viewTrailing,
      viewHintText: viewHintText,
      viewBackgroundColor: viewBackgroundColor,
      viewElevation: viewElevation,
      viewSide: viewSide,
      viewShape: viewShape,
      viewHeaderHeight: viewHeaderHeight,
      viewHeaderTextStyle: viewHeaderTextStyle,
      viewHeaderHintStyle: viewHeaderHintStyle,
      dividerColor: dividerColor,
      constraints: constraints,
      viewConstraints: viewConstraints,
      viewPadding: viewPadding,
      shrinkWrap: shrinkWrap,
      isFullScreen: isFullScreen,
      searchController: searchController,
      textCapitalization: textCapitalization,
      suggestionsBuilder: suggestionsBuilder,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      scrollPadding: scrollPadding,
      enabled: enabled,
    );
  }

  const DSSearchAnchor._({
    super.key,
    this.barLeading,
    this.barTrailing,
    this.barHintText,
    this.onTap,
    this.onSubmitted,
    this.onChanged,
    this.onClose,
    this.onOpen,
    this.barElevation,
    this.barBackgroundColor,
    this.barOverlayColor,
    this.barSide,
    this.barShape,
    this.barPadding,
    this.viewBarPadding,
    this.barTextStyle,
    this.barHintStyle,
    this.viewBuilder,
    this.viewLeading,
    this.viewTrailing,
    this.viewHintText,
    this.viewBackgroundColor,
    this.viewElevation,
    this.viewSide,
    this.viewShape,
    this.viewHeaderHeight,
    this.viewHeaderTextStyle,
    this.viewHeaderHintStyle,
    this.dividerColor,
    this.constraints,
    this.viewConstraints,
    this.viewPadding,
    this.shrinkWrap,
    this.isFullScreen,
    this.searchController,
    this.textCapitalization,
    required this.suggestionsBuilder,
    this.textInputAction,
    this.keyboardType,
    this.scrollPadding,
    this.enabled = true,
  });

  final Widget? barLeading;
  final Iterable<Widget>? barTrailing;
  final String? barHintText;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClose;
  final VoidCallback? onOpen;
  final WidgetStateProperty<double?>? barElevation;
  final WidgetStateProperty<Color?>? barBackgroundColor;
  final WidgetStateProperty<Color?>? barOverlayColor;
  final WidgetStateProperty<BorderSide?>? barSide;
  final WidgetStateProperty<OutlinedBorder?>? barShape;
  final WidgetStateProperty<EdgeInsetsGeometry?>? barPadding;
  final EdgeInsetsGeometry? viewBarPadding;
  final WidgetStateProperty<TextStyle?>? barTextStyle;
  final WidgetStateProperty<TextStyle?>? barHintStyle;
  final ViewBuilder? viewBuilder;
  final Widget? viewLeading;
  final Iterable<Widget>? viewTrailing;
  final String? viewHintText;
  final Color? viewBackgroundColor;
  final double? viewElevation;
  final BorderSide? viewSide;
  final OutlinedBorder? viewShape;
  final double? viewHeaderHeight;
  final TextStyle? viewHeaderTextStyle;
  final TextStyle? viewHeaderHintStyle;
  final Color? dividerColor;
  final BoxConstraints? constraints;
  final BoxConstraints? viewConstraints;
  final EdgeInsetsGeometry? viewPadding;
  final bool? shrinkWrap;
  final bool? isFullScreen;
  final SearchController? searchController;
  final TextCapitalization? textCapitalization;
  final SuggestionsBuilder suggestionsBuilder;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final EdgeInsets? scrollPadding;
  final bool enabled;

  @override
  State<DSSearchAnchor> createState() => _DSSearchAnchorState();
}

class _DSSearchAnchorState extends State<DSSearchAnchor> {
  SearchController? _internalController;

  SearchController get _controller =>
      widget.searchController ?? (_internalController ??= SearchController());

  @override
  void dispose() {
    _internalController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    // --- Styles ---
    final effectiveTextStyle = WidgetStatePropertyAll(
      texts.bodyLarge.copyWith(color: colors.sysOnSurfaceVariant),
    );

    final effectiveBackgroundColor =
        WidgetStatePropertyAll(colors.sysSurfaceContainerHigh);

    final effectiveOverlayColor = WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.pressed)) {
        return colors.sysOnSurface.withValues(alpha: 0.12);
      }
      if (states.contains(WidgetState.hovered)) {
        return colors.sysOnSurface.withValues(alpha: 0.08);
      }
      return null;
    });

    final effectiveBarShape = WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );

    final effectiveViewBackgroundColor =
        widget.viewBackgroundColor ?? colors.sysSurfaceContainerHigh;
    final effectiveDividerColor =
        widget.dividerColor ?? colors.sysOutlineVariant;

    final effectiveHeaderTextStyle = widget.viewHeaderTextStyle ??
        texts.bodyLarge.copyWith(color: colors.sysOnSurfaceVariant);
    final effectiveHeaderHintStyle = widget.viewHeaderHintStyle ??
        texts.bodyLarge
            .copyWith(color: colors.sysOnSurfaceVariant.withValues(alpha: 0.7));

    final effectiveViewShape = widget.viewShape ??
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));

    final effectiveViewConstraints = widget.viewConstraints ??
        const BoxConstraints(minHeight: 0.0, minWidth: 360.0);

    return SearchAnchor.bar(
      barLeading: widget.barLeading,
      barTrailing: widget.barTrailing,
      barHintText: widget.barHintText,
      onTap: widget.onTap,
      onSubmitted: widget.onSubmitted,
      onChanged: widget.onChanged,
      onClose: widget.onClose,
      onOpen: widget.onOpen,
      barElevation: widget.barElevation ?? const WidgetStatePropertyAll(0),
      barBackgroundColor: widget.barBackgroundColor ?? effectiveBackgroundColor,
      barOverlayColor: widget.barOverlayColor ?? effectiveOverlayColor,
      barSide: widget.barSide,
      barShape: widget.barShape ?? effectiveBarShape,
      barPadding: widget.barPadding,
      viewBarPadding: widget.viewBarPadding,
      barTextStyle: widget.barTextStyle ?? effectiveTextStyle,
      barHintStyle: widget.barHintStyle ?? effectiveTextStyle,
      viewBuilder: widget.viewBuilder,
      viewLeading: widget.viewLeading,
      viewTrailing: widget.viewTrailing,
      viewHintText: widget.viewHintText,
      viewBackgroundColor: effectiveViewBackgroundColor,
      viewElevation: widget.viewElevation,
      viewSide: widget.viewSide,
      viewShape: effectiveViewShape,
      viewHeaderHeight: widget.viewHeaderHeight,
      viewHeaderTextStyle: effectiveHeaderTextStyle,
      viewHeaderHintStyle: effectiveHeaderHintStyle,
      dividerColor: effectiveDividerColor,
      constraints: widget.constraints,
      viewConstraints: effectiveViewConstraints,
      viewPadding: widget.viewPadding,
      shrinkWrap: widget.shrinkWrap ?? true,
      isFullScreen: widget.isFullScreen,
      searchController: _controller,
      textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
      suggestionsBuilder: widget.suggestionsBuilder,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      scrollPadding: widget.scrollPadding ?? const EdgeInsets.all(20.0),
      enabled: widget.enabled,
    );
  }
}
