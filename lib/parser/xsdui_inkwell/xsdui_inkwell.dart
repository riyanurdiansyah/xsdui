import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_container/xsdui_container_extension.dart';

class XSduiInkwell {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      InkWell(
        onTap: () {},
        borderRadius: json["borderRadius"] == null
            ? null
            : XSduiBorderRadius.fromMap(json["borderRadius"]),
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
