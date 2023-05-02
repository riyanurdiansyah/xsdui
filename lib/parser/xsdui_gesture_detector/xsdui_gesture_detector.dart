import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiGestureDetector {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return GestureDetector(
      onTap: () {},
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(GestureDetector widget) {
    return {
      "type": "GestureDetector",
      "child": XSdui.toJson(widget.child),
    };
  }
}
