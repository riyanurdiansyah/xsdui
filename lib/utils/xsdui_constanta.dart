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
