import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSInfoCardSize { small, large }

enum DSInfoCardOrientation { vertical, horizontal }

/// A card used to display dynamic information or supporting data prominently.
/// Serves as a purely visual and informative element with no direct user action.
class DSInfoCard extends StatelessWidget {
  const DSInfoCard({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.size = DSInfoCardSize.small,
    this.orientation = DSInfoCardOrientation.vertical,
    this.height,
    this.width,
  });

  final String title;
  final String? subtitle;
  final IconData? icon;
  final DSInfoCardSize size;
  final DSInfoCardOrientation orientation;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final double paddingValue = size == DSInfoCardSize.small ? 12.0 : 16.0;
    final double gap = size == DSInfoCardSize.small ? 8.0 : 12.0;

    double effectiveWidth;
    if (width != null) {
      effectiveWidth = width!;
    } else {
      size == DSInfoCardSize.small
          ? effectiveWidth = 150
          : effectiveWidth = 207;
    }

    final Widget? iconWidget = icon != null
        ? Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colors.sysPrimaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: DSIcon.small(
              icon: icon!,
              color: colors.sysOnSurfaceVariant,
            ),
          )
        : null;

    return Container(
      height: height,
      width: effectiveWidth,
      padding: EdgeInsets.all(paddingValue),
      decoration: BoxDecoration(
        color: colors.sysSurface,
        border: Border.all(color: colors.sysOutlineVariant),
        borderRadius: BorderRadius.circular(12),
      ),
      child: orientation == DSInfoCardOrientation.vertical
          ? _buildVerticalLayout(context, iconWidget, gap)
          : _buildHorizontalLayout(context, iconWidget, gap),
    );
  }

  Widget _buildVerticalLayout(
      BuildContext context, Widget? iconWidget, double gap) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (iconWidget != null) ...[
          iconWidget,
          SizedBox(height: gap),
        ],
        _buildTextContent(context),
      ],
    );
  }

  Widget _buildHorizontalLayout(
      BuildContext context, Widget? iconWidget, double gap) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (iconWidget != null) ...[
          iconWidget,
          SizedBox(width: size == DSInfoCardSize.small ? 8 : 12)
        ],
        Expanded(
          child: _buildTextContent(context),
        ),
      ],
    );
  }

  Widget _buildTextContent(BuildContext context) {
    final texts = context.texts;
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          title,
          style: texts.labelMedium.copyWith(color: colors.sysOnSurface),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        if (title.isNotEmpty) ...[
          SizedBox(height: size == DSInfoCardSize.small ? 4 : 8),
        ],
        if (subtitle != null) ...[
          DSText(
            subtitle!,
            style: (size == DSInfoCardSize.small
                    ? texts.bodySmall
                    : texts.bodyMedium)
                .copyWith(color: colors.sysOnSurface),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ],
    );
  }
}
