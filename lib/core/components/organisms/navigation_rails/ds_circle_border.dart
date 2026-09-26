import 'package:flutter/material.dart';

class DSCircleBorder extends OutlinedBorder {
  const DSCircleBorder({
    super.side,
    this.radius = 0,
  });

  final double radius;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  ShapeBorder scale(double t) => DSCircleBorder(
        side: side.scale(t),
        radius: radius * t,
      );

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    final adjustedRect = _adjustRect(rect);
    return Path()..addOval(adjustedRect.deflate(side.strokeInset));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final adjustedRect = _adjustRect(rect);
    return Path()..addOval(adjustedRect);
  }

  Rect _adjustRect(Rect rect) {
    final size =
        (rect.shortestSide > 0 ? rect.shortestSide : rect.longestSide) +
            (radius * 2);
    return Rect.fromCenter(
      center: rect.center,
      width: size,
      height: size,
    );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    if (side.style == BorderStyle.none) return;
    final adjustedRect = _adjustRect(rect);
    canvas.drawOval(
      adjustedRect.deflate(side.strokeOffset / 2),
      side.toPaint(),
    );
  }

  @override
  DSCircleBorder copyWith({BorderSide? side, double? radius}) {
    return DSCircleBorder(
      side: side ?? this.side,
      radius: radius ?? this.radius,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DSCircleBorder &&
        other.side == side &&
        other.radius == radius;
  }

  @override
  int get hashCode => Object.hash(side, radius);
}
