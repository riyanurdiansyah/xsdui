import 'package:flutter/material.dart';
import 'package:xsdui/xsdui/xsdui_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XSdui.fromJson(
        context,
        json: {
          "type": "container",
          "attr": {
            "width": 300.0,
            "height": 300.0,
            "color": "#AA4A44",
            "borderRadius": {
              "borderRadiusType": "circular",
              "radius": 10.0,
            }
          },
          "child": {
            "type": "column",
            "attr": {
              "mainAxisAlignment": "center",
              "crossAxisAlignment": "start",
              "mainAxisSize": "min"
            },
            "children": [
              {
                "type": "container",
                "attr": {
                  "width": 50.0,
                  "height": 50.0,
                  "color": "#EE4B2B",
                }
              },
              {
                "type": "text",
                "text": "Thanks for using this package",
                "attr": {
                  "height": 1.4,
                  "fontSize": 12.5,
                  "fontFamily": "SourceSansPro",
                  "fontWeight": "w600"
                }
              }
            ]
          }
        },
      ),
    );
  }
}
