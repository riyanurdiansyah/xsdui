import 'package:flutter/material.dart';

extension XSduiEdgeInsetMargin on EdgeInsets {
  static EdgeInsets fromMap(Map<String, dynamic> map) {
    switch (map["marginType"]) {
      case "all":
        return EdgeInsets.all(map["margin"] ?? 0.0);

      case "symmetric":
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

extension XSduiShape on BoxShape {
  static BoxShape fromString(String? quality) {
    switch (quality) {
      case null:
        return BoxShape.rectangle;
      case "circle":
        return BoxShape.circle;
      default:
        return BoxShape.rectangle;
    }
  }
}

extension XSduiEdgeInsetPadding on EdgeInsets {
  static EdgeInsets fromMap(Map<String, dynamic> map) {
    switch (map["paddingType"]) {
      case "all":
        return EdgeInsets.all(map["padding"] ?? 0.0);

      case "symmetric":
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

      case "only":
        return EdgeInsets.only(
          left: map["left"] ?? 0.0,
          right: map["right"] ?? 0.0,
          top: map["top"] ?? 0.0,
          bottom: map["bottom"] ?? 0.0,
        );

      default:
        return EdgeInsets.zero;
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

extension XSduiTileMode on TileMode {
  static TileMode fromString(String? tile) {
    switch (tile) {
      case null:
        return TileMode.clamp;
      case "clamp":
        return TileMode.clamp;
      case "decal":
        return TileMode.decal;
      case "mirror":
        return TileMode.mirror;
      case "repeated":
        return TileMode.repeated;

      default:
        return TileMode.clamp;
    }
  }
}
