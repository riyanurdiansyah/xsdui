import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_column/xsdui_column_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

import 'xsdui_text_extension.dart';

class XSduiText {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Text(
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
        fontSize: json["fontSize"].runtimeType == int
            ? double.parse(json["fontSize"].toString())
            : json["fontSize"],
        fontFamily: json["fontFamily"],
        fontWeight: json["fontWeight"] == null
            ? null
            : XSduiFontWeight.fromString(json["fontWeight"]),
        fontStyle: json["fontStyle"] == null
            ? null
            : XSduiFontStyle.fromString(json["fontStyle"]),
        wordSpacing: json["wordSpacing"],
        color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
        height: json["height"].runtimeType == int
            ? double.parse(json["height"].toString())
            : json["height"],
      ),
    );
  }

  static Map<String, dynamic>? toJson(Text widget) {
    return {
      "type": "Text",
      "textAlign": XSduiTextAlign.convertToString(widget.textAlign),
      "maxLines": widget.maxLines,
      "overflow": XSduiTextOverflow.convertToString(widget.overflow),
      "textDirection": XSduiTextDirection.convertToString(widget.textDirection),
      "softWrap": widget.softWrap,
      "textScaleFactor": widget.textScaleFactor,
      "semanticsLabel": widget.semanticsLabel,
      'color': widget.style!.color == null
          ? null
          : HexColor.toHex(widget.style!.color!),
      "fontSize": widget.style?.fontSize,
      "fontFamily": widget.style?.fontFamily,
      "fontWeight":
          widget.style?.fontWeight.toString().replaceAll("FontWeight.", ""),
      "fontStyle":
          widget.style?.fontStyle.toString().replaceAll("FontStyle.", ""),
      "wordSpacing": widget.style?.wordSpacing,
      "height": widget.style?.height,
    };
  }
}
