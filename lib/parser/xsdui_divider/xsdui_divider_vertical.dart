import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

class XSduiVerticalDivider {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return VerticalDivider(
      color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
      endIndent: json["endIndent"],
      width: json["width"],
      thickness: json["thickness"],
      indent: json["indent"],
    );
  }

  static Map<String, dynamic> toJson(VerticalDivider widget) {
    return {
      "color": widget.color == null ? null : HexColor.toHex(widget.color!),
      "endIndent": widget.endIndent,
      "width": widget.width,
      "thickness": widget.thickness,
      "indent": widget.indent,
    };
  }
}
