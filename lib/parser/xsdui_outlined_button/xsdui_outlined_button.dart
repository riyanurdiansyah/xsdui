import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiOutlinedButton {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return OutlinedButton(
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

  static Map<String, dynamic>? toJson(OutlinedButton widget) {
    return {
      "type": "OutlinedButton",
      "autoFocus": widget.autofocus,
      "focusNode": {
        "canRequestFocus": widget.focusNode?.canRequestFocus,
        "debugLabel": widget.focusNode?.debugLabel,
        "descendantsAreFocusable": widget.focusNode?.descendantsAreFocusable,
        "descendantsAreTraversable":
            widget.focusNode?.descendantsAreTraversable,
        "skipTraversal": widget.focusNode?.skipTraversal,
      },
      "style": {
        "backgroundColor": widget.style?.backgroundColor == null
            ? null
            : HexColor.toHex(
                (widget.style!.backgroundColor as MaterialStatePropertyAll)
                    .value),
        "elevation": widget.style!.elevation == null
            ? null
            : (widget.style!.elevation as MaterialStatePropertyAll).value,
        "padding": {
          "paddingType": "ltrb",
          "left": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .left,
          "top": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .top,
          "right": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .right,
          "bottom": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .bottom,
        }
      },
      "child": XSdui.toJson(widget.child),
    };
  }
}
