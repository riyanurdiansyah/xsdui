import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiFlexible {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Flexible(
      flex: json["flex"],
      child: XSdui.fromJson(
        context,
        json: json["child"],
      ),
    );
  }

  static Map<String, dynamic>? toJson(Flexible widget) {
    return {
      "type": "Flexible",
      "flex": widget.flex,
      "child": XSdui.toJson(widget.child),
    };
  }
}
