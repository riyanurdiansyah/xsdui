import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_column/xsdui_column_extension.dart';

class XSduiRow {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Row(
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
