import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_image/xsdui_image_extension.dart';
import '../xsdui_stack/xsdui_stack_extension.dart';

class XSduiFittedBox {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return FittedBox(
      alignment: json["alignment"] == null
          ? Alignment.center
          : XSduiAlignment.fromString(json["alignment"]),
      fit: json["fit"] == null
          ? BoxFit.contain
          : XSduiImageFit.fromString(json["fit"]),
      clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
      child: XSdui.fromJson(context, json: json["child"]),
    );
  }
}
