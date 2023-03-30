import 'package:flutter/material.dart';

extension XSduiListViewKeyboardDissmissBehavior
    on ScrollViewKeyboardDismissBehavior {
  static ScrollViewKeyboardDismissBehavior fromString(String? keyboardDimiss) {
    switch (keyboardDimiss) {
      case null:
        return ScrollViewKeyboardDismissBehavior.manual;
      case "manual":
        return ScrollViewKeyboardDismissBehavior.manual;
      case "onDrag":
        return ScrollViewKeyboardDismissBehavior.onDrag;
      default:
        return ScrollViewKeyboardDismissBehavior.manual;
    }
  }
}
