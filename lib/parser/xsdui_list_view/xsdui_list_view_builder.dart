import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';

class XSduiListViewBuilder {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      ListView.builder(
        shrinkWrap: json["shrinkWrap"] ?? false,
        scrollDirection: XSduiAxis.fromString(json["scrollDirection"]),
        physics: json["physics"] == null
            ? null
            : XSduiScrollPhysics.fromString(json["physics"]),
        itemCount: json["children"]?.length ?? 0,
        itemBuilder: (context, index) =>
            XSdui.fromJson(context, json: json["children"][index]),
      );
}
