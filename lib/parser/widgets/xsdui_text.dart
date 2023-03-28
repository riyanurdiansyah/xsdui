import 'package:flutter/material.dart';

import '../../utils/xsdui_extension.dart';

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
          wordSpacing: json["attr"]["wordSpacing"],
          color: json["attr"]["color"],
          height: json["attr"]["height"],
          overflow: XSduiTextOverflow.fromString(json["attr"]["overflow"]),
        ),
      );
}
