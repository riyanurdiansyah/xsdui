import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_column/xsdui_column_extension.dart';

class XSduiRow {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Row(
      textDirection: json["textDirection"] == null
          ? null
          : XSduiTextDirection.fromString(json["textDirection"]),
      textBaseline: json["textBaseline"] == null
          ? null
          : XSduiTextBaseline.fromString(json["textBaseline"]),
      verticalDirection:
          XSduiVerticalDirection.fromString(json["verticalDirection"]),
      crossAxisAlignment:
          XSduiCrossAxisAlignment.fromString(json["crossAxisAlignment"]),
      mainAxisSize: XSduiMainAxisSize.fromString(json["mainAxisSize"]),
      mainAxisAlignment:
          XSduiMainAxisAlignment.fromString(json["mainAxisAlignment"]),
      children: List.generate(
        json["children"]?.length ?? 0,
        (index) => XSdui.fromJson(context, json: json["children"][index]),
      ),
    );
  }

  static Map<String, dynamic>? toJson(Row widget) {
    return {
      "type": "Row",
      "textBaseline": XSduiTextBaseline.convertToString(widget.textBaseline),
      "textDirection": XSduiTextDirection.convertToString(widget.textDirection),
      "verticalDirection":
          XSduiVerticalDirection.convertToString(widget.verticalDirection),
      "crossAxisAlignment":
          XSduiCrossAxisAlignment.convertToString(widget.crossAxisAlignment),
      "mainAxisSize": XSduiMainAxisSize.converToString(widget.mainAxisSize),
      "mainAxisAlignment":
          XSduiMainAxisAlignment.convertToString(widget.mainAxisAlignment),
      "children": List.generate(widget.children.length,
          (index) => XSdui.toJson(widget.children[index])),
    };
  }
}
