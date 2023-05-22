import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_wrap/xsdui_wrap_extension.dart';

import '../../xsdui/xsdui_main.dart';

class XSduiWrap {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Wrap(
      spacing: json["spacing"] ?? 0.0,
      runSpacing: json["runSpacing"] ?? 0.0,
      alignment: json['alignment'] == null
          ? WrapAlignment.start
          : XSduiWrapAlignmentExtension.fromString(json['alignment']),
      crossAxisAlignment: json['crossAlignment'] == null
          ? WrapCrossAlignment.start
          : XSduiCrossWrapAlignmentExtension.fromString(json['crossAlignment']),
      children: List.generate(
        json["children"]?.length ?? 0,
        (index) => XSdui.fromJson(context, json: json["children"][index]),
      ),
    );
  }
}
