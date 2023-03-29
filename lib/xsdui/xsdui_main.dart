import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_image/xsdui_image.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view.dart';
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
        return XSduiText.fromJson(context, json: json);

      case "image":
        return XSduiImage.fromJson(context, json: json);

      case "singlechildscrollview":
        return XSduiSingleChildScrollView.fromJson(context, json: json);

      default:
        return const SizedBox();
    }
  }
}
