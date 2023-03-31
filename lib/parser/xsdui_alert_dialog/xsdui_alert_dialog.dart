import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_column/xsdui_column_extension.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/parser/xsdui_stack/xsdui_stack_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_text/xsdui_text_extension.dart';

class XSduiAlertDialog {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      AlertDialog(
        actions: List.generate(json["action"]?.length ?? 0,
            (index) => XSdui.fromJson(context, json: json["actions"])),
        actionsAlignment: json["actionsAlignment"] == null
            ? null
            : XSduiMainAxisAlignment.fromString(json["actionsAlignment"]),
        actionsPadding: json["actionsPadding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["actionsPadding"]),
        alignment: json["alignment"] == null
            ? null
            : XSduiAlignment.fromString(json["alignment"]),
        buttonPadding: json["buttonPadding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["buttonPadding"]),
        content: json["content"] == null
            ? null
            : XSdui.fromJson(context, json: json["content"]),
        elevation: json["elevation"],
        clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
        scrollable: json["scrollable"] ?? false,
        title: json["title"] == null
            ? null
            : XSdui.fromJson(context, json: json["title"]),
        backgroundColor: json["backgroundColor"] == null
            ? null
            : HexColor.fromHex(json["backgroundColor"]),
        titleTextStyle: json["titleTextStyle"] == null
            ? null
            : TextStyle(
                fontSize: json["fontSize"],
                fontFamily: json["fontFamily"],
                fontWeight: json["fontWeight"] == null
                    ? null
                    : XSduiFontWeight.fromString(json["fontWeight"]),
                fontStyle: json["fontStyle"] == null
                    ? null
                    : XSduiFontStyle.fromString(json["fontStyle"]),
                wordSpacing: json["wordSpacing"],
                color: json["color"] == null
                    ? null
                    : HexColor.fromHex(json["color"]),
                height: json["height"],
              ),
      );
}
