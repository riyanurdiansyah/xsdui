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
        width: json["attr"]?["width"],
        height: json["attr"]?["height"],
        decoration: BoxDecoration(
          color: json["attr"]?["color"] == null
              ? null
              : HexColor.fromHex(json["attr"]["color"]),
          borderRadius: json["attr"]?["borderRadius"] == null
              ? null
              : XSduiBorderRadius.fromMap(json["attr"]["borderRadius"]),
        ),
        alignment: json["attr"]?["alignment"],
        margin: json["attr"]?["margin"] == null
            ? null
            : XSduiEdgeInsetMargin.fromMap(json["attr"]["margin"]),
        padding: json["attr"]?["padding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["attr"]["padding"]),
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
