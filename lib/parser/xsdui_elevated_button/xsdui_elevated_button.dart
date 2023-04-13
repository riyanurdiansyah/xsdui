import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

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
        backgroundColor: json["color"] == null
            ? null
            : MaterialStateProperty.all(HexColor.fromHex(json["color"])),
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
      "style": widget.style.toString(),
      "child": XSdui.toJson(widget.child),
    };
  }
}
