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

  static String? convertToString(CrossAxisAlignment cross) {
    switch (cross) {
      case CrossAxisAlignment.start:
        return "start";
      case CrossAxisAlignment.center:
        return "center";
      case CrossAxisAlignment.end:
        return "end";
      case CrossAxisAlignment.stretch:
        return "strech";
      default:
        return null;
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

  static String? convertToString(MainAxisAlignment? cross) {
    switch (cross) {
      case MainAxisAlignment.start:
        return "start";
      case MainAxisAlignment.center:
        return "center";
      case MainAxisAlignment.end:
        return "end";
      case MainAxisAlignment.spaceBetween:
        return "spaceBetween";
      case MainAxisAlignment.spaceAround:
        return "spaceAround";
      case MainAxisAlignment.spaceEvenly:
        return "spaceEvenly";
      default:
        return null;
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

  static String? converToString(MainAxisSize size) {
    switch (size) {
      case MainAxisSize.min:
        return "min";
      case MainAxisSize.max:
        return "max";
      default:
        return null;
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

  static String? convertToString(TextBaseline? textBaseline) {
    switch (textBaseline) {
      case TextBaseline.alphabetic:
        return "alphabetic";
      case TextBaseline.ideographic:
        return "ideographic";
      default:
        return null;
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

  static String? convertToString(TextDirection? textBaseline) {
    switch (textBaseline) {
      case TextDirection.ltr:
        return "ltr";
      case TextDirection.rtl:
        return "rtl";
      default:
        return null;
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

  static String? convertToString(VerticalDirection vertical) {
    switch (vertical) {
      case VerticalDirection.down:
        return "down";
      case VerticalDirection.up:
        return "min";
      default:
        return null;
    }
  }
}
