import 'package:flutter/material.dart';

extension XSduiEdgeInsetMargin on EdgeInsets {
  static EdgeInsets fromMap(Map<String, dynamic> map) {
    switch (map["marginType"]) {
      case "all":
        return EdgeInsets.all(map["margin"] == null
            ? 0.0
            : map["margin"].runtimeType == int
                ? double.parse(map["margin"].toString())
                : map["margin"]);

      case "symmetric":
        return EdgeInsets.symmetric(
          horizontal: map["horizontal"] == null
              ? 0.0
              : map["horizontal"].runtimeType == int
                  ? double.parse(map["horizontal"].toString())
                  : map["horizontal"],
          vertical: map["vertical"] == null
              ? 0.0
              : map["vertical"].runtimeType == int
                  ? double.parse(map["vertical"].toString())
                  : map["vertical"],
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
          left: map["left"] == null
              ? 0.0
              : map["left"].runtimeType == int
                  ? double.parse(map["left"].toString())
                  : map["left"],
          right: map["right"] == null
              ? 0.0
              : map["right"].runtimeType == int
                  ? double.parse(map["right"].toString())
                  : map["right"],
          top: map["top"] == null
              ? 0.0
              : map["top"].runtimeType == int
                  ? double.parse(map["top"].toString())
                  : map["top"],
          bottom: map["bottom"] == null
              ? 0.0
              : map["bottom"].runtimeType == int
                  ? double.parse(map["bottom"].toString())
                  : map["bottom"],
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
        return EdgeInsets.all(map["padding"] == null
            ? 0.0
            : map["padding"].runtimeType == int
                ? double.parse(map["padding"].toString())
                : map["padding"]);

      case "symmetric":
        return EdgeInsets.symmetric(
          horizontal: map["horizontal"] == null
              ? 0.0
              : map["horizontal"].runtimeType == int
                  ? double.parse(map["horizontal"].toString())
                  : map["horizontal"],
          vertical: map["vertical"] == null
              ? 0.0
              : map["vertical"].runtimeType == int
                  ? double.parse(map["vertical"].toString())
                  : map["vertical"],
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
          left: map["left"] == null
              ? 0.0
              : map["left"].runtimeType == int
                  ? double.parse(map["left"].toString())
                  : map["left"],
          right: map["right"] == null
              ? 0.0
              : map["right"].runtimeType == int
                  ? double.parse(map["right"].toString())
                  : map["right"],
          top: map["top"] == null
              ? 0.0
              : map["top"].runtimeType == int
                  ? double.parse(map["top"].toString())
                  : map["top"],
          bottom: map["bottom"] == null
              ? 0.0
              : map["bottom"].runtimeType == int
                  ? double.parse(map["bottom"].toString())
                  : map["bottom"],
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
        return BorderRadius.circular(map["radius"] == null
            ? 0.0
            : map["radius"].runtimeType == int
                ? double.parse(map["radius"].toString())
                : map["radius"]);
      case "vertical":
        return BorderRadius.vertical(
          bottom: Radius.circular(map["bottom"] == null
              ? 0.0
              : map["bottom"].runtimeType == int
                  ? double.parse(map["bottom"].toString())
                  : map["bottom"]),
          top: Radius.circular(map["top"] == null
              ? 0.0
              : map["top"].runtimeType == int
                  ? double.parse(map["top"].toString())
                  : map["top"]),
        );
      default:
        return BorderRadius.only(
          bottomLeft: Radius.circular(map["bottomLeft"] == null
              ? 0.0
              : map["bottomLeft"].runtimeType == int
                  ? double.parse(map["bottomLeft"].toString())
                  : map["bottomLeft"]),
          topLeft: Radius.circular(map["topLeft"] == null
              ? 0.0
              : map["topLeft"].runtimeType == int
                  ? double.parse(map["topLeft"].toString())
                  : map["topLeft"]),
          bottomRight: Radius.circular(map["bottomRight"] == null
              ? 0.0
              : map["bottomRight"].runtimeType == int
                  ? double.parse(map["bottomRight"].toString())
                  : map["bottomRight"]),
          topRight: Radius.circular(map["topRight"] == null
              ? 0.0
              : map["topRight"].runtimeType == int
                  ? double.parse(map["topRight"].toString())
                  : map["topRight"]),
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
