import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

class XSduiDivider {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Divider(
        color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
        endIndent: json["endIndent"],
        height: json["height"],
        thickness: json["thickness"],
        indent: json["indent"],
      );
}
