import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_alert_dialog/xsdui_alert_dialog.dart';
import 'package:xsdui/parser/xsdui_appbar/xsdui_appbar.dart';
import 'package:xsdui/parser/xsdui_divider/xsdui_divider.dart';
import 'package:xsdui/parser/xsdui_divider/xsdui_divider_vertical.dart';
import 'package:xsdui/parser/xsdui_elevated_button/xsdui_elevated_button.dart';
import 'package:xsdui/parser/xsdui_gesture_detector/xsdui_gesture_detector.dart';
import 'package:xsdui/parser/xsdui_image/xsdui_image.dart';
import 'package:xsdui/parser/xsdui_inkwell/xsdui_inkwell.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_builder.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_separated.dart';
import 'package:xsdui/parser/xsdui_padding/xsdui_padding.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view.dart';
import 'package:xsdui/parser/xsdui_spacer/xsdui_spacer.dart';
import 'package:xsdui/parser/xsdui_text_form_field/xsdui_text_form_field.dart';
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

      case XSduiWidgetName.appbar:
        return XSduiAppbar.fromJson(context, json: json);

      case XSduiWidgetName.column:
        return XSduiColumn.fromJson(context, json: json);

      case XSduiWidgetName.container:
        return XSduiContainer.fromJson(context, json: json);

      case XSduiWidgetName.elevatedButton:
        return XSduiElevatedButton.fromJson(context, json: json);

      case XSduiWidgetName.gestureDetector:
        return XSduiGestureDetector.fromJson(context, json: json);

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

      case XSduiWidgetName.scaffold:
        return XSduiScaffold.fromJson(context, json: json);

      case XSduiWidgetName.text:
        return XSduiText.fromJson(context, json: json);

      case XSduiWidgetName.singleChildScrollView:
        return XSduiSingleChildScrollView.fromJson(context, json: json);

      case XSduiWidgetName.padding:
        return XSduiPadding.fromJson(context, json: json);

      case XSduiWidgetName.divider:
        return XSduiDivider.fromJson(context, json: json);

      case XSduiWidgetName.verticalDivider:
        return XSduiVerticalDivider.fromJson(context, json: json);

      case XSduiWidgetName.spacer:
        return XSduiSpacer.fromJson(context, json: json);

      case XSduiWidgetName.alertDialog:
        return XSduiAlertDialog.fromJson(context, json: json);

      case XSduiWidgetName.textFormField:
        return XSduiTextFormField.fromJson(context, json: json);

      default:
        return const SizedBox();
    }
  }

  static Map<String, dynamic>? toJson(Widget? widget) {
    if (widget is Column) {
      return XSduiColumn.toJson(widget);
    }

    if (widget is Container) {
      return XSduiContainer.toJson(widget);
    }

    if (widget is ElevatedButton) {
      return XSduiElevatedButton.toJson(widget);
    }

    if (widget is GestureDetector) {
      return XSduiGestureDetector.toJson(widget);
    }

    if (widget is Image) {
      return XSduiImage.toJson(widget);
    }

    if (widget is InkWell) {
      return XSduiInkwell.toJson(widget);
    }

    if (widget is ListView) {
      return XSduiListView.toJson(widget);
    }

    if (widget is Row) {
      return XSduiRow.toJson(widget);
    }

    if (widget is Scaffold) {
      return XSduiScaffold.toJson(widget);
    }
    if (widget is Text) {
      return XSduiText.toJson(widget);
    }
    if (widget is SingleChildScrollView) {
      return XSduiSingleChildScrollView.toJson(widget);
    }

    if (widget is Padding) {
      return XSduiPadding.toJson(widget);
    }

    if (widget is Divider) {
      return XSduiDivider.toJson(widget);
    }

    if (widget is VerticalDivider) {
      return XSduiVerticalDivider.toJson(widget);
    }

    if (widget is Spacer) {
      return XSduiSpacer.toJson(widget);
    }

    if (widget is AlertDialog) {
      return XSduiAlertDialog.toJson(widget);
    }

    if (widget is TextFormField) {
      return XSduiTextFormField.toJson(widget);
    }

    if (widget is SizedBox) {
      return XSduiSizedBox.toJson(widget);
    }
    return null;
  }
}
