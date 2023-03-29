import 'package:flutter/material.dart';

extension XSduiEdgeInsetMargin on EdgeInsets {
  static EdgeInsets fromMap(Map<String, dynamic> map) {
    switch (map["marginType"]) {
      case "all":
        return EdgeInsets.all(map["margin"] ?? 0.0);

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

extension XSduiEdgeInsetPadding on EdgeInsets {
  static EdgeInsets fromMap(Map<String, dynamic> map) {
    switch (map["paddingType"]) {
      case "all":
        return EdgeInsets.all(map["padding"] ?? 0.0);

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
