import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/parser/xsdui_text_form_field/xsdui_text_form_field_extension.dart';

class XSduiTextFormField {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      TextFormField(
        decoration: InputDecoration(
          border: json["attr"]["border"] == null
              ? null
              : XSduiInputBorder.fromMap(json["attr"]["border"]),
          errorBorder: json["attr"]["errorBorder"] == null
              ? null
              : XSduiInputBorder.fromMap(json["attr"]["errorBorder"]),
          disabledBorder: json["attr"]["disabledBorder"] == null
              ? null
              : XSduiInputBorder.fromMap(json["attr"]["disabledBorder"]),
          contentPadding: json["attr"]["contentPadding"] == null
              ? null
              : XSduiEdgeInsetPadding.fromMap(json["attr"]["contentPadding"]),
          labelText: json["attr"]["labelText"],
        ),
      );
}
