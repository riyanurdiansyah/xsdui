import 'package:flutter/material.dart';

import '../../utils/xsdui_font_style.dart';

class XSduiParseToText {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Text(
        json["text"],
        style: TextStyle(
          fontSize: json["attr"]["fontSize"],
          fontFamily: json["attr"]["fontFamily"],
          fontWeight: XSduiFontWeight.fromString(json["attr"]["fontWeight"]),
          fontStyle: XSduiFontStyle.fromString(json["attr"]["fontStyle"]),
        ),
      );
}
