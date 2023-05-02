import 'package:flutter/material.dart';

class XSduiSpacer {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Spacer(flex: json["flex"] ?? 1);
  }

  static Map<String, dynamic>? toJson(Spacer widget) {
    return {
      "type": "Spacer",
      "flex": widget.flex,
    };
  }
}
