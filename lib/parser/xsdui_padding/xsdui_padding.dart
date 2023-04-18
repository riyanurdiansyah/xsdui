import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_container/xsdui_container_extension.dart';

class XSduiPadding {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Padding(
      padding: XSduiEdgeInsetPadding.fromMap(json["padding"]),
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(Padding widget) {
    return {
      "type": "Padding",
      "padding": {
        "paddingType": "ltrb",
        "left": (widget.padding as EdgeInsets).left,
        "top": (widget.padding as EdgeInsets).top,
        "right": (widget.padding as EdgeInsets).right,
        "bottom": (widget.padding as EdgeInsets).bottom,
      },
      "child": XSdui.toJson(widget.child),
    };
  }
}
