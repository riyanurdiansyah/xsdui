import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_stack/xsdui_stack_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiFloatingActionButton {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: json["backgroundColor"] == null
          ? null
          : HexColor.fromHex(json["backgroundColor"]),
      autofocus: json["autofocus"] ?? false,
      clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
      disabledElevation: json["disabledElevation"],
      elevation: json["elevation"],
      enableFeedback: json["enableFeedback"],
      focusColor: json["focusColor"] == null
          ? null
          : HexColor.fromHex(json["focusColor"]),
      focusElevation: json["focusElevation"],
      focusNode: json["focusNode"] == null
          ? null
          : FocusNode(
              canRequestFocus: json["focusNode"]["canRequestFocus"] ?? true,
              debugLabel: json["focusNode"]["debugLabel"],
              descendantsAreFocusable:
                  json["focusNode"]["descendantsAreFocusable"] ?? true,
              descendantsAreTraversable:
                  json["focusNode"]["descendantsAreTraversable"] ?? true,
              skipTraversal: json["focusNode"]["skipTraversal"] ?? false,
            ),
      foregroundColor: json["foregroundColor"] == null
          ? null
          : HexColor.fromHex(json["foregroundColor"]),
      highlightElevation: json["highlightElevation"],
      hoverColor: json["hoverColor"] == null
          ? null
          : HexColor.fromHex(json["hoverColor"]),
      isExtended: json["isExtended"] ?? false,
      hoverElevation: json["hoverElevation"],
      mini: json["mini"] ?? false,
      tooltip: json["tooltip"],
      splashColor: json["splashColor"] == null
          ? null
          : HexColor.fromHex(json["splashColor"]),
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  // static Map<String, dynamic>? toJson(FloatingActionButton widget) {
  //   return {
  //     "backgroundColor": widget.backgroundColor == null
  //         ? null
  //         : HexColor.toHex(widget.backgroundColor!),
  //     "autofocus": widget.autofocus,
  //     "disabledElevation": widget.disabledElevation,
  //     "elevation": widget.elevation,
  //     "enableFeedback": widget.enableFeedback,
  //     "focusColor":
  //         widget.focusColor == null ? null : HexColor.toHex(widget.focusColor!),
  //     "focusElevation": widget.focusElevation,
  //     "focusNode": {
  //       "canRequestFocus": widget.focusNode!.canRequestFocus,
  //       "debugLabel": widget.focusNode!.debugLabel,
  //       "descendantsAreFocusable": widget.focusNode!.descendantsAreFocusable,
  //       "descendantsAreTraversable":
  //           widget.focusNode!.descendantsAreTraversable,
  //       "skipTraversal": widget.focusNode!.skipTraversal,
  //     },
  //     "foregroundColor": widget.foregroundColor == null
  //         ? null
  //         : HexColor.toHex(widget.foregroundColor!),
  //     "highlightElevation": widget.highlightElevation,
  //     "hoverColor":
  //         widget.hoverColor == null ? null : HexColor.toHex(widget.hoverColor!),
  //     "isExtended": widget.isExtended,
  //     "hoverElevation": widget.hoverElevation,
  //     "mini": widget.mini,
  //     "tooltip": widget.tooltip,
  //     "splashColor": widget.splashColor == null
  //         ? null
  //         : HexColor.toHex(widget.splashColor!),
  //     "child": XSdui.toJson(widget.child),
  //   };
  // }
}
