import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DSText extends StatelessWidget {
  const DSText(
    this.text, {
    super.key,
    this.style,
    this.overflow = TextOverflow.visible,
    this.minFontSize = 0,
    this.textAlign,
    this.maxLines,
    this.padding = const EdgeInsets.all(0),
    this.maxFontSize = 100,
    this.autoSize = true,
  });

  final TextStyle? style;
  final String text;
  final TextOverflow? overflow;
  final double minFontSize;
  final TextAlign? textAlign;
  final int? maxLines;
  final EdgeInsetsGeometry? padding;
  final double maxFontSize;
  final bool autoSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: autoSize
          ? AutoSizeText.rich(
              TextSpan(
                text: text,
                style: style,
              ),
              wrapWords: false,
              overflow: overflow,
              maxLines: maxLines,
              minFontSize: minFontSize,
              maxFontSize: maxFontSize,
              stepGranularity: 0.1,
              textAlign: textAlign,
            )
          : Text(
              text,
              style: style,
              overflow: overflow,
              maxLines: maxLines,
              textAlign: textAlign,
            ),
    );
  }

  DSText copyWith({
    TextStyle? style,
    String? text,
    TextOverflow? overflow,
    double? minFontSize,
    TextAlign? textAlign,
    int? maxLines,
    EdgeInsetsGeometry? padding,
    double? maxFontSize,
    bool? autoSize,
  }) {
    return DSText(
      text ?? this.text,
      style: style ?? this.style,
      overflow: overflow ?? this.overflow,
      minFontSize: minFontSize ?? this.minFontSize,
      textAlign: textAlign ?? this.textAlign,
      maxLines: maxLines ?? this.maxLines,
      padding: padding ?? this.padding,
      maxFontSize: maxFontSize ?? this.maxFontSize,
      autoSize: autoSize ?? this.autoSize,
    );
  }
}
