import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DSText extends StatelessWidget {
  const DSText(
    this.text, {
    super.key,
    this.style,
    this.overflow = TextOverflow.ellipsis,
    this.minFontSize = 0,
    this.textAlign,
    this.maxLines = 2,
    this.padding = const EdgeInsets.all(0),
    this.maxFontSize = 100,
  });

  final TextStyle? style;
  final String text;
  final TextOverflow? overflow;
  final double minFontSize;
  final TextAlign? textAlign;
  final int? maxLines;
  final EdgeInsetsGeometry? padding;
  final double maxFontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: AutoSizeText.rich(
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
      ),
    );
  }
}
