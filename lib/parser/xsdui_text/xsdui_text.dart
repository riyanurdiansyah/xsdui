import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

import 'xsdui_text_extension.dart';

class XSduiText {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Text(
        json["title"],
        maxLines: json["maxLines"],
        overflow: json["overflow"] == null
            ? null
            : XSduiTextOverflow.fromString(json["overflow"]),
        style: TextStyle(
          fontSize: json["fontSize"],
          fontFamily: json["fontFamily"],
          fontWeight: json["fontWeight"] == null
              ? null
              : XSduiFontWeight.fromString(json["fontWeight"]),
          fontStyle: json["fontStyle"] == null
              ? null
              : XSduiFontStyle.fromString(json["fontStyle"]),
          wordSpacing: json["wordSpacing"],
          color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
          height: json["height"],
        ),
      );
}
