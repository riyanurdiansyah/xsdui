import 'package:flutter/material.dart';

extension XSduiIconData on IconData {
  static IconData fromString(String icon) {
    switch (icon) {
      case "check_circle":
        return Icons.check_circle;
      default:
        return Icons.abc;
    }
  }
}
