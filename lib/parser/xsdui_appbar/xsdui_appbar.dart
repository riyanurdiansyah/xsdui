import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiAppbar {
  static AppBar fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      AppBar(
        centerTitle: json["centerTitle"],
        automaticallyImplyLeading: json["automaticallyImplyLeading"] ?? true,
        title: XSdui.fromJson(context, json: json["title"]),
        backgroundColor: json["backgroundColor"] == null
            ? null
            : HexColor.fromHex(json["backgroundColor"]),
        elevation: json["elevation"],
        titleSpacing: json["titleSpacing"],
        actions: List.generate(
          json["actions"]?.length ?? 0,
          (index) => XSdui.fromJson(context, json: json["actions"][index]),
        ),
        leading: json["leading"] == null
            ? null
            : XSdui.fromJson(context, json: json["leading"]),
      );
}
