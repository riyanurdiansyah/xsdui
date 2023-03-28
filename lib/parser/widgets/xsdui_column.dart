import 'package:flutter/material.dart';

import '../parser.dart';

class XSduiParseToColumn {
  static Widget parse(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Column(
        children: List.generate(
          json["children"].length,
          (index) => XSduiParseToWidget.fromJson(
            context,
            json: json["children"][index],
          ),
        ),
      );
}
