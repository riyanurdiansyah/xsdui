import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiSizedBox {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return SizedBox(
      width: json["width"].runtimeType == int
          ? double.parse(json["width"].toString())
          : json["width"],
      height: json["height"].runtimeType == int
          ? double.parse(json["height"].toString())
          : json["height"],
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(SizedBox widget) {
    return {
      "type": "SizedBox",
      "width": widget.width,
      "height": widget.height,
      "child": XSdui.toJson(widget.child),
    };
  }
}
