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
            color: map["color"] == null
                ? const Color(0xFF000000)
                : HexColor.fromHex(map["color"]),
            width: map["width"] ?? 1.0,
          ),
        );

      case "outline":
        return OutlineInputBorder(
          borderRadius: map["borderRadius"] == null
              ? const BorderRadius.all(Radius.circular(4.0))
              : XSduiBorderRadius.fromMap(map["borderRadius"]),
          borderSide: BorderSide(
            color: map["color"] == null
                ? const Color(0xFF000000)
                : HexColor.fromHex(map["color"]),
            width: map["width"] ?? 1.0,
          ),
        );

      default:
        return UnderlineInputBorder(
          borderRadius: map["borderRadius"] == null
              ? const BorderRadius.all(Radius.circular(4.0))
              : XSduiBorderRadius.fromMap(map["borderRadius"]),
          borderSide: BorderSide(
            color: map["color"] == null
                ? const Color(0xFF000000)
                : HexColor.fromHex(map["color"]),
            width: map["width"] ?? 1.0,
          ),
        );
    }
  }
}

extension XSduiTextInputType on TextInputType {
  static TextInputType fromJson(String input) {
    switch (input) {
      case "name":
        return TextInputType.name;
      case "number":
        return TextInputType.number;
      case "emailAddress":
        return TextInputType.emailAddress;
      case "text":
        return TextInputType.text;
      case "multiline":
        return TextInputType.multiline;
      default:
        return TextInputType.text;
    }
  }
}

extension XSduiTextInputAction on TextInputAction {
  static TextInputAction fromJson(String input) {
    switch (input) {
      case "done":
        return TextInputAction.done;
      case "go":
        return TextInputAction.go;
      case "newline":
        return TextInputAction.newline;
      case "next":
        return TextInputAction.next;
      case "search":
        return TextInputAction.search;
      case "send":
        return TextInputAction.send;
      case "none":
        return TextInputAction.none;
      default:
        return TextInputAction.done;
    }
  }
}
