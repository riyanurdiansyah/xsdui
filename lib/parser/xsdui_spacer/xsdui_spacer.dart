import 'package:flutter/material.dart';

class XSduiSpacer {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Spacer(flex: json["flex"] ?? 1);
}
