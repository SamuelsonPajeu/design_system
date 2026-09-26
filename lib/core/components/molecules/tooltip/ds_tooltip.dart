import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A Design System Tooltip that wraps Flutter's [Tooltip].
///
/// Use [DSTooltip.plain] for simple text labels.
/// Use [DSTooltip.rich] for complex content with title and actions.
class DSTooltip extends StatelessWidget {
  /// Constructor for a Plain Tooltip.
  const DSTooltip.plain({
    super.key,
    required this.message,
    this.child,
    this.padding,
    this.margin,
    this.verticalOffset,
    this.preferBelow,
    this.triggerMode,
    this.waitDuration,
    this.showDuration,
    this.exitDuration,
    this.enableTapToDismiss = true,
    this.onTriggered,
    this.mouseCursor,
    this.textStyle,
    this.decoration,
    this.height,
    this.constraints,
  })  : title = null,
        actions = null,
        richMessage = null,
        excludeFromSemantics = null,
        textAlign = null,
        enableFeedback = null;

  /// Constructor for a Rich Tooltip.
  const DSTooltip.rich({
    super.key,
    this.title,
    required String content,
    this.actions,
    this.child,
    this.padding,
    this.margin,
    this.verticalOffset,
    this.preferBelow,
    this.triggerMode,
    this.waitDuration,
    this.showDuration,
    this.exitDuration,
    this.enableTapToDismiss = true,
    this.onTriggered,
    this.mouseCursor,
    this.textStyle,
    this.decoration,
    this.height,
    this.constraints,
  })  : message = content,
        richMessage = null,
        excludeFromSemantics = null,
        textAlign = null,
        enableFeedback = null;

  final String? message;
  final InlineSpan? richMessage;
  final String? title;
  final List<Widget>? actions;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? verticalOffset;
  final bool? preferBelow;
  final bool? excludeFromSemantics;
  final Widget? child;
  final Decoration? decoration;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final Duration? waitDuration;
  final Duration? showDuration;
  final Duration? exitDuration;
  final bool enableTapToDismiss;
  final TooltipTriggerMode? triggerMode;
  final bool? enableFeedback;
  final TooltipTriggeredCallback? onTriggered;
  final MouseCursor? mouseCursor;

  /// Dismisses all currently showing tooltips.
  ///
  /// This forwards the call to the standard Flutter [Tooltip.dismissAllToolTips].
  static bool dismissAllToolTips() {
    return Tooltip.dismissAllToolTips();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final bool isRich =
        title != null || (actions != null && actions!.isNotEmpty);

    // --- Styles ---
    final Decoration effectiveDecoration = decoration ??
        (isRich
            ? BoxDecoration(
                color: colors.sysSurfaceContainerHigh,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.30),
                    blurRadius: 5,
                    offset: const Offset(0, 1),
                  ),
                ],
              )
            : BoxDecoration(
                color: colors.sysInverseSurface,
                borderRadius: BorderRadius.circular(4),
              ));

    final TextStyle effectiveTextStyle = textStyle ??
        (isRich
            ? texts.bodyMedium.copyWith(color: colors.sysOnSurfaceVariant)
            : texts.bodySmall.copyWith(color: colors.sysInverseOnSurface));

    final EdgeInsetsGeometry effectivePadding = padding ??
        (isRich
            ? const EdgeInsets.all(16.0)
            : const EdgeInsets.symmetric(horizontal: 8, vertical: 4));

    // --- Content Construction ---
    // If Rich, we inject a custom WidgetSpan into the Tooltip's richMessage property.
    InlineSpan? finalRichMessage;

    if (isRich) {
      finalRichMessage = WidgetSpan(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null) ...[
                DSText(
                  title!,
                  style: texts.titleSmall.copyWith(
                    color: colors.sysOnSurface,
                  ),
                ),
                const SizedBox(height: 8),
              ],
              DSText(
                message ?? '',
                style: effectiveTextStyle,
              ),
              if (actions != null && actions!.isNotEmpty) ...[
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: actions!.map((action) {
                    final isLast = action == actions!.last;
                    return Padding(
                      padding: EdgeInsets.only(right: isLast ? 0 : 8.0),
                      child: action,
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      );
    } else {
      finalRichMessage = richMessage;
    }

    BoxConstraints? effectiveConstraints = constraints;
    if (effectiveConstraints == null && height != null) {
      effectiveConstraints = BoxConstraints(minHeight: height!);
    }

    return Tooltip(
      message: finalRichMessage != null ? null : message,
      richMessage: finalRichMessage,
      constraints: effectiveConstraints,
      padding: effectivePadding,
      margin: margin,
      verticalOffset: verticalOffset,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      decoration: effectiveDecoration,
      textStyle: effectiveTextStyle,
      textAlign: textAlign,
      waitDuration: waitDuration,
      showDuration: showDuration,
      exitDuration: exitDuration,
      enableTapToDismiss: enableTapToDismiss,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      onTriggered: onTriggered,
      mouseCursor: mouseCursor,
      child: child,
    );
  }
}
