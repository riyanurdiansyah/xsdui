import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_container/xsdui_container_extension.dart';
import '../xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import '../xsdui_stack/xsdui_stack_extension.dart';
import 'xsdui_list_view_extension.dart';

class XSduiListViewBuilder {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      ListView.builder(
        addAutomaticKeepAlives: json["addAutomaticKeepAlives"] ?? true,
        addRepaintBoundaries: json["addRepaintBoundaries"] ?? true,
        addSemanticIndexes: json["addSemanticIndexes"] ?? true,
        cacheExtent: json["cacheExtent"],
        clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
        dragStartBehavior:
            XSduiDragStartBehavior.fromString(json["dragStartBehavior"]),
        itemExtent: json["itemExtent"],
        keyboardDismissBehavior:
            XSduiListViewKeyboardDissmissBehavior.fromString(
                json["keyboardDismissBehavior"]),
        padding: json["padding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["padding"]),
        primary: json["primary"],
        prototypeItem: json["prototypeItem"] == null
            ? null
            : XSdui.fromJson(context, json: json["prototypeItem"]),
        restorationId: json["restorationId"],
        reverse: json["reverse"] ?? false,
        semanticChildCount: json["semanticChildCount"],
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
