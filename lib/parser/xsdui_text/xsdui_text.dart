import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_column/xsdui_column_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

import 'xsdui_text_extension.dart';

class XSduiText {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Text(
        json["title"],
        textAlign: json["textAlign"] == null
            ? null
            : XSduiTextAlign.fromString(json["textAlign"]),
        maxLines: json["maxLines"],
        overflow: json["overflow"] == null
            ? null
            : XSduiTextOverflow.fromString(json["overflow"]),
        textDirection: json["textDirection"] == null
            ? null
            : XSduiTextDirection.fromString(json["textDirection"]),
        softWrap: json["softWrap"],
        textScaleFactor: json["textScaleFactor"],
        semanticsLabel: json["semanticsLabel"],
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
