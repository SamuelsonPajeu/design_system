import 'dart:async';

import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSSnackbarType {
  defaultType,
  error,
  warning,
  success,
}

enum _SnackbarVariant {
  oneLine,
  twoLines,
  expanded,
}

/// A Design System Snackbar widget for providing brief messages.
class DSSnackbar extends StatelessWidget {
  /// Creates a **One Line** Snackbar.
  /// Buttons in this variant have **NO padding** to fit compact layouts.
  const DSSnackbar.oneLine({
    super.key,
    this.type = DSSnackbarType.defaultType,
    required this.text,
    this.icon,
    this.actionLabel,
    this.onActionTap,
    this.showCloseButton = false,
    this.onCloseTap,
    this.duration = const Duration(seconds: 5),
  }) : _variant = _SnackbarVariant.oneLine;

  /// Creates a **Two Lines** Snackbar.
  /// Buttons in this variant **HAVE padding** for better touch targets/visual balance.
  const DSSnackbar.twoLines({
    super.key,
    this.type = DSSnackbarType.defaultType,
    required this.text,
    this.icon,
    this.actionLabel,
    this.onActionTap,
    this.showCloseButton = false,
    this.onCloseTap,
    this.duration = const Duration(seconds: 5),
  }) : _variant = _SnackbarVariant.twoLines;

  /// Creates an **Expanded** Snackbar.
  /// Text is on top, buttons are moved to a new row at the bottom.
  const DSSnackbar.expanded({
    super.key,
    this.type = DSSnackbarType.defaultType,
    required this.text,
    this.icon,
    this.actionLabel,
    this.onActionTap,
    this.showCloseButton = false,
    this.onCloseTap,
    this.duration = const Duration(seconds: 5),
  }) : _variant = _SnackbarVariant.expanded;

  // Internal constructor for copyWith
  const DSSnackbar._({
    required this.type,
    required this.text,
    this.icon,
    this.actionLabel,
    this.onActionTap,
    required this.showCloseButton,
    this.onCloseTap,
    required this.duration,
    required _SnackbarVariant variant,
  }) : _variant = variant;

  final DSSnackbarType type;
  final String text;
  final IconData? icon;
  final String? actionLabel;
  final VoidCallback? onActionTap;
  final bool showCloseButton;
  final VoidCallback? onCloseTap;
  final Duration duration;
  final _SnackbarVariant _variant;

  DSSnackbar copyWith({
    DSSnackbarType? type,
    String? text,
    IconData? icon,
    String? actionLabel,
    VoidCallback? onActionTap,
    bool? showCloseButton,
    VoidCallback? onCloseTap,
    Duration? duration,
  }) {
    return DSSnackbar._(
      type: type ?? this.type,
      text: text ?? this.text,
      icon: icon ?? this.icon,
      actionLabel: actionLabel ?? this.actionLabel,
      onActionTap: onActionTap ?? this.onActionTap,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      onCloseTap: onCloseTap ?? this.onCloseTap,
      duration: duration ?? this.duration,
      variant: _variant,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dsColors = context.colors;

    final Color backgroundColor;
    final Color onBackgroundColor;
    final Color actionColor;

    IconData? effectiveIcon = icon;
    Color? effectiveIconColor;

    switch (type) {
      case DSSnackbarType.defaultType:
        backgroundColor = dsColors.sysInverseSurface;
        onBackgroundColor = dsColors.sysInverseOnSurface;
        actionColor = dsColors.sysInversePrimary;
        effectiveIconColor = dsColors.sysInversePrimary;
        break;
      case DSSnackbarType.error:
        backgroundColor = dsColors.sysErrorContainer;
        onBackgroundColor = dsColors.sysOnErrorContainer;
        actionColor = dsColors.sysOnErrorContainer;
        effectiveIcon ??= Icons.error_outline;
        effectiveIconColor = dsColors.sysOnErrorContainer;
        break;
      case DSSnackbarType.warning:
        backgroundColor = dsColors.sysWarnContainer;
        onBackgroundColor = dsColors.sysOnWarnContainer;
        actionColor = dsColors.sysOnWarnContainer;
        effectiveIcon ??= Icons.warning_amber_outlined;
        effectiveIconColor = dsColors.sysOnWarnContainer;
        break;
      case DSSnackbarType.success:
        backgroundColor = dsColors.sysSuccessContainer;
        onBackgroundColor = dsColors.sysOnSuccessContainer;
        actionColor = dsColors.sysOnSuccessContainer;
        effectiveIcon ??= Icons.check_circle_outlined;
        effectiveIconColor = dsColors.sysOnSuccessContainer;
        break;
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            offset: Offset(0, 4),
            blurRadius: 8,
            spreadRadius: 3,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.30),
            offset: Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 0,
          ),
        ],
      ),
      child: _buildBody(
        context,
        onBackgroundColor,
        actionColor,
        effectiveIcon,
        effectiveIconColor,
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    Color textColor,
    Color actionColor,
    IconData? icon,
    Color? iconColor,
  ) {
    switch (_variant) {
      case _SnackbarVariant.oneLine:
        return _buildRowLayout(context, textColor, actionColor, icon, iconColor,
            usePadding: false);

      case _SnackbarVariant.twoLines:
        return _buildRowLayout(context, textColor, actionColor, icon, iconColor,
            usePadding: true);

      case _SnackbarVariant.expanded:
        return _buildExpandedLayout(
            context, textColor, actionColor, icon, iconColor,
            usePadding: true);
    }
  }

  /// Layout for OneLine and TwoLines variants
  Widget _buildRowLayout(
    BuildContext context,
    Color textColor,
    Color actionColor,
    IconData? icon,
    Color? iconColor, {
    required bool usePadding,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null) ...[
          DSIcon.small(icon: icon, color: iconColor),
          const SizedBox(width: 8),
        ],
        Expanded(
          child: Text(
            text,
            style: context.texts.bodyMedium.copyWith(color: textColor),
            maxLines: _variant == _SnackbarVariant.oneLine ? 1 : 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (actionLabel != null || showCloseButton) ...[
          const SizedBox(width: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildActionButton(context, actionColor, usePadding: usePadding),
              if (actionLabel != null && showCloseButton)
                const SizedBox(width: 16),
              _buildCloseButton(context, textColor, usePadding: usePadding),
            ],
          ),
        ],
      ],
    );
  }

  /// Layout for Expanded variant (Text top, Actions bottom)
  Widget _buildExpandedLayout(
    BuildContext context,
    Color textColor,
    Color actionColor,
    IconData? icon,
    Color? iconColor, {
    required bool usePadding,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null) ...[
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: DSIcon.small(icon: icon, color: iconColor),
              ),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Text(
                text,
                style: context.texts.bodyMedium.copyWith(color: textColor),
              ),
            ),
          ],
        ),
        if (actionLabel != null || showCloseButton) ...[
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildActionButton(context, actionColor, usePadding: usePadding),
              if (actionLabel != null && showCloseButton)
                const SizedBox(width: 16),
              _buildCloseButton(context, textColor, usePadding: usePadding),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    Color actionColor, {
    required bool usePadding,
  }) {
    if (actionLabel == null) return const SizedBox.shrink();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onActionTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: usePadding
              ? const EdgeInsets.all(4)
              : const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
          child: Text(
            actionLabel!,
            style: context.texts.labelLarge.copyWith(
              color: actionColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCloseButton(
    BuildContext context,
    Color iconColor, {
    required bool usePadding,
  }) {
    if (!showCloseButton) return const SizedBox.shrink();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onCloseTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: usePadding ? const EdgeInsets.all(4) : EdgeInsets.zero,
          child: DSIcon.small(icon: Icons.close, color: iconColor),
        ),
      ),
    );
  }
}

/// Shows a DSSnackbar as a floating overlay with custom entry/exit animations.
/// Returns a Future that completes when the Snackbar is fully dismissed.
Future<void> showDSSnackbar(BuildContext context, DSSnackbar snackbar) {
  final completer = Completer<void>();
  final overlayState = Overlay.of(context);
  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) {
      return _AnimatedSnackbarOverlay(
        snackbar: snackbar,
        onDismissed: () {
          overlayEntry.remove();
          if (!completer.isCompleted) {
            completer.complete();
          }
        },
      );
    },
  );

  overlayState.insert(overlayEntry);
  return completer.future;
}

class _AnimatedSnackbarOverlay extends StatefulWidget {
  const _AnimatedSnackbarOverlay({
    required this.snackbar,
    required this.onDismissed,
  });

  final DSSnackbar snackbar;
  final VoidCallback onDismissed;

  @override
  State<_AnimatedSnackbarOverlay> createState() =>
      _AnimatedSnackbarOverlayState();
}

class _AnimatedSnackbarOverlayState extends State<_AnimatedSnackbarOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  Timer? _autoDismissTimer;

  static const Duration _animationDuration = Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
      reverseCurve: Curves.easeIn,
    ));

    _controller.forward();

    _autoDismissTimer = Timer(widget.snackbar.duration, _triggerDismiss);
  }

  void _triggerDismiss() {
    if (!mounted) return;
    _controller.reverse().then((_) {
      widget.onDismissed();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _autoDismissTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final effectiveSnackbar = widget.snackbar.copyWith(
      onCloseTap: () {
        widget.snackbar.onCloseTap?.call();
        _triggerDismiss();
      },
    );

    return Positioned(
      bottom: 32,
      left: 16,
      right: 16,
      child: Material(
        color: Colors.transparent,
        child: SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: effectiveSnackbar,
          ),
        ),
      ),
    );
  }
}
