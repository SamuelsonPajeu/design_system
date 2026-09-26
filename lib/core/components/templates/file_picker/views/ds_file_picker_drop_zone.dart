import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';

class DSFilePickerDropZone extends StatefulWidget {
  final void Function(List<DropDoneDetails>) onDrop;
  final Future<void>? Function()? onTap;
  final String? title;
  final String? subtitle;
  final String? buttonText;
  final double? height;
  final double? width;
  final String? headerText;
  final Widget? headerWidget;
  final Widget? buttonOveride;
  final EdgeInsetsGeometry? padding;
  final bool enabled;

  const DSFilePickerDropZone({
    super.key,
    required this.onDrop,
    required this.onTap,
    this.title,
    this.subtitle,
    this.buttonText,
    this.height,
    this.width,
    this.headerText,
    this.headerWidget,
    this.buttonOveride,
    this.padding,
    this.enabled = true,
  });

  @override
  State<DSFilePickerDropZone> createState() => _DSFilePickerDropZoneState();
}

class _DSFilePickerDropZoneState extends State<DSFilePickerDropZone> {
  bool _isDragging = false;

  @override
  Widget build(BuildContext context) {
    return DropTarget(
      onDragEntered: (details) {
        if (!widget.enabled) return;
        setState(() => _isDragging = true);
      },
      onDragExited: (details) {
        setState(() => _isDragging = false);
      },
      onDragDone: (details) {
        if (!widget.enabled) return;
        setState(() => _isDragging = false);
        widget.onDrop([details]);
      },
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: widget.enabled ? widget.onTap : null,
          behavior: HitTestBehavior.opaque,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.headerWidget ??
                  DSText(
                    widget.headerText ?? 'ds_file_picker.upload_file_header'.tr,
                    style: context.texts.titleMedium,
                  ),
              const SizedBox(height: 16),
              SizedBox(
                width: widget.width ?? double.infinity,
                height: widget.height,
                child: _buildDashedBorder(
                  context,
                  child: Padding(
                    padding: widget.padding ?? const EdgeInsets.all(24),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (_isDragging)
                              Icon(
                                Symbols.cloud_upload,
                                size: 48,
                                color: _isDragging
                                    ? context.colors.sysPrimary
                                    : context.colors.sysOnSurfaceVariant,
                              ),
                            const SizedBox(height: 16),
                            DSText(
                              widget.title ??
                                  'ds_file_picker.drop_zone_title'.tr,
                              style: context.texts.bodyLarge.copyWith(
                                color: context.colors.sysOnSurface,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            DSText(
                              widget.subtitle ??
                                  'ds_file_picker.drop_zone_subtitle'.tr,
                              style: context.texts.bodySmall.copyWith(
                                color: context.colors.sysOnSurfaceVariant,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            widget.buttonOveride ??
                                SizedBox(
                                  width: 150,
                                  child: DSButton.tonal(
                                    onTap: widget.enabled
                                        ? () async {
                                            await widget.onTap?.call();
                                          }
                                        : null,
                                    buttonText: widget.buttonText ??
                                        'ds_file_picker.upload_file_button'.tr,
                                  ),
                                ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDashedBorder(BuildContext context, {required Widget child}) {
    return CustomPaint(
      painter: _DashedBorderPainter(
        color:
            _isDragging ? context.colors.sysPrimary : context.colors.sysOutline,
        strokeWidth: 1,
        dashWidth: 8,
        dashSpace: 4,
        borderRadius: 8,
      ),
      child: child,
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashWidth;
  final double dashSpace;
  final double borderRadius;

  _DashedBorderPainter({
    required this.color,
    required this.strokeWidth,
    required this.dashWidth,
    required this.dashSpace,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          Radius.circular(borderRadius),
        ),
      );

    final dashPath = _createDashedPath(path);
    canvas.drawPath(dashPath, paint);
  }

  Path _createDashedPath(Path source) {
    final dashPath = Path();
    final metricsIterator = source.computeMetrics().iterator;

    while (metricsIterator.moveNext()) {
      final metric = metricsIterator.current;
      double distance = 0;

      while (distance < metric.length) {
        final dashEnd = distance + dashWidth;
        dashPath.addPath(
          metric.extractPath(distance, dashEnd.clamp(0, metric.length)),
          Offset.zero,
        );
        distance = dashEnd + dashSpace;
      }
    }

    return dashPath;
  }

  @override
  bool shouldRepaint(covariant _DashedBorderPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.dashWidth != dashWidth ||
        oldDelegate.dashSpace != dashSpace ||
        oldDelegate.borderRadius != borderRadius;
  }
}
