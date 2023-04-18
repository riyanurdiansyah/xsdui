import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_container/xsdui_container_extension.dart';

class XSduiInkwell {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return InkWell(
      onTap: () {},
      borderRadius: json["borderRadius"] == null
          ? null
          : XSduiBorderRadius.fromMap(json["borderRadius"]),
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(InkWell widget) {
    return {
      "type": "InkWell",
      "borderRadius": {
        "borderRadiusType": "ltrb",
        "bottomLeft": (widget.borderRadius as BorderRadius).bottomLeft.x,
        "bottomRight": (widget.borderRadius as BorderRadius).bottomRight.x,
        "topLeft": (widget.borderRadius as BorderRadius).topLeft.x,
        "topRight": (widget.borderRadius as BorderRadius).topRight.x,
      },
      "child": XSdui.toJson(widget.child),
    };
  }
}
