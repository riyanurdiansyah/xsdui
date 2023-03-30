import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_column/xsdui_column_extension.dart';
import 'package:xsdui/parser/xsdui_stack/xsdui_stack_extension.dart';

import '../../xsdui.dart';

class XSduiStack {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Stack(
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
