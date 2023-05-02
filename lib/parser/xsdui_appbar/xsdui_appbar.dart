import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiAppbar {
  static AppBar fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return AppBar(
      centerTitle: json["centerTitle"],
      automaticallyImplyLeading: json["automaticallyImplyLeading"] ?? true,
      title: XSdui.fromJson(context, json: json["title"]),
      backgroundColor: json["backgroundColor"] == null
          ? null
          : HexColor.fromHex(json["backgroundColor"]),
      elevation: json["elevation"],
      titleSpacing: json["titleSpacing"],
      actions: List.generate(
        json["actions"]?.length ?? 0,
        (index) => XSdui.fromJson(context, json: json["actions"][index]),
      ),
      leading: json["leading"] == null
          ? null
          : XSdui.fromJson(context, json: json["leading"]),
    );
  }

  // static Map<String, dynamic>? toJson(AppBar widget) {
  //   return {
  //     "centerTitle": widget.centerTitle,
  //     "automaticallyImplyLeading": widget.automaticallyImplyLeading,
  //     "title": XSdui.toJson(widget.title),
  //     "backgroundColor": widget.backgroundColor == null
  //         ? null
  //         : HexColor.toHex(widget.backgroundColor!),
  //     "elevation": widget.elevation,
  //     "titleSpacing": widget.titleSpacing,
  //     "actions": List.generate(widget.actions?.length ?? 0,
  //         (index) => XSdui.toJson(widget.actions![index])),
  //     "leading": XSdui.toJson(widget.leading),
  //   };
  // }
}
