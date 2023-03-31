import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_container/xsdui_container_extension.dart';

class XSduiPadding {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) =>
      Padding(
        padding: XSduiEdgeInsetPadding.fromMap(json["padding"]),
        child: json["child"] == null
            ? const SizedBox()
            : XSdui.fromJson(context, json: json["child"]),
      );
}
