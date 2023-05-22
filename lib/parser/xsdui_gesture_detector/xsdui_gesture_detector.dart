import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiGestureDetector {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    required Map<String, Function> functionMap,
    Map<String, Function(dynamic)>? functionMapWithParameters,
  }) {
    void handleAction() {
      switch (json['onPressed']['type']) {
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
            print('Unknown function name: $functionName');
          }
          break;
        case 'customFunctionWithParameters':
          String functionName = json['onPressed']['functionName'];
          if (functionMapWithParameters != null) {
            if (functionMapWithParameters.containsKey(functionName)) {
              functionMapWithParameters[functionName]
                  ?.call(json['onPressed']['parameter']);
            } else {
              print('Unknown function name param: $functionName');
            }
          }
          break;
        default:
          print('Unknown action type: ${json['onPressed']['type']}');
      }
    }

    return GestureDetector(
      onTap: handleAction,
      child: json["child"] == null
          ? const SizedBox()
          : XSdui.fromJson(context, json: json["child"]),
    );
  }

  static Map<String, dynamic>? toJson(GestureDetector widget) {
    return {
      "type": "GestureDetector",
      "child": XSdui.toJson(widget.child),
    };
  }
}
