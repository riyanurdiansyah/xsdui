import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import 'package:xsdui/parser/xsdui_stack/xsdui_stack_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiSingleChildScrollView {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return SingleChildScrollView(
      clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
      dragStartBehavior:
          XSduiDragStartBehavior.fromString(json["dragStartBehavior"]),
      padding: json["padding"] == null
          ? null
          : XSduiEdgeInsetPadding.fromMap(json["padding"]),
      scrollDirection: XSduiAxis.fromString(json["scrollDirection"]),
      physics: json["physics"] == null
          ? null
          : XSduiScrollPhysics.fromString(json["physics"]),
      reverse: json["reverse"] ?? false,
      child: XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(SingleChildScrollView widget) {
    return {
      "type": "SingleChildScrollView",
      "clipBehavior": XSduiClipBehavior.convertToString(widget.clipBehavior),
      "dragStartBehavior":
          XSduiDragStartBehavior.convertToString(widget.dragStartBehavior),
      "padding": widget.padding == null
          ? null
          : {
              "paddingType": "ltrb",
              "left": (widget.padding as EdgeInsets).left,
              "top": (widget.padding as EdgeInsets).top,
              "right": (widget.padding as EdgeInsets).right,
              "bottom": (widget.padding as EdgeInsets).bottom,
            },
      "scrollDirection": XSduiAxis.convertToString(widget.scrollDirection),
      "physics": XSduiScrollPhysics.convertToString(widget.physics),
      "reverse": widget.reverse,
      "child": XSdui.toJson(widget.child),
    };
  }
}
