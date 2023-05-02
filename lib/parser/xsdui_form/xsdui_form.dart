import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_form/xsdui_form_extension.dart';
import 'package:xsdui/xsdui.dart';

class XsduiForm {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    required Map<String, GlobalKey<FormState>> keyMaps,
  }) {
    GlobalKey<FormState> handleAction() {
      if (keyMaps.containsKey(json['key'])) {
        return keyMaps[json['key']]!;
      } else {
        return GlobalKey();
      }
    }

    return Form(
      key: handleAction(),
      autovalidateMode: XsduiAutoValidation.fromMap(json['validatemode']),
      child: XSdui.fromJson(
        context,
        json: json["child"],
      ),
    );
  }

  static Map<String, dynamic>? toJson(Form widget) {
    return {
      "type": "Form",
      "child": XSdui.toJson(widget.child),
    };
  }
}
