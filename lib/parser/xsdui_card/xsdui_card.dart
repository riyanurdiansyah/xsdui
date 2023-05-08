import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../../utils/xsdui_extension.dart';
import '../xsdui_container/xsdui_container_extension.dart';

class XSduiCard {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Card(
      semanticContainer: json["semanticContainer"] ?? true,
      elevation: json["elevation"],
      color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
      margin: json["margin"] == null
          ? null
          : XSduiEdgeInsetMargin.fromMap(json["margin"]),
      shape: json["shape"] == null
          ? null
          : RoundedRectangleBorder(
              borderRadius: json["shape"]["borderRadius"] == null
                  ? BorderRadius.zero
                  : XSduiBorderRadius.fromMap(json["shape"]["borderRadius"]),
              side: json["shape"]["borderSide"] == null
                  ? BorderSide.none
                  : BorderSide(
                      color: json["shape"]["borderSide"]["color"] == null
                          ? const Color(0xFF000000)
                          : HexColor.fromHex(
                              json["shape"]["borderSide"]["color"],
                            ),
                    ),
            ),
      child: XSdui.fromJson(context, json: json["child"]),
    );
  }
}
