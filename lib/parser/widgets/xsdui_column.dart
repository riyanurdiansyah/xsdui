import 'package:flutter/material.dart';

import '../parser.dart';

class XSduiColumn {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Column(
        children: List.generate(
          json["children"] == null ? 0 : json["children"].length,
          (index) => XSduiParseToWidget.fromJson(context,
              json: json["children"][index]),
        ),
      );
}
