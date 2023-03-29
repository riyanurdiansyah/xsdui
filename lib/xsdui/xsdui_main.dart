import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_elevated_button/xsdui_elevated_button.dart';
import 'package:xsdui/parser/xsdui_image/xsdui_image.dart';
import 'package:xsdui/parser/xsdui_inkwell/xsdui_inkwell.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_builder.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_separated.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view.dart';
import 'package:xsdui/utils/xsdui_widget_name.dart';
import 'package:xsdui/xsdui.dart';

class XSdui {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    String type =
        json["type"] == null ? "" : json["type"].toString().toLowerCase();
    switch (type) {
      case "":
        return const SizedBox();

      case XSduiWidgetName.column:
        return XSduiColumn.fromJson(context, json: json);

      case XSduiWidgetName.container:
        return XSduiContainer.fromJson(context, json: json);

      case XSduiWidgetName.elevatedButton:
        return XSduiElevatedButton.fromJson(context, json: json);

      case XSduiWidgetName.image:
        return XSduiImage.fromJson(context, json: json);

      case XSduiWidgetName.inkWell:
        return XSduiInkwell.fromJson(context, json: json);

      case XSduiWidgetName.listView:
        return XSduiListView.fromJson(context, json: json);

      case XSduiWidgetName.listViewBuilder:
        return XSduiListViewBuilder.fromJson(context, json: json);

      case XSduiWidgetName.listViewSeparated:
        return XSduiListViewSeparated.fromJson(context, json: json);

      case XSduiWidgetName.row:
        return XSduiRow.fromJson(context, json: json);

      case XSduiWidgetName.singleChildScrollView:
        return XSduiSingleChildScrollView.fromJson(context, json: json);

      default:
        return const SizedBox();
    }
  }
}
