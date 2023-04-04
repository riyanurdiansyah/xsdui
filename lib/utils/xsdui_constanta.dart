import 'package:flutter/material.dart';
import 'package:xsdui/builder/models/scaffold/xsdui_scaffold_model.dart';
import 'package:xsdui/utils/xsdui_widget_name.dart';
import 'xsdui_widget_model.dart';

const emptyWidget = XSduiScaffoldModel(
  type: "scaffold",
  paddingLeft: 0,
  paddingRight: 0,
  paddingTop: 0,
  paddingBottom: 0,
  appBar: null,
  widget: null,
  bottomNavigationBar: null,
);
Map<String, dynamic> tree = {
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
        },
        {
          "type": "containerss",
          "fitWidth": true,
          "height": 200,
          "color": "#598cb6",
          "child": {
            "type": "row",
            "mainAxisAlignment": "spaceAround",
            "children": [
              {
                "type": "container",
                "height": 50,
                "width": 50,
                "color": "#000000"
              },
              {
                "type": "container",
                "height": 50,
                "width": 50,
                "color": "#df4382"
              },
              {
                "type": "elevatedButton",
                "color": "#df4382",
                "style": {
                  "elevation": 4.0,
                  "padding": {
                    "paddingType": "all",
                    "padding": 5.0,
                  }
                }
              },
              {
                "type": "inkWell",
                "child": {
                  "type": "container",
                  "height": 50,
                  "width": 50,
                  "color": "#df4382",
                  "borderRadius": {
                    "borderRadiusType": "circular",
                    "radius": 25.5,
                  },
                },
              }
            ]
          }
        },
        {
          "type": "container",
          "fitWidth": true,
          "height": 350,
          "color": "#ffffff",
          "child": {
            "type": "listView",
            "physics": "bouncing",
            "scrollDirection": "vertical",
            "children": [
              {
                "type": "container",
                "color": "#df4382",
                "height": 50,
                "width": 50,
                "style": {
                  "elevation": 4.0,
                  "padding": {
                    "paddingType": "all",
                    "padding": 5.0,
                  }
                }
              },
              {
                "type": "container",
                "color": "#ef8830",
                "height": 50,
                "width": 50,
                "style": {
                  "elevation": 4.0,
                  "padding": {
                    "paddingType": "all",
                    "padding": 5.0,
                  }
                }
              },
            ]
          }
        }
      ]
    }
  }
};

List<XSduiCategoryModel> listCategory = [
  XSduiCategoryModel(
    title: "Widgets",
    icon: Icons.grid_view_rounded,
  ),
  XSduiCategoryModel(
    title: "Tree View",
    icon: Icons.account_tree_rounded,
  ),
];

List<XSduiWidgetSectionModel> listSectionWidget = [
  XSduiWidgetSectionModel(
    title: "Page Widget",
    section: 1,
  ),
  XSduiWidgetSectionModel(
    title: "Layout Widget",
    section: 2,
  ),
  XSduiWidgetSectionModel(
    title: "Base Widget",
    section: 3,
  ),
];

List<XSduiWidgetModel> listWidget = [
  XSduiWidgetModel(title: "AppBar", type: XSduiWidgetName.appbar, section: 1),
  XSduiWidgetModel(
      title: "Bottom Navigation Bar",
      type: XSduiWidgetName.bottomnavigationbar,
      section: 1),
  XSduiWidgetModel(title: "Drawer", type: XSduiWidgetName.drawer, section: 1),
  XSduiWidgetModel(
      title: "Container", type: XSduiWidgetName.container, section: 2),
  XSduiWidgetModel(title: "Column", type: XSduiWidgetName.column, section: 2),
  XSduiWidgetModel(title: "Row", type: XSduiWidgetName.row, section: 2),
  XSduiWidgetModel(title: "Card", type: XSduiWidgetName.row, section: 2),
  XSduiWidgetModel(
      title: "ListView", type: XSduiWidgetName.listView, section: 2),
  XSduiWidgetModel(
      title: "ListViewBuilder", type: XSduiWidgetName.listView, section: 2),
  XSduiWidgetModel(
      title: "ListViewSeparated", type: XSduiWidgetName.listView, section: 2),
  XSduiWidgetModel(title: "GridView", type: XSduiWidgetName.row, section: 2),
  XSduiWidgetModel(title: "Stack", type: XSduiWidgetName.row, section: 2),
  XSduiWidgetModel(title: "Text", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "TextField", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "TextButton", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "Image", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "CheckBox", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "RadioButton", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "Icon", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "IconButton", type: XSduiWidgetName.row, section: 3),
  XSduiWidgetModel(title: "ListTile", type: XSduiWidgetName.row, section: 3),
];
