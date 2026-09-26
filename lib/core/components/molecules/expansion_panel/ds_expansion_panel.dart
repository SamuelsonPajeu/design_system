import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

const Duration _kExpand = Duration(milliseconds: 250);

class DSExpansionPanel extends StatefulWidget {
  const DSExpansionPanel({
    super.key,
    required this.title,
    this.children = const <Widget>[],
    this.leading,
    this.trailingActions,
    this.isExpanded = false,
    this.onExpansionChanged,
    this.isHeading = false,
    this.showCheckbox = false,
    this.isChecked = false,
    this.onChecked,
    this.enabled = true,
    this.controller,
    this.showDivider = false,
    this.contentPadding = const EdgeInsets.all(16),
    this.isGrouped = false,
    this.isFirst = false,
    this.isLast = false,
    this.backgroundColor,
  })  : subtitle = null,
        _isCardVariant = false;

  const DSExpansionPanel.card({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.children = const <Widget>[],
    this.isExpanded = false,
    this.onExpansionChanged,
    this.enabled = true,
    this.isGrouped = false,
    this.isFirst = false,
    this.isLast = false,
    this.contentPadding =
        const EdgeInsets.only(left: 72, right: 16, bottom: 24, top: 8),
    this.backgroundColor,
  })  : isHeading = false,
        showCheckbox = false,
        isChecked = false,
        onChecked = null,
        trailingActions = null,
        showDivider = false,
        controller = null,
        _isCardVariant = true;

  final Widget title;
  final Widget? subtitle;
  final List<Widget> children;
  final Widget? leading;
  final List<Widget>? trailingActions;
  final bool isExpanded;
  final ValueChanged<bool>? onExpansionChanged;
  final bool isHeading;
  final bool showCheckbox;
  final bool isChecked;
  final ValueChanged<bool?>? onChecked;
  final bool enabled;
  final dynamic controller;
  final bool showDivider;
  final EdgeInsetsGeometry contentPadding;
  final Color? backgroundColor;

  /// When true, modifies borders and radius to look like a continuous list.
  /// Requires [isFirst] and [isLast] to be set correctly.
  final bool isGrouped;
  final bool isFirst;
  final bool isLast;

  final bool _isCardVariant;

  @override
  State<DSExpansionPanel> createState() => _DSExpansionPanelState();
}

class _DSExpansionPanelState extends State<DSExpansionPanel>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween =
      Tween<double>(begin: 0.0, end: 0.5);

  late AnimationController _controller;
  late Animation<double> _heightFactor;
  late Animation<double> _iconTurns;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));

    if (widget.isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(DSExpansionPanel oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isExpanded != oldWidget.isExpanded) {
      _animateTo(widget.isExpanded);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _animateTo(bool targetExpanded) {
    if (targetExpanded) {
      _controller.forward();
    } else {
      _controller.reverse().then<void>((void value) {
        if (!mounted) return;
        setState(() {});
      });
    }
  }

  void _handleTap() {
    if (!widget.enabled) return;
    widget.onExpansionChanged?.call(!widget.isExpanded);
  }

  Widget _buildHeader(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    if (widget._isCardVariant) {
      final Color hoverColor = colors.sysPrimary.withValues(alpha: 0.08);
      final Color focusColor = colors.sysPrimary.withValues(alpha: 0.12);

      return InkWell(
        onTap: widget.enabled ? _handleTap : null,
        hoverColor: hoverColor,
        focusColor: focusColor,
        child: AnimatedBuilder(
          animation: _controller.view,
          builder: (context, child) {
            final expandFactor = _heightFactor.value;
            final reverseFactor = 1.0 - expandFactor;

            return Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 16.0,
                bottom: 16.0 * reverseFactor,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.leading != null) ...[
                    widget.leading!,
                    const SizedBox(width: 16),
                  ],
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextStyle(
                          style: texts.titleMedium.copyWith(
                            fontWeight: FontWeight.w700,
                            color: colors.sysOnSurface,
                          ),
                          child: widget.title,
                        ),
                        if (widget.subtitle != null)
                          ClipRect(
                            child: Align(
                              alignment: Alignment.topLeft,
                              heightFactor: reverseFactor,
                              child: Opacity(
                                opacity: reverseFactor,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: DefaultTextStyle(
                                    style: texts.bodyMedium.copyWith(
                                      color: colors.sysOnSurfaceVariant,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    child: widget.subtitle!,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color.lerp(
                        Colors.transparent,
                        colors.sysSurfaceContainer,
                        expandFactor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: RotationTransition(
                      turns: _iconTurns,
                      child: Icon(
                        Symbols.keyboard_arrow_down,
                        color: colors.sysOnSurface,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    // Original Header Implementation for non-card variants
    final Color foregroundColor =
        widget.isHeading ? colors.sysSurface : colors.sysOnSurface;
    final Color iconColor =
        widget.isHeading ? colors.sysSurface : colors.sysOnSurfaceVariant;
    final Color actionIconColor =
        widget.isHeading ? colors.sysOnPrimary : colors.sysOnSurfaceVariant;

    final TextStyle? titleStyle = widget.isHeading
        ? texts.titleLarge.copyWith(color: foregroundColor)
        : texts.bodyLarge.copyWith(color: foregroundColor);

    final BorderSide? checkboxSide = widget.isHeading
        ? BorderSide(color: colors.sysOnPrimary, width: 2.0)
        : null;

    final Color? checkboxCheckColor =
        widget.isHeading ? colors.sysPrimary : null;

    final WidgetStateProperty<Color?>? checkboxFillColor = widget.isHeading
        ? WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return colors.sysOnPrimary;
            }
            return null;
          })
        : null;

    final Color hoverColor = colors.sysPrimary.withValues(alpha: 0.08);
    final Color focusColor = colors.sysPrimary.withValues(alpha: 0.12);

    return InkWell(
      onTap: widget.enabled ? _handleTap : null,
      hoverColor: hoverColor,
      focusColor: focusColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        constraints: const BoxConstraints(minHeight: 56),
        alignment: Alignment.center,
        child: Row(
          children: [
            if (widget.showCheckbox) ...[
              DSCheckbox(
                value: widget.isChecked,
                onChanged: widget.enabled ? widget.onChecked : null,
                side: checkboxSide,
                fillColor: checkboxFillColor,
                checkColor: checkboxCheckColor,
              ),
              const SizedBox(width: 4),
            ],
            if (widget.leading != null) ...[
              IconTheme(
                data: IconThemeData(
                  color: widget.enabled
                      ? iconColor
                      : iconColor.withValues(alpha: 0.38),
                ),
                child: widget.leading!,
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: DefaultTextStyle(
                style: titleStyle!,
                child: widget.title,
              ),
            ),
            if (widget.trailingActions != null) ...[
              const SizedBox(width: 16),
              IconTheme(
                data: IconThemeData(
                  color: widget.enabled
                      ? actionIconColor
                      : actionIconColor.withValues(alpha: 0.38),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: widget.trailingActions!,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final BorderSide defaultBorderSide =
        BorderSide(color: colors.sysOutlineVariant);

    final Color effectiveBackgroundColor =
        widget.backgroundColor ?? colors.sysSurfaceContainerLow;

    final BoxBorder? boxBorder;
    if (widget.isGrouped) {
      boxBorder = Border(
        top: widget.isFirst ? defaultBorderSide : BorderSide.none,
        bottom: widget.isLast || !widget._isCardVariant
            ? defaultBorderSide
            : BorderSide.none,
        left: defaultBorderSide,
        right: defaultBorderSide,
      );
    } else {
      boxBorder = Border.fromBorderSide(defaultBorderSide);
    }

    final BorderRadiusGeometry borderRadius = widget.isGrouped
        ? BorderRadius.vertical(
            top: widget.isFirst ? const Radius.circular(12) : Radius.zero,
            bottom: widget.isLast ? const Radius.circular(12) : Radius.zero,
          )
        : BorderRadius.circular(12);

    return Container(
      foregroundDecoration: BoxDecoration(
        border: boxBorder,
        borderRadius: borderRadius,
      ),
      child: Material(
        color: widget.isHeading ? colors.sysPrimary : effectiveBackgroundColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildHeader(context),
            AnimatedBuilder(
              animation: _controller.view,
              builder: (context, child) {
                return ClipRect(
                  child: Align(
                    alignment: Alignment.center,
                    heightFactor: _heightFactor.value,
                    child: child,
                  ),
                );
              },
              child: Container(
                color: effectiveBackgroundColor,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (widget.showDivider && !widget._isCardVariant)
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: colors.sysOutlineVariant.withValues(alpha: 0.5),
                      ),
                    Padding(
                      padding: widget.contentPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.children,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (widget._isCardVariant && widget.isGrouped && !widget.isLast)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: DSDivider(),
              ),
          ],
        ),
      ),
    );
  }
}
