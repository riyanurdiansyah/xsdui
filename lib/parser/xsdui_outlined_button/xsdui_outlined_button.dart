import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiOutlinedButton {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      OutlinedButton(
        onPressed: () {},
        autofocus: json["autoFocus"] ?? false,
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
        style: ButtonStyle(
          backgroundColor: json["color"] == null
              ? null
              : MaterialStateProperty.all(HexColor.fromHex(json["color"])),
          elevation: json["elevation"] == null
              ? null
              : MaterialStateProperty.all(json["elevation"]),
          padding: json["padding"] == null
              ? null
              : MaterialStateProperty.all(
                  XSduiEdgeInsetPadding.fromMap(json["padding"])),
        ),
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
