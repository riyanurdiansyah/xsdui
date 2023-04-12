import 'package:flutter/material.dart';

import '../../xsdui.dart';
import 'xsdui_column_extension.dart';

class XSduiColumn {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Column(
      crossAxisAlignment:
          XSduiCrossAxisAlignment.fromString(json["crossAxisAlignment"]),
      mainAxisSize: XSduiMainAxisSize.fromString(json["mainAxisSize"]),
      mainAxisAlignment:
          XSduiMainAxisAlignment.fromString(json["mainAxisAlignment"]),
      textBaseline: json["textBaseline"] == null
          ? null
          : XSduiTextBaseline.fromString(json["textBaseline"]),
      textDirection: json["textDirection"] == null
          ? null
          : XSduiTextDirection.fromString(json["textDirection"]),
      verticalDirection:
          XSduiVerticalDirection.fromString(json["verticalDirection"]),
      children: List.generate(
        json["children"] == null ? 0 : json["children"].length,
        (index) => XSdui.fromJson(context, json: json["children"][index]),
      ),
    );
  }

  static Map<String, dynamic>? toJson({
    required Column widget,
  }) {
    return {
      "crossAxisAlignment":
          XSduiCrossAxisAlignment.convertToString(widget.crossAxisAlignment),
      "mainAxisSize": XSduiMainAxisSize.converToString(widget.mainAxisSize),
      "textBaseline": XSduiTextBaseline.convertToString(widget.textBaseline),
      "textDirection": XSduiTextDirection.convertToString(widget.textDirection),
      "mainAxisAlignment":
          XSduiMainAxisAlignment.convertToString(widget.mainAxisAlignment),
      "children": List.generate(widget.children.length,
          (index) => XSdui.toJson(widget: widget.children[index])),
    };
  }
}
