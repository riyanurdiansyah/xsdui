import 'package:flutter/material.dart';

extension XsduiAutoValidation on AutovalidateMode {
  static AutovalidateMode fromMap(String type) {
    switch (type) {
      case "disabled":
        return AutovalidateMode.disabled;
      case "always":
        return AutovalidateMode.always;
      case "onUserInteraction":
        return AutovalidateMode.onUserInteraction;
      default:
        return AutovalidateMode.disabled;
    }
  }
}
