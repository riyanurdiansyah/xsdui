import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_column/xsdui_column_extension.dart';

class XSduiRow {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Row(
        crossAxisAlignment: XSduiCrossAxisAlignment.fromString(
            json["attr"]["crossAxisAlignment"]),
        mainAxisSize:
            XSduiMainAxisSize.fromString(json["attr"]["mainAxisSize"]),
        mainAxisAlignment: XSduiMainAxisAlignment.fromString(
            json["attr"]["mainAxisAlignment"]),
        children: List.generate(
          json["children"] == null ? 0 : json["children"].length,
          (index) => XSdui.fromJson(context, json: json["children"][index]),
        ),
      );
}
