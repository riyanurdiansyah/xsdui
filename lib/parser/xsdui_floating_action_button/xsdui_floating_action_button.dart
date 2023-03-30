import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_stack/xsdui_stack_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiFloatingActionButton {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      FloatingActionButton(
        onPressed: () {},
        backgroundColor: json["backgroundColor"] == null
            ? null
            : HexColor.fromHex(json["backgroundColor"]),
        autofocus: json["autofocus"] ?? false,
        clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
        disabledElevation: json["disabledElevation"],
        elevation: json["elevation"],
        enableFeedback: json["enableFeedback"],
        focusColor: json["focusColor"] == null
            ? null
            : HexColor.fromHex(json["focusColor"]),
        focusElevation: json["focusElevation"],
        focusNode: json["focusNode"] == null
            ? null
            : FocusNode(
                canRequestFocus: json["focusNode"]["canRequestFocus"] ?? true,
                debugLabel: json["focusNode"]["debugLabel"],
                descendantsAreFocusable:
                    json["focusNode"]["descendantsAreFocusable"] ?? true,
                descendantsAreTraversable:
                    json["focusNode"]["descendantsAreTraversable"] ?? true,
                skipTraversal: json["focusNode"]["skipTraversal"] ?? false,
              ),
        foregroundColor: json["focusNode"]["foregroundColor"] == null
            ? null
            : HexColor.fromHex(json["foregroundColor"]),
        highlightElevation: json["highlightElevation"],
        hoverColor: json["hoverColor"] == null
            ? null
            : HexColor.fromHex(json["hoverColor"]),
        isExtended: json["isExtended"] ?? false,
        hoverElevation: json["hoverElevation"],
        mini: json["mini"] ?? false,
        tooltip: json["tooltip"],
        splashColor: json["splashColor"] == null
            ? null
            : HexColor.fromHex(json["splashColor"]),
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
