import 'package:flutter/material.dart';
import 'package:xsdui/parser/widgets/xsdui_column.dart';
import 'package:xsdui/parser/widgets/xsdui_text.dart';
import 'package:xsdui/xsdui.dart';

class XSduiParseToWidget {
  Widget? serverWidget;

  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    String type = json["type"].toString().toLowerCase();
    switch (type) {
      case "container":
        return XSduiParseToContainer.parse(context, json: json);

      case "column":
        return XSduiParseToColumn.parse(context, json: json);

      case "text":
        return XSduiParseToText.parse(context, json: json);

      default:
        return const SizedBox();
    }
  }
}
