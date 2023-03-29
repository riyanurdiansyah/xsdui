import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

extension XSduiInputBorder on InputBorder {
  static InputBorder fromMap(Map<String, dynamic> map) {
    switch (map["borderType"]) {
      case "underline":
        return UnderlineInputBorder(
          borderRadius: map["borderRadius"] == null
              ? const BorderRadius.all(Radius.circular(4.0))
              : XSduiBorderRadius.fromMap(map["borderRadius"]),
          borderSide: BorderSide(
            color: HexColor.fromHex(map["color"]),
            width: map["width"] ?? 1.0,
          ),
        );

      case "outline":
        return OutlineInputBorder(
          borderRadius: map["borderRadius"] == null
              ? const BorderRadius.all(Radius.circular(4.0))
              : XSduiBorderRadius.fromMap(map["borderRadius"]),
          borderSide: BorderSide(
            color: HexColor.fromHex(map["color"]),
            width: map["width"] ?? 1.0,
          ),
        );

      default:
        return UnderlineInputBorder(
          borderRadius: map["borderRadius"] == null
              ? const BorderRadius.all(Radius.circular(4.0))
              : XSduiBorderRadius.fromMap(map["borderRadius"]),
          borderSide: BorderSide(
            color: HexColor.fromHex(map["color"]),
            width: map["width"] ?? 1.0,
          ),
        );
    }
  }
}
