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

extension XSduiTextBaseline on TextBaseline {
  static TextBaseline fromString(String textBaseline) {
    switch (textBaseline) {
      case "alphabetic":
        return TextBaseline.alphabetic;
      case "ideographic":
        return TextBaseline.ideographic;
      default:
        return TextBaseline.alphabetic;
    }
  }
}

extension XSduiTextDirection on TextDirection {
  static TextDirection fromString(String textBaseline) {
    switch (textBaseline) {
      case "ltr":
        return TextDirection.ltr;
      case "rtl":
        return TextDirection.rtl;
      default:
        return TextDirection.ltr;
    }
  }
}

extension XSduiVerticalDirection on VerticalDirection {
  static VerticalDirection fromString(String? cross) {
    switch (cross) {
      case null:
        return VerticalDirection.down;
      case "min":
        return VerticalDirection.up;
      case "down":
        return VerticalDirection.down;
      default:
        return VerticalDirection.down;
    }
  }
}
