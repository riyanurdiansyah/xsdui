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
      debugShowCheckedModeBanner: false,
      home: XSdui.fromJson(
        context,
        json: {
          "type": "scaffold",
          "appBar": {
            "centerTitle": true,
            "automaticallyImplyLeading": false,
            "backgroundColor": "#EE4B2B",
            "elevation": 4.0,
            "titleSpacing": 15.0,
            "title": {"type": "text", "title": "App Bar Server"},
            "leading": {
              "type": "container",
              "width": 25.0,
              "height": 25.0,
              "color": "#FFFFFF",
              "shape": "rectangle",
              "borderRadius": {"borderRadiusType": "circular", "radius": 10.0}
            },
            "actions": [
              {
                "type": "container",
                "child": {"type": "text", "title": "Action 1"}
              }
            ]
          },
          "body": {
            "type": "singleChildScrollView",
            "child": {
              "type": "column",
              "crossAxisAlignment": "end",
              "mainAxisAlignment": "spaceAround",
              "children": [
                {
                  "type": "text",
                  "title": "Title XSDUI 1",
                  "fontSize": 20.0,
                  "fontWeight": "w600",
                  "color": "#000000"
                },
                {
                  "type": "container",
                  "width": 125.0,
                  "height": 125.0,
                  "color": "#000000"
                },
                {
                  "type": "container",
                  "fitWidth": true,
                  "width": 125.0,
                  "height": 125.0,
                  "color": "#598cb6",
                  "padding": {
                    "paddingType": "symmetric",
                    "horizontal": 10,
                    "vertical": 10
                  },
                  "margin": {
                    "marginType": "all",
                    "horizontal": 25,
                  },
                  "child": {
                    "type": "container",
                    "fitWidth": true,
                    "height": 200,
                    "color": "#000000"
                  }
                },
                {
                  "type": "image",
                  "imageType": "network",
                  "link":
                      "https://prakerja-apps.arkademi.com/wp-content/uploads/2022/12/Menerapkan-Prinsip-Keselamatan-dan-Kesehatan-Kerja-K3-di-Perusahaan-untuk-Ahli-K3-Umum-02.jpg",
                  "fit": "fill",
                  "filterQuality": "low",
                  "errorBuilder": {
                    "type": "container",
                    "width": "50",
                    "height": "50",
                    "color": "#F0F0F0"
                  }
                }
              ]
            }
          }
        },
      ),
    );
  }
}
