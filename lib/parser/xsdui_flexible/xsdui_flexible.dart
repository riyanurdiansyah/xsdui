import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiFlexible {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Flexible(
        flex: json["flex"],
        child: XSdui.fromJson(
          context,
          json: json["child"],
        ),
      );
}
