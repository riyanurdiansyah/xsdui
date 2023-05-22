import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_container/xsdui_container_extension.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import 'package:xsdui/parser/xsdui_text/xsdui_text_extension.dart';
import 'package:xsdui/parser/xsdui_text_form_field/xsdui_text_form_field_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiTextFormField {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    required Map<String, TextEditingController> controllers,
    required Map<String, String? Function(String?)?> validators,
  }) {
    TextEditingController handleAction() {
      if (controllers.containsKey(json['controller'])) {
        return controllers[json['controller']]!;
      } else {
        return TextEditingController();
      }
    }

    String? Function(String?)? handleValidator() {
      if (validators.containsKey(json['validator'])) {
        return validators[json['validator']]!;
      } else {
        return null;
      }
    }

    return TextFormField(
      validator: json['validator'] == null ? null : handleValidator(),
      controller: json['controller'] == null ? null : handleAction(),
      textAlign: XSduiTextAlign.fromString(json["textAlign"]),
      autocorrect: json["autoCorrect"] ?? true,
      autofocus: json["autoFocus"] ?? false,
      cursorColor: json["cursorColor"] == null
          ? null
          : HexColor.fromHex(json["cursorColor"]),
      cursorHeight: json["cursorHeight"],
      cursorWidth: json["cursorWidth"] ?? 2.0,
      style: TextStyle(
        fontSize: json["fontSize"],
        fontFamily: json["fontFamily"],
        fontWeight: json["fontWeight"] == null
            ? null
            : XSduiFontWeight.fromString(json["fontWeight"]),
        fontStyle: json["fontStyle"] == null
            ? null
            : XSduiFontStyle.fromString(json["fontStyle"]),
        wordSpacing: json["wordSpacing"],
        color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
        height: json["height"],
      ),
      enabled: json["enabled"],
      readOnly: json["readOnly"] ?? false,
      expands: json["expands"] ?? false,
      maxLength: json["maxLength"],
      maxLines: json["maxLines"] ?? 1,
      minLines: json["minLines"],
      obscureText: json["obscureText"] ?? false,
      scrollPhysics: json["scrollPhysics"] == null
          ? null
          : XSduiScrollPhysics.fromString(json["scrollPhysics"]),
      textInputAction: json["textInputAction"] == null
          ? null
          : XSduiTextInputAction.fromJson(json["textInputAction"]),
      keyboardType: json["keyboardType"] == null
          ? null
          : XSduiTextInputType.fromJson(json["keyboardType"]),
      decoration: InputDecoration(
        filled: json["filled"],
        fillColor: json["fillColor"] == null
            ? null
            : HexColor.fromHex(json["fillColor"]),
        hintText: json["hintText"],
        label: json["label"] == null
            ? null
            : XSdui.fromJson(context, json: json["label"]),
        focusedErrorBorder: json["focusedErrorBorder"] == null
            ? null
            : XSduiInputBorder.fromMap(json["focusedErrorBorder"]),
        focusedBorder: json["focusedBorder"] == null
            ? null
            : XSduiInputBorder.fromMap(json["focusedBorder"]),
        enabledBorder: json["enabledBorder"] == null
            ? null
            : XSduiInputBorder.fromMap(json["enabledBorder"]),
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

  static Map<String, dynamic>? toJson(TextFormField widget) {
    return null;
  }
}
