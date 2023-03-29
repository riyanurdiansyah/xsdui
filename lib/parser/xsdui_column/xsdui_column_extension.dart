import 'package:flutter/material.dart';

extension XSduiCrossAxisAlignment on CrossAxisAlignment {
  static CrossAxisAlignment fromString(String? cross) {
    switch (cross) {
      case null:
        return CrossAxisAlignment.center;
      case "start":
        return CrossAxisAlignment.start;
      case "center":
        return CrossAxisAlignment.center;
      case "end":
        return CrossAxisAlignment.end;
      case "strech":
        return CrossAxisAlignment.stretch;
      default:
        return CrossAxisAlignment.center;
    }
  }
}

extension XSduiMainAxisAlignment on MainAxisAlignment {
  static MainAxisAlignment fromString(String? cross) {
    switch (cross) {
      case null:
        return MainAxisAlignment.start;
      case "start":
        return MainAxisAlignment.start;
      case "center":
        return MainAxisAlignment.center;
      case "end":
        return MainAxisAlignment.end;
      case "spaceBetween":
        return MainAxisAlignment.spaceBetween;
      case "spaceAround":
        return MainAxisAlignment.spaceAround;
      case "spaceEvenly":
        return MainAxisAlignment.spaceEvenly;
      default:
        return MainAxisAlignment.start;
    }
  }
}

extension XSduiMainAxisSize on MainAxisSize {
  static MainAxisSize fromString(String? cross) {
    switch (cross) {
      case null:
        return MainAxisSize.max;
      case "min":
        return MainAxisSize.min;
      case "max":
        return MainAxisSize.max;
      default:
        return MainAxisSize.max;
    }
  }
}