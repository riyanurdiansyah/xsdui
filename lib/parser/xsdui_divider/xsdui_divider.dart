import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

class XSduiDivider {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Divider(
      color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
      endIndent: json["endIndent"],
      height: json["height"],
      thickness: json["thickness"],
      indent: json["indent"],
    );
  }

  static Map<String, dynamic>? toJson(Divider widget) {
    return {
      "type": "Divider",
      "color": widget.color == null ? null : HexColor.toHex(widget.color!),
      "endIndent": widget.endIndent,
      "height": widget.height,
      "thickness": widget.thickness,
      "indent": widget.indent,
    };
  }
}
