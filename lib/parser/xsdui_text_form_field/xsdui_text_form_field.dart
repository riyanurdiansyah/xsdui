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
          border: json["border"] == null
              ? null
              : XSduiInputBorder.fromMap(json["border"]),
          errorBorder: json["errorBorder"] == null
              ? null
              : XSduiInputBorder.fromMap(json["errorBorder"]),
          disabledBorder: json["disabledBorder"] == null
              ? null
              : XSduiInputBorder.fromMap(json["disabledBorder"]),
          contentPadding: json["contentPadding"] == null
              ? null
              : XSduiEdgeInsetPadding.fromMap(json["contentPadding"]),
          labelText: json["labelText"],
        ),
      );
}
