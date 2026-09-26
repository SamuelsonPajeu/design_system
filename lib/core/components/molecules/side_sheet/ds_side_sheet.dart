import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSSideSheetVariant {
  standard,
  modal,
}

/// Shows a modal side sheet that slides in from the right.
Future<T?> showDSSideSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool barrierDismissible = true,
  Color? barrierColor,
  Duration transitionDuration = const Duration(milliseconds: 300),
}) {
  return showGeneralDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: barrierColor ?? Colors.black54,
    transitionDuration: transitionDuration,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Align(
        alignment: Alignment.centerRight,
        child: builder(context),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeInCubic,
      );
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(curvedAnimation),
        child: child,
      );
    },
  );
}

/// A standard layout for the content within a Side Sheet.
///
/// Includes a header with Title and optional Back button, a close button,
/// a scrollable body, and an optional footer with actions.
class DSSideSheet extends StatelessWidget {
  const DSSideSheet({
    super.key,
    required this.title,
    required this.body,
    this.variant = DSSideSheetVariant.standard,
    this.showBackButton = false,
    this.showCloseButton = true,
    this.onClose,
    this.onBack,
    this.actions,
    this.padding = const EdgeInsets.all(24.0),
    this.width = 320.0,
    this.backgroundColor,
  });

  /// The title displayed in the header.
  final String title;

  /// The main content of the sheet.
  final Widget body;

  /// The variant of the sheet (Standard or Modal).
  final DSSideSheetVariant variant;

  /// Whether to show the back button. Defaults to false.
  final bool showBackButton;

  /// Whether to show the close button. Defaults to true.
  final bool showCloseButton;

  /// Callback for the close (X) button.
  /// If null and [showCloseButton] is true, pops the navigator.
  final VoidCallback? onClose;

  /// Callback for the back (<-) button.
  /// If null and [showBackButton] is true, pops the navigator.
  final VoidCallback? onBack;

  /// List of action widgets (buttons) for the footer.
  /// If null or empty, the footer is hidden.
  final List<Widget>? actions;

  /// Padding for the body content.
  final EdgeInsetsGeometry padding;

  /// The width of the side sheet container. Defaults to 320.0.
  final double width;

  /// Optional custom background color. Overrides the variant's default color.
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    // Determine styles based on variant
    final Color effectiveBackgroundColor = backgroundColor ??
        (variant == DSSideSheetVariant.modal
            ? colors.sysSurfaceContainerLow
            : colors.sysSurface);

    final BorderRadius borderRadius = variant == DSSideSheetVariant.modal
        ? const BorderRadius.all(Radius.circular(16))
        : BorderRadius.zero;

    return Material(
      elevation: 16,
      color: effectiveBackgroundColor,
      borderRadius: borderRadius,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: width,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- Header ---
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Row(
                children: [
                  if (showBackButton) ...[
                    IconButton(
                      onPressed: onBack ?? () => Navigator.of(context).pop(),
                      icon: DSIcon.small(
                        icon: Icons.arrow_back,
                        color: colors.sysOnSurfaceVariant,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      tooltip: 'Voltar',
                    ),
                    const SizedBox(width: 16),
                  ],
                  Expanded(
                    child: DSText(
                      title,
                      style: texts.titleLarge.copyWith(
                        color: colors.sysOnSurfaceVariant,
                      ),
                    ),
                  ),
                  if (showCloseButton) ...[
                    const SizedBox(width: 16),
                    IconButton(
                      onPressed: onClose ?? () => Navigator.of(context).pop(),
                      icon: DSIcon.small(
                        icon: Icons.close,
                        color: colors.sysOnSurfaceVariant,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      tooltip: 'Fechar',
                    ),
                  ],
                ],
              ),
            ),

            // --- Body ---
            Expanded(
              child: SingleChildScrollView(
                padding: padding,
                child: body,
              ),
            ),

            // --- Footer ---
            if (actions != null && actions!.isNotEmpty)
              Container(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  top: 16.0,
                  bottom: 24.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: colors.sysOutlineVariant),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: actions!.map((action) {
                    final isLast = action == actions!.last;
                    return Padding(
                      padding: EdgeInsets.only(right: isLast ? 0 : 8.0),
                      child: action,
                    );
                  }).toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
