import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

class XSduiDividerVertical {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      VerticalDivider(
        color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
        endIndent: json["endIndent"],
        width: json["width"],
        thickness: json["thickness"],
        indent: json["indent"],
      );
}
