import "package:flutter/material.dart";
import "package:xsdui/parser/xsdui_container/xsdui_container_extension.dart";
import "package:xsdui/utils/xsdui_extension.dart";
import "package:xsdui/xsdui.dart";

class XSduiElevatedButton {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (json["onPressed"]["type"] == "http") {
          XSduiNetwork.getRequest(url: json["onPressed"]["url"]);
        }
      },
      style: ButtonStyle(
        backgroundColor: json["backgroundColor"] == null
            ? null
            : MaterialStateProperty.all(
                HexColor.fromHex(json["backgroundColor"])),
        elevation: json["elevation"] == null
            ? null
            : MaterialStateProperty.all(json["elevation"]),
        padding: json["padding"] == null
            ? null
            : MaterialStateProperty.all(
                XSduiEdgeInsetPadding.fromMap(json["padding"]),
              ),
      ),
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(ElevatedButton widget) {
    return {
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
