import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

enum DSButtonCardSize {
  small,
  large,
}

@Deprecated(
    'Use DsButtonCardCustom instead. This class will be removed in future versions.')
class DSButtonCard extends StatelessWidget {
  const DSButtonCard({
    super.key,
    required this.title,
    this.icon,
    this.illustration,
    this.width,
    this.height = DSButtonCardSize.small,
    this.onTap,
    this.backgroundColor,
    this.iconBackground,
    this.subtitle,
  })  : assert(icon != null || illustration != null,
            'icon or illustration must be provided'),
        assert(!(icon != null && illustration != null),
            'only one of icon or illustration must be provided');

  final Widget? illustration;
  final DSButtonCardSize height;
  final IconData? icon;
  final String title;
  final double? width;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? iconBackground;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    return Material(
      color: Colors.transparent,
      child: Ink(
        width: (width == null || width! <= 0) ? double.infinity : width,
        decoration: BoxDecoration(
          color: backgroundColor ?? colors.sysSurfaceTinted,
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: height == DSButtonCardSize.large ? 108 : 92,
            ),
            child: Padding(
              padding:
                  EdgeInsets.all(height == DSButtonCardSize.large ? 16 : 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (icon != null)
                      ? DSAvatar.medium.icon(
                          icon: icon!,
                          background: iconBackground ?? colors.sysPrimary,
                          widgetColor: colors.sysOnPrimary,
                        )
                      : illustration ?? const SizedBox.shrink(),
                  SizedBox(height: height == DSButtonCardSize.large ? 16 : 8),
                  DSText(
                    title,
                    textAlign: TextAlign.start,
                    autoSize: false,
                    style: height == DSButtonCardSize.large
                        ? texts.labelLarge.copyWith(
                            color: colors.sysOnSurface,
                            fontWeight: FontWeight.w700,
                          )
                        : texts.labelMedium.copyWith(
                            color: colors.sysOnSurface,
                            fontWeight: FontWeight.w700,
                          ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    subtitle!,
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
