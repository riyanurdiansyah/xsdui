import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_stack/xsdui_stack_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

import 'xsdui_container_extension.dart';

class XSduiContainer {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Container(
      width: json["width"] ?? double.infinity,
      height: json["height"],
      decoration: BoxDecoration(
        color: json["color"] == null ? null : HexColor.fromHex(json["color"]),
        borderRadius: json["borderRadius"] == null
            ? null
            : XSduiBorderRadius.fromMap(json["borderRadius"]),
      ),
      alignment: json["alignment"] == null
          ? null
          : XSduiAlignment.fromString(json["alignment"]),
      margin: json["margin"] == null
          ? null
          : XSduiEdgeInsetMargin.fromMap(json["margin"]),
      padding: json["padding"] == null
          ? null
          : XSduiEdgeInsetPadding.fromMap(json["padding"]),
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(Container widget) {
    return {
      "type": "Container",
      "width": widget.constraints!.maxWidth.runtimeType == double
          ? widget.constraints!.maxWidth
          : null,
      "height": widget.constraints!.maxHeight.runtimeType == double
          ? widget.constraints!.maxHeight
          : null,
      "color": widget.color == null ? null : HexColor.toHex(widget.color!),
      "alignment": widget.alignment.toString() == "null"
          ? null
          : widget.alignment.toString().replaceAll("Alignment.", ""),
      "margin": widget.margin == null
          ? null
          : {
              "marginType": "ltrb",
              "left": (widget.margin as EdgeInsets).left,
              "top": (widget.margin as EdgeInsets).top,
              "right": (widget.margin as EdgeInsets).right,
              "bottom": (widget.margin as EdgeInsets).bottom,
            },
      "padding": widget.padding == null
          ? null
          : {
              "paddingType": "ltrb",
              "left": (widget.padding as EdgeInsets).left,
              "top": (widget.padding as EdgeInsets).top,
              "right": (widget.padding as EdgeInsets).right,
              "bottom": (widget.padding as EdgeInsets).bottom,
            },
      "borderRadius": {
        "borderRadiusType": "ltrb",
        "bottomLeft":
            ((widget.decoration as BoxDecoration).borderRadius as BorderRadius)
                .bottomLeft
                .x,
        "bottomRight":
            ((widget.decoration as BoxDecoration).borderRadius as BorderRadius)
                .bottomRight
                .x,
        "topLeft":
            ((widget.decoration as BoxDecoration).borderRadius as BorderRadius)
                .topLeft
                .x,
        "topRight":
            ((widget.decoration as BoxDecoration).borderRadius as BorderRadius)
                .topRight
                .x,
      },
      "child": XSdui.toJson(widget.child),
    };
  }
}
