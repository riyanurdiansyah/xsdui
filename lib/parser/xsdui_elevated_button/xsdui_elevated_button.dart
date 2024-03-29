import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";
import "package:xsdui/parser/xsdui_container/xsdui_container_extension.dart";
import "package:xsdui/utils/xsdui_extension.dart";
import "package:xsdui/xsdui.dart";

class XSduiElevatedButton {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    required Map<String, Function> functionMap,
  }) {
    void handleAction() async {
      switch (json['onPressed']['type']) {
        case 'link':
          final checkUrl =
              await canLaunchUrl(Uri.parse(json["onPressed"]["link"]));
          if (checkUrl) {
            launchUrl(
              Uri.parse(json["onPressed"]["link"]),
              mode: LaunchMode.externalApplication,
              webViewConfiguration: const WebViewConfiguration(
                enableJavaScript: true,
              ),
            );
          }
          break;
        case 'http':
          XSduiNetwork.getRequest(url: json["onPressed"]["url"]);
          break;
        case 'showSnackBar':
          if (json['onPressed']['message'] != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(json['onPressed']['message'])),
            );
          }
          break;
        case 'customFunction':
          String functionName = json['onPressed']['functionName'];
          if (functionMap.containsKey(functionName)) {
            functionMap[functionName]?.call();
          } else {
            debugPrint('Unknown function name: $functionName');
          }
          break;
        default:
          debugPrint('Unknown action type: ${json['onPressed']['type']}');
      }
    }

    return ElevatedButton(
      onPressed: handleAction,
      style: ElevatedButton.styleFrom(
        padding: json["padding"] == null
            ? null
            : XSduiEdgeInsetPadding.fromMap(json["padding"]),
        backgroundColor:
            json["color"] == null ? null : HexColor.fromHex(json["color"]),
        shape: json["shape"] == null
            ? null
            : RoundedRectangleBorder(
                borderRadius: json["shape"]["borderRadius"] == null
                    ? BorderRadius.zero
                    : XSduiBorderRadius.fromMap(json["shape"]["borderRadius"]),
                side: json["shape"]["borderSide"] == null
                    ? BorderSide.none
                    : BorderSide(
                        color: json["shape"]["borderSide"]["color"] == null
                            ? const Color(0xFF000000)
                            : HexColor.fromHex(
                                json["shape"]["borderSide"]["color"],
                              ),
                      ),
              ),
      ),
      // style: ButtonStyle(
      //   backgroundColor: json["backgroundColor"] == null
      //       ? null
      //       : MaterialStateProperty.all(
      //           HexColor.fromHex(json["backgroundColor"])),
      //   elevation: json["elevation"] == null
      //       ? null
      //       : MaterialStateProperty.all(json["elevation"]),
      //   padding: json["padding"] == null
      //       ? null
      //       : MaterialStateProperty.all(
      //           XSduiEdgeInsetPadding.fromMap(json["padding"]),
      //         ),
      // ),
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
