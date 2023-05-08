import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiPositioned {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Positioned(
      bottom: json["bottom"],
      height: json["height"],
      left: json["left"],
      right: json["right"],
      top: json["top"],
      width: json["width"],
      child: XSdui.fromJson(context, json: json["child"]),
    );
  }
}
