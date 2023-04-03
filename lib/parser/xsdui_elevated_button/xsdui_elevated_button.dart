import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';
import 'package:xsdui/xsdui/xsdui_network.dart';

class XSduiElevatedButton {
  final XSduiNetwork _network = XSduiNetwork();
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      ElevatedButton(
        onPressed: () {
          if (json["onPressed"]["type"] == "http") {
            debugPrint("CEK");
            XSduiNetwork().getRequest(url: json["onPressed"]["url"]);
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
