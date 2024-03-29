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
  }) {
    return AlertDialog(
      titlePadding: json["padding"] == null
          ? null
          : XSduiEdgeInsetPadding.fromMap(json["padding"]),
      actions: List.generate(json["action"]?.length ?? 0,
          (index) => XSdui.fromJson(context, json: json["actions"])),
      actionsAlignment: json["actionsAlignment"] == null
          ? null
          : XSduiMainAxisAlignment.fromString(json["actionsAlignment"]),
      alignment: json["alignment"] == null
          ? null
          : XSduiAlignment.fromString(json["alignment"]),
      shape: RoundedRectangleBorder(
        borderRadius: json["borderRadius"] == null
            ? BorderRadius.zero
            : XSduiBorderRadius.fromMap(json["borderRadius"]),
      ),
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
          : json["backgroundColor"]["isTransparent"]
              ? Colors.transparent
              : HexColor.fromHex(json["backgroundColor"]),
      titleTextStyle: json["titleTextStyle"] == null
          ? null
          : TextStyle(
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
              wordSpacing: json["wordSpacing"].runtimeType == int
                  ? double.parse(json["wordSpacing"].toString())
                  : json["wordSpacing"],
              color: json["color"] == null
                  ? null
                  : HexColor.fromHex(json["color"]),
              height: json["height"].runtimeType == int
                  ? double.parse(json["height"].toString())
                  : json["height"],
            ),
    );
  }

  static Map<String, dynamic>? toJson(AlertDialog widget) {
    return {
      "actions": List.generate(
        widget.actions?.length ?? 0,
        (index) => XSdui.toJson(widget.actions![index]),
      ),
      "title": XSdui.toJson(widget.title),
      "backgroundColor": widget.backgroundColor == null
          ? null
          : HexColor.toHex(widget.backgroundColor!),
      "scrollable": widget.scrollable,
      "elevation": widget.elevation,
      "actionsAlignment":
          XSduiMainAxisAlignment.convertToString(widget.actionsAlignment),
      "titleTextStyle": widget.titleTextStyle?.toString(),
      "content": XSdui.toJson(widget.content),
      "clipBehavior": XSduiClipBehavior.convertToString(widget.clipBehavior),
    };
  }
}
