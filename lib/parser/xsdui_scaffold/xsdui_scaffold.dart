import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_appbar/xsdui_appbar.dart';
import 'package:xsdui/xsdui.dart';

class XSduiScaffold {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Scaffold(
        appBar: XSduiAppbar.fromJson(context, json: json["appBar"]),
        body: XSdui.fromJson(context, json: json["body"]),
      );
}
