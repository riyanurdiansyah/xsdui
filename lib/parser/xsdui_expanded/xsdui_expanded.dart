import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiExpanded {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Expanded(
      flex: json["flex"] ?? 1,
      child: XSdui.fromJson(
        context,
        json: json["child"],
      ),
    );
  }

  static Map<String, dynamic>? toJson(Expanded widget) {
    return {
      "type": "Expanded",
      "flex": widget.flex,
      "child": XSdui.toJson(widget.child),
    };
  }
}
