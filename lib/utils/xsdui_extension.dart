import 'package:flutter/material.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

extension XSduiFontWeight on FontWeight {
  static FontWeight fromString(String weight) {
    switch (weight) {
      case "w100":
        return FontWeight.w100;

      case "w200":
        return FontWeight.w200;

      case "w300":
        return FontWeight.w300;

      case "w400":
        return FontWeight.w400;

      case "w500":
        return FontWeight.w500;

      case "w600":
        return FontWeight.w600;

      case "w700":
        return FontWeight.w700;

      case "w800":
        return FontWeight.w800;

      case "w900":
        return FontWeight.w900;

      default:
        return FontWeight.normal;
    }
  }
}

extension XSduiFontStyle on FontStyle {
  static FontStyle fromString(String style) {
    switch (style) {
      case "italic":
        return FontStyle.italic;

      default:
        return FontStyle.normal;
    }
  }
}

extension XSduiTextOverflow on TextOverflow {
  static TextOverflow fromString(String overflow) {
    switch (overflow) {
      case "clip":
        return TextOverflow.clip;

      case "visible":
        return TextOverflow.visible;

      case "fade":
        return TextOverflow.fade;

      default:
        return TextOverflow.ellipsis;
    }
  }
}

extension XSduiEdgeInset on EdgeInsets {
  static EdgeInsets fromMap(Map<String, dynamic> map) {
    switch (map["edgeInsetsType"]) {
      case "all":
        return EdgeInsets.all(map["margin"] ?? map["padding"] ?? 0.0);

      case "symetric":
        return EdgeInsets.symmetric(
          horizontal: map["horizontal"] ?? 0.0,
          vertical: map["vertical"] ?? 0.0,
        );

      case "ltrb":
        return EdgeInsets.fromLTRB(
          map["left"],
          map["top"],
          map["right"],
          map["bottom"],
        );

      default:
        return EdgeInsets.only(
          left: map["left"] ?? 0.0,
          right: map["right"] ?? 0.0,
          top: map["top"] ?? 0.0,
          bottom: map["bottom"] ?? 0.0,
        );
    }
  }
}

extension XSduiBorderRadius on BorderRadius {
  static BorderRadius fromMap(Map<String, dynamic> map) {
    switch (map["borderRadiusType"]) {
      case "circular":
        return BorderRadius.circular(map["radius"] ?? 0.0);
      case "vertical":
        return BorderRadius.vertical(
          bottom: Radius.circular(map["bottom"] ?? 0.0),
          top: Radius.circular(map["top"] ?? 0.0),
        );
      default:
        return BorderRadius.only(
          bottomLeft: Radius.circular(map["bottomLeft"] ?? 0.0),
          topLeft: Radius.circular(map["topLeft"] ?? 0.0),
          bottomRight: Radius.circular(map["bottomRight"] ?? 0.0),
          topRight: Radius.circular(map["topRight"] ?? 0.0),
        );
    }
  }
}
