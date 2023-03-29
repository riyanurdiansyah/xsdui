import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiSizedBox {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      SizedBox(
        width: json["attr"]["width"],
        height: json["attr"]["height"],
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
