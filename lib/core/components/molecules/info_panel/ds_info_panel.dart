import 'dart:async';

import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSInfoPanelType {
  primary,
  error,
  warning,
  success,
}

/// A Design System Info Panel widget for providing contextual feedback messages.
class DSInfoPanel extends StatelessWidget {
  /// Creates a standard (single-line/compact) Info Panel.
  const DSInfoPanel.standard({
    super.key,
    required this.type,
    required this.text,
    this.icon,
    this.actionLabel,
    this.onActionTap,
    this.showCloseButton = false,
    this.onCloseTap,
    this.duration = const Duration(seconds: 5),
  })  : _isExpanded = false,
        title = null,
        secondaryText = null;

  /// Creates an expanded (multi-line/titled) Info Panel.
  const DSInfoPanel.expanded({
    super.key,
    required this.type,
    required this.title,
    required this.text,
    this.secondaryText,
    this.icon,
    this.actionLabel,
    this.onActionTap,
    this.showCloseButton = false,
    this.onCloseTap,
    this.duration = const Duration(seconds: 5),
  }) : _isExpanded = true;

  // Internal constructor for copyWith
  const DSInfoPanel._({
    required this.type,
    this.title,
    required this.text,
    this.secondaryText,
    this.icon,
    this.actionLabel,
    this.onActionTap,
    required this.showCloseButton,
    this.onCloseTap,
    required this.duration,
    required bool isExpanded,
  }) : _isExpanded = isExpanded;

  final DSInfoPanelType type;
  final String? title;
  final String text;
  final String? secondaryText;
  final IconData? icon;
  final String? actionLabel;
  final VoidCallback? onActionTap;
  final bool showCloseButton;
  final VoidCallback? onCloseTap;
  final bool _isExpanded;

  /// How long the panel stays visible before auto-dismissing.
  /// Defaults to 5 seconds.
  final Duration duration;

  /// Creates a copy of this panel with the given fields replaced with the new values.
  DSInfoPanel copyWith({
    DSInfoPanelType? type,
    String? title,
    String? text,
    String? secondaryText,
    IconData? icon,
    String? actionLabel,
    VoidCallback? onActionTap,
    bool? showCloseButton,
    VoidCallback? onCloseTap,
    Duration? duration,
    bool? isExpanded,
  }) {
    return DSInfoPanel._(
      type: type ?? this.type,
      title: title ?? this.title,
      text: text ?? this.text,
      secondaryText: secondaryText ?? this.secondaryText,
      icon: icon ?? this.icon,
      actionLabel: actionLabel ?? this.actionLabel,
      onActionTap: onActionTap ?? this.onActionTap,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      onCloseTap: onCloseTap ?? this.onCloseTap,
      duration: duration ?? this.duration,
      isExpanded: isExpanded ?? _isExpanded,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dsColors = context.colors;

    // Define color mappings based on type
    final Color backgroundColor;
    final Color onBackgroundColor;
    final Color iconColor;

    switch (type) {
      case DSInfoPanelType.primary:
        backgroundColor = dsColors.sysPrimaryContainer;
        onBackgroundColor = dsColors.sysOnPrimaryContainer;
        iconColor = dsColors.sysOnPrimaryContainer;
        break;
      case DSInfoPanelType.error:
        backgroundColor = dsColors.sysErrorContainer;
        onBackgroundColor = dsColors.sysOnErrorContainer;
        iconColor = dsColors.sysOnErrorContainer;
        break;
      case DSInfoPanelType.warning:
        backgroundColor = dsColors.sysWarnContainer;
        onBackgroundColor = dsColors.sysOnWarnContainer;
        iconColor = dsColors.sysOnWarnContainer;
        break;
      case DSInfoPanelType.success:
        backgroundColor = dsColors.sysSuccessContainer;
        onBackgroundColor = dsColors.sysOnSuccessContainer;
        iconColor = dsColors.sysOnSuccessContainer;
        break;
    }

    final defaultIcon = switch (type) {
      DSInfoPanelType.primary => Icons.info_outline,
      DSInfoPanelType.error => Icons.error_outline,
      DSInfoPanelType.warning => Icons.warning_amber_rounded,
      DSInfoPanelType.success => Icons.check_circle_outline,
    };

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
      child: _isExpanded
          ? _buildExpandedContent(
              context, backgroundColor, onBackgroundColor, iconColor)
          : _buildStandardContent(context, backgroundColor, onBackgroundColor,
              iconColor, defaultIcon),
    );
  }

  Widget _buildActionButton(BuildContext context, Color textColor) {
    if (actionLabel == null) return const SizedBox.shrink();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onActionTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            actionLabel!,
            style: context.texts.labelLarge.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCloseButton(BuildContext context, Color iconColor) {
    if (!showCloseButton) return const SizedBox.shrink();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onCloseTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: DSIcon.small(icon: Icons.close, color: iconColor),
        ),
      ),
    );
  }

  Widget _buildStandardContent(
    BuildContext context,
    Color bgColor,
    Color textColor,
    Color iconColor,
    IconData defaultIcon,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DSIcon.small(
          icon: icon ?? defaultIcon,
          color: iconColor,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            text,
            style: context.texts.bodyMedium.copyWith(color: textColor),
          ),
        ),
        if (actionLabel != null || showCloseButton) ...[
          const SizedBox(width: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildActionButton(context, textColor),
              if (actionLabel != null && showCloseButton)
                const SizedBox(width: 16),
              _buildCloseButton(context, iconColor),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildExpandedContent(
    BuildContext context,
    Color bgColor,
    Color textColor,
    Color iconColor,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Header Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                title ?? '',
                style: context.texts.headlineSmall.copyWith(
                  color: textColor,
                ),
              ),
            ),
            if (actionLabel != null || showCloseButton)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildActionButton(context, textColor),
                  if (actionLabel != null && showCloseButton)
                    const SizedBox(width: 16),
                  _buildCloseButton(context, iconColor),
                ],
              ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          text,
          style: context.texts.bodyMedium.copyWith(color: textColor),
        ),
        if (secondaryText != null) ...[
          const SizedBox(height: 16),
          DSDivider(color: textColor.withValues(alpha: 0.16), height: 1),
          const SizedBox(height: 16),
          Text(
            secondaryText!,
            style: context.texts.bodyMedium.copyWith(color: textColor),
          ),
        ],
      ],
    );
  }
}

/// Shows a DSInfoPanel as a floating overlay with custom entry/exit animations.
void showDSInfoPanel(BuildContext context, DSInfoPanel panel) {
  final overlayState = Overlay.of(context);
  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) {
      return _AnimatedInfoPanelOverlay(
        panel: panel,
        onDismissed: () {
          overlayEntry.remove();
        },
      );
    },
  );

  overlayState.insert(overlayEntry);
}

/// Private widget to handle the animation lifecycle of the overlay.
class _AnimatedInfoPanelOverlay extends StatefulWidget {
  const _AnimatedInfoPanelOverlay({
    required this.panel,
    required this.onDismissed,
  });

  final DSInfoPanel panel;
  final VoidCallback onDismissed;

  @override
  State<_AnimatedInfoPanelOverlay> createState() =>
      _AnimatedInfoPanelOverlayState();
}

class _AnimatedInfoPanelOverlayState extends State<_AnimatedInfoPanelOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  Timer? _autoDismissTimer;

  // Animation configuration
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
      begin: const Offset(0, 1), // Start slightly below
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack, // Bouncy entry
      reverseCurve: Curves.easeIn,
    ));

    // Start animation
    _controller.forward();

    // Setup Auto Dismiss using the panel's duration
    _autoDismissTimer = Timer(widget.panel.duration, _triggerDismiss);
  }

  /// Reverses animation and then calls the dismiss callback.
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
    final effectivePanel = widget.panel.copyWith(
      onCloseTap: () {
        widget.panel.onCloseTap?.call();
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
            child: effectivePanel,
          ),
        ),
      ),
    );
  }
}
