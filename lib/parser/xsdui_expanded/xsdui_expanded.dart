import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiExpanded {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Expanded(
        flex: json["attr"]["flex"],
        child: XSdui.fromJson(
          context,
          json: json["child"],
        ),
      );
}
