import 'package:flutter/material.dart';

extension XSduiImageFit on BoxFit {
  static BoxFit fromString(String fit) {
    switch (fit) {
      case "fill":
        return BoxFit.fill;
      case "contain":
        return BoxFit.contain;
      case "cover":
        return BoxFit.cover;
      case "fitWidth":
        return BoxFit.fitWidth;
      case "fitHeight":
        return BoxFit.fitHeight;
      case "scaleDown":
        return BoxFit.scaleDown;
      default:
        return BoxFit.none;
    }
  }
}

extension XSduiFilterQuality on FilterQuality {
  static FilterQuality fromString(String? quality) {
    switch (quality) {
      case null:
        return FilterQuality.low;
      case "medium":
        return FilterQuality.medium;
      case "high":
        return FilterQuality.high;
      default:
        return FilterQuality.none;
    }
  }
}
