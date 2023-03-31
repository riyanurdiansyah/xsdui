import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_elevated_button/xsdui_elevated_button.dart';
import 'package:xsdui/parser/xsdui_gesture_detector/xsdui_gesture_detector.dart';
import 'package:xsdui/parser/xsdui_image/xsdui_image.dart';
import 'package:xsdui/parser/xsdui_inkwell/xsdui_inkwell.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_builder.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_separated.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view.dart';
import 'package:xsdui/utils/xsdui_widget_name.dart';
import 'package:xsdui/xsdui.dart';

class XSdui {
  ///function for handle json format
  ///will parsing to [Widget]
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    //handle type if value is null
    String type =
        json["type"] == null ? "" : json["type"].toString().toLowerCase();
    switch (type) {

      ///if the type is "" will return [SizedBox]
      case "":
        return const SizedBox();

      ///if the type is "column" will return [Column]
      case XSduiWidgetName.column:
        return XSduiColumn.fromJson(context, json: json);

      ///if the type is "container" will return [Container]
      case XSduiWidgetName.container:
        return XSduiContainer.fromJson(context, json: json);

      ///if the type is "elevatedbutton" will return [ElevatedButton]
      case XSduiWidgetName.elevatedButton:
        return XSduiElevatedButton.fromJson(context, json: json);

      ///if the type is "gesturedetector" will return [GestureDetector]
      case XSduiWidgetName.gestureDetector:
        return XSduiGestureDetector.fromJson(context, json: json);

      ///if the type is "image" will return [Image]
      case XSduiWidgetName.image:
        return XSduiImage.fromJson(context, json: json);

      ///if the type is "inkwell" will return [InkWell]
      case XSduiWidgetName.inkWell:
        return XSduiInkwell.fromJson(context, json: json);

      ///if the type is "listview" will return [ListView]
      case XSduiWidgetName.listView:
        return XSduiListView.fromJson(context, json: json);

      ///if the type is "listviewbuilder" will return [ListViewBuilder]
      case XSduiWidgetName.listViewBuilder:
        return XSduiListViewBuilder.fromJson(context, json: json);

      ///if the type is "listviewseparated" will return [ListViewSeparated]
      case XSduiWidgetName.listViewSeparated:
        return XSduiListViewSeparated.fromJson(context, json: json);

      ///if the type is "row" will return [Row]
      case XSduiWidgetName.row:
        return XSduiRow.fromJson(context, json: json);

      ///if the type is "scaffold" will return [Scaffold]
      case XSduiWidgetName.scaffold:
        return XSduiScaffold.fromJson(context, json: json);

      ///if the type is "text" will return [Text]
      case XSduiWidgetName.text:
        return XSduiText.fromJson(context, json: json);

      ///if the type is "singlechildscrollview" will return [SingleChildScrollView]
      case XSduiWidgetName.singleChildScrollView:
        return XSduiSingleChildScrollView.fromJson(context, json: json);

      ///default value will return [SizedBox]
      default:
        return const SizedBox();
    }
  }
}
