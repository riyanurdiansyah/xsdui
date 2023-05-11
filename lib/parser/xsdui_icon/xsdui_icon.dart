import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_column/xsdui_column_extension.dart';
import 'package:xsdui/parser/xsdui_icon/xsdui_icon_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

class XSduiIcon {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Icon(
      XSduiIconData.fromString(json["icon"]),
      color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
      fill: json["fill"],
      grade: json["grade"],
      opticalSize: json["opticalSize"],
      semanticLabel: json["semanticLabel"],
      size: json["size"],
      textDirection: json["textDirection"] == null
          ? null
          : XSduiTextDirection.fromString(json["textDirection"]),
      weight: json["weight"],
    );
  }

  static Map<String, dynamic>? toJson(Icon widget) {
    return {
      "icon": widget.icon.toString().replaceAll("Icons.", ""),
      "fill": widget.fill,
      "grade": widget.grade,
      "opticalSize": widget.opticalSize,
      "semanticLabel": widget.semanticLabel,
      "size": widget.size,
    };
  }
}
