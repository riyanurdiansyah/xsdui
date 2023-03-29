import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiListViewSeparated {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      ListView.separated(
        shrinkWrap: json["shrinkWrap"] ?? false,
        scrollDirection: XSduiAxis.fromString(json["scrollDirection"]),
        physics: json["physics"] == null
            ? null
            : XSduiScrollPhysics.fromString(json["physics"]),
        separatorBuilder: (context, index) {
          if (json["separatorBuilder"] != null) {
            return XSdui.fromJson(context, json: json["separatorBuilder"]);
          }
          return const Divider();
        },
        itemCount: json["children"]?.length ?? 0,
        itemBuilder: (context, index) =>
            XSdui.fromJson(context, json: json["children"][index]),
      );
}
