import "package:flutter/material.dart";
import "package:xsdui/parser/xsdui_container/xsdui_container_extension.dart";
import "package:xsdui/utils/xsdui_extension.dart";
import "package:xsdui/xsdui.dart";

class XSduiElevatedButton {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    required Map<String, Function> functionMap,
  }) {
    void handleAction() {
      switch (json['onPressed']['type']) {
        case 'showSnackBar':
          if (json['onPressed']['message'] != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(json['onPressed']['message'])),
            );
          }
          break;
        case 'customFunction':
          String functionName = json['onPressed']['functionName'];
          print(functionMap);
          print(functionName);
          if (functionMap.containsKey(functionName)) {
            functionMap[functionName]?.call();
          } else {
            print('Unknown function name: $functionName');
          }
          break;
        default:
          print('Unknown action type: ${json['onPressed']['type']}');
      }
    }

    return ElevatedButton(
      onPressed: handleAction,
      style: ButtonStyle(
        backgroundColor: json["backgroundColor"] == null
            ? null
            : MaterialStateProperty.all(
                HexColor.fromHex(json["backgroundColor"])),
        elevation: json["elevation"] == null
            ? null
            : MaterialStateProperty.all(json["elevation"]),
        padding: json["padding"] == null
            ? null
            : MaterialStateProperty.all(
                XSduiEdgeInsetPadding.fromMap(json["padding"]),
              ),
      ),
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(ElevatedButton widget) {
    return {
      "type": "ElevatedButton",
      "style": {
        "backgroundColor": widget.style?.backgroundColor == null
            ? null
            : HexColor.toHex(
                (widget.style!.backgroundColor as MaterialStatePropertyAll)
                    .value),
        "elevation": widget.style!.elevation == null
            ? null
            : (widget.style!.elevation as MaterialStatePropertyAll).value,
        "padding": {
          "paddingType": "ltrb",
          "left": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .left,
          "top": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .top,
          "right": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .right,
          "bottom": ((widget.style!.padding
                      as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                  .value as EdgeInsets)
              .bottom,
        }
      },
      "child": XSdui.toJson(widget.child),
    };
  }
}
