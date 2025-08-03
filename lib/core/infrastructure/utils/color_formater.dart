import 'dart:ui';

class ColorFormater {
  static Color fromHex(String hexColor) {
    String newColor = hexColor.replaceFirst('#', 'FF');
    return Color(int.parse(newColor, radix: 16));
  }
}
