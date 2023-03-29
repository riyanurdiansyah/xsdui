import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiSingleChildScrollView {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      SingleChildScrollView(
        padding: json["attr"]["padding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["attr"]["padding"]),
        scrollDirection: XSduiAxis.fromString(json["attr"]["scrollDirection"]),
        physics: json["attr"]["physics"] == null
            ? null
            : XSduiScrollPhysics.fromString(json["attr"]["physics"]),
        reverse: json["attr"]["reverse"] ?? false,
        child: XSdui.fromJson(
          context,
          json: json["child"],
        ),
      );
}
