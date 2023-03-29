import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

import 'xsdui_container_extension.dart';

class XSduiContainer {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Container(
        width: json["fitWidth"] == true ? double.infinity : json["width"],
        height: json["height"],
        decoration: BoxDecoration(
          color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
          borderRadius: json["borderRadius"] == null
              ? null
              : XSduiBorderRadius.fromMap(json["borderRadius"]),
        ),
        alignment: json["alignment"],
        margin: json["margin"] == null
            ? null
            : XSduiEdgeInsetMargin.fromMap(json["margin"]),
        padding: json["padding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["padding"]),
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
