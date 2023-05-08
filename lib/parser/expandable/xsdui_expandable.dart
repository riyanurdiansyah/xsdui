import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiExpandable {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return ExpandableNotifier(
      child: ScrollOnExpand(
        scrollOnExpand: json["scrollOnExpand"] ?? true,
        scrollOnCollapse: json["scrollOnCollapse"] ?? true,
        child: ExpandablePanel(
          theme: const ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            expandIcon: Icons.add_rounded,
            collapseIcon: Icons.remove_rounded,
            animationDuration: Duration(milliseconds: 900),
          ),
          header: XSdui.fromJson(context, json: json["header"]),
          collapsed: XSdui.fromJson(context, json: json["collapsed"]),
          expanded: XSdui.fromJson(context, json: json["expanded"]),
        ),
      ),
    );
  }
}
