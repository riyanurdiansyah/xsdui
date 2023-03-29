import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiGestureDetector {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      GestureDetector(
        onTap: () {},
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
