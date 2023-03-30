import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_container/xsdui_container_extension.dart';
import '../xsdui_stack/xsdui_stack_extension.dart';
import 'xsdui_list_view_extension.dart';

class XSduiListViewSeparated {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      ListView.separated(
        addAutomaticKeepAlives: json["addAutomaticKeepAlives"] ?? true,
        addRepaintBoundaries: json["addRepaintBoundaries"] ?? true,
        addSemanticIndexes: json["addSemanticIndexes"] ?? true,
        cacheExtent: json["cacheExtent"],
        clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
        dragStartBehavior:
            XSduiDragStartBehavior.fromString(json["dragStartBehavior"]),
        keyboardDismissBehavior:
            XSduiListViewKeyboardDissmissBehavior.fromString(
                json["keyboardDismissBehavior"]),
        padding: json["padding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["padding"]),
        primary: json["primary"],
        restorationId: json["restorationId"],
        reverse: json["reverse"] ?? false,
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
