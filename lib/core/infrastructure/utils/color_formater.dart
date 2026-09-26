import 'dart:ui';

class ColorFormater {
  static Color fromHex(String hexColor) {
    final color = tryFromHex(hexColor);
    if (color != null) return color;
    String newColor = hexColor.replaceFirst('#', '');
    if (newColor.length == 6) {
      newColor = 'FF$newColor';
    }
    return Color(int.parse(newColor, radix: 16));
  }

  static Color? tryFromHex(String? hexColor) {
    if (hexColor == null) return null;
    var hex = hexColor.trim();
    if (hex.isEmpty) return null;

    if (hex.startsWith('#')) {
      hex = hex.substring(1);
    } else if (hex.toLowerCase().startsWith('0x')) {
      hex = hex.substring(2);
    }

    if (hex.length == 3) {
      hex = hex.split('').map((c) => '$c$c').join();
    } else if (hex.length == 4) {
      hex = hex.split('').map((c) => '$c$c').join();
    }

    if (hex.length == 6) {
      hex = 'FF$hex';
    }

    if (hex.length == 8) {
      final val = int.tryParse(hex, radix: 16);
      if (val != null) {
        return Color(val);
      }
    }

    return null;
  }
}
