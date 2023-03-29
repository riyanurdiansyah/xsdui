import 'package:flutter/material.dart';

import 'xsdui_text_extension.dart';

class XSduiText {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Text(
        json["text"],
        maxLines: json["attr"]?["maxLines"],
        overflow: json["attr"] == null || json["attr"]["overflow"] == null
            ? null
            : XSduiTextOverflow.fromString(json["attr"]["overflow"]),
        style: TextStyle(
          fontSize: json["attr"]?["fontSize"],
          fontFamily: json["attr"]?["fontFamily"],
          fontWeight: json["attr"]?["fontWeight"] == null
              ? null
              : XSduiFontWeight.fromString(json["attr"]["fontWeight"]),
          fontStyle: json["attr"]?["fontStyle"] == null
              ? null
              : XSduiFontStyle.fromString(json["attr"]["fontStyle"]),
          wordSpacing: json["attr"]?["wordSpacing"],
          color: json["attr"]?["color"],
          height: json["attr"]?["height"],
        ),
      );
}
