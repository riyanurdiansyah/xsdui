import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_column/xsdui_column_extension.dart';
import 'package:xsdui/parser/xsdui_stack/xsdui_stack_extension.dart';

import '../../xsdui.dart';

class XSduiStack {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Stack(
      alignment: XSduiAlignment.fromString(json["alignment"]),
      fit: XSduiStackFit.fromString(json["stackFit"]),
      textDirection: json["textDirection"] == null
          ? null
          : XSduiTextDirection.fromString(json["textDirection"]),
      clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
      children: List.generate(
        json["children"] == null ? 0 : json["children"].length,
        (index) => XSdui.fromJson(context, json: json["children"][index]),
      ),
    );
  }

  static Map<String, dynamic>? toJson(Stack widget) {
    return {
      "type": "Stack",
      "alignment": widget.alignment.toString() == "null"
          ? null
          : widget.alignment.toString().replaceAll("Alignment.", ""),
      "fit": widget.fit.toString() == "null"
          ? null
          : widget.fit.toString().replaceAll("StackFit.", ""),
      "textDirection": XSduiTextDirection.convertToString(widget.textDirection),
      "clipBehavior": XSduiClipBehavior.convertToString(widget.clipBehavior),
      "children": List.generate(widget.children.length,
          (index) => XSdui.toJson(widget.children[index])),
    };
  }
}
