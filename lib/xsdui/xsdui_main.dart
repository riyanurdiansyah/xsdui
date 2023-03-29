import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSdui {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    String type =
        json["type"] == null ? "" : json["type"].toString().toLowerCase();
    switch (type) {
      case "":
        return const SizedBox();

      case "column":
        return XSduiColumn.fromJson(context, json: json);

      case "container":
        return XSduiContainer.fromJson(context, json: json);

      case "scaffold":
        return XSduiScaffold.fromJson(context, json: json);

      case "text":
        return XSduiText.parse(context, json: json);

      default:
        return const SizedBox();
    }
  }
}
