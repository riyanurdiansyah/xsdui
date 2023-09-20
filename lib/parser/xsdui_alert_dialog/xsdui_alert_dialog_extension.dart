import 'package:flutter/material.dart';

extension XSduiBorderRadiusGeometry on BorderRadius? {
  static BorderRadius fromMap(Map<String, dynamic> map) {
    switch (map["borderRadiusType"]) {
      case "circular":
        return BorderRadius.circular(map['circuler'] ?? 0.0);
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
