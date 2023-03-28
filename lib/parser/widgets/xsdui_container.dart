import 'package:flutter/material.dart';

import '../../utils/extension.dart';
import '../xsdui_parser.dart';

class XSduiParseToContainer {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Container(
        width: json["attr"]["width"],
        height: json["attr"]["height"],
        decoration: BoxDecoration(
          color: json["attr"]["color"] == null
              ? null
              : HexColor.fromHex(json["attr"]["color"]),
          borderRadius: json["attr"]["borderRadiusType"] == null ||
                  json["attr"]["borderRadius"] == null
              ? null
              : json["attr"]["borderRadiusType"] == "all"
                  ? BorderRadius.circular(json["attr"]["borderRadius"])
                  : const BorderRadius.only(),
        ),
        child: json["child"] == null
            ? const SizedBox()
            : XSduiParseToWidget.fromJson(
                context,
                json: json["child"],
              ),
      );
}
