import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiSizedBox {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      SizedBox(
        width: json["width"],
        height: json["height"],
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
