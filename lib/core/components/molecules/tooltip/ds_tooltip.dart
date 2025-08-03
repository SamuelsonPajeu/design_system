import 'package:flutter/material.dart';

enum DSTooltipType {
  plan,
  rich,
}

class DSTooltip extends StatelessWidget {
  final String text;
  final String textTooltip;

  const DSTooltip({
    super.key,
    required this.text,
    required this.textTooltip,
    Decoration? decoration,
    TextStyle? textStyle,
  })  : _dsTooltipType = DSTooltipType.plan,
        _decoration = decoration,
        _small = false,
        _textStyle = textStyle,
        _actions = null;

  const DSTooltip.rich(
      {super.key,
      required this.text,
      required this.textTooltip,
      required bool small,
      Widget? actions})
      : _dsTooltipType = DSTooltipType.rich,
        _decoration = null,
        _small = small,
        _textStyle = null,
        _actions = actions;

  final DSTooltipType _dsTooltipType;
  final Decoration? _decoration;
  final bool _small;
  final TextStyle? _textStyle;
  final Widget? _actions;

  @override
  Widget build(BuildContext context) {
    switch (_dsTooltipType) {
      case DSTooltipType.plan:
        return _buildPlainTooltipButton(
          text: text,
          textTooltip: textTooltip,
          decoration: _decoration,
          textStyle: _textStyle,
        );
      case DSTooltipType.rich:
        return _buildRichTooltip(
            text: text,
            textTootip: textTooltip,
            actions: _actions,
            small: _small);
    }
  }

  Widget _buildRichTooltip({
    required String text,
    required String textTootip,
    Widget? actions,
    bool small = false,
  }) {
    return Card(
      color: Colors.blueGrey[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              textTootip,
            ),
            const SizedBox(height: 10),
            if (!small) ...[actions ?? Container()]
          ],
        ),
      ),
    );
  }

  Widget _buildPlainTooltipButton({
    required String text,
    required String textTooltip,
    Decoration? decoration,
    TextStyle? textStyle,
  }) {
    return Tooltip(
      message: textTooltip,
      decoration: decoration,
      textStyle: textStyle ?? const TextStyle(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
