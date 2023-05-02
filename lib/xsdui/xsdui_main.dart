import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_alert_dialog/xsdui_alert_dialog.dart';
import 'package:xsdui/parser/xsdui_divider/xsdui_divider.dart';
import 'package:xsdui/parser/xsdui_divider/xsdui_divider_vertical.dart';
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

typedef ErrorWidgetBuilder = Widget Function(
  BuildContext context,
  dynamic error,
);

typedef LoadingWidgetBuilder = Widget Function(BuildContext context);

class XSdui {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    Map<String, Function>? functionMap,
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

      case XSduiWidgetName.gestureDetector:
        return XSduiGestureDetector.fromJson(context, json: json);

      case XSduiWidgetName.image:
        return XSduiImage.fromJson(context, json: json);

      case XSduiWidgetName.inkWell:
        return XSduiInkwell.fromJson(context, json: json);

      case XSduiWidgetName.elevatedButton:
        return XSduiElevatedButton.fromJson(context,
            json: json, functionMap: functionMap ?? {'tod': () {}});

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
        return XSduiDividerVertical.fromJson(context, json: json);

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

  // static Widget fromNetwork(
  //   XsduiRequest request, {
  //   LoadingWidgetBuilder? loadingWidget,
  //   ErrorWidgetBuilder? errorWidget,
  // }) {
  //   return FutureBuilder<Response?>(
  //     future: XsduiNetwork.request(request),
  //     builder: (context, snapshot) {
  //       switch (snapshot.connectionState) {
  //         case ConnectionState.waiting:
  //           Widget? widget;
  //           if (loadingWidget != null) {
  //             widget = loadingWidget(context);
  //             return widget;
  //           }
  //           break;
  //         case ConnectionState.done:
  //           if (snapshot.hasData) {
  //             final json = jsonDecode(snapshot.data.toString());
  //             return XSdui.fromJson(json: json, context);
  //           } else if (snapshot.hasError) {
  //             log(snapshot.error.toString());
  //             if (errorWidget != null) {
  //               final widget = errorWidget(context, snapshot.error);
  //               return widget;
  //             }
  //           }
  //           break;
  //         default:
  //           break;
  //       }
  //       return Container(color: Colors.white);
  //     },
  //   );
  // }

  // static Future<Widget?> fromAssets(
  //   String assetPath,
  //   BuildContext context,
  // ) async {
  //   final String data = await rootBundle.loadString(assetPath);
  //   final Map<String, dynamic> jsonData = jsonDecode(data);

  //   if (context.mounted) {
  //     return fromJson(jsonData, context);
  //   }

  //   return null;
  // }
}
