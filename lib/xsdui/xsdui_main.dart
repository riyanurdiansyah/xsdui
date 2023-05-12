import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_alert_dialog/xsdui_alert_dialog.dart';
import 'package:xsdui/parser/xsdui_appbar/xsdui_appbar.dart';
import 'package:xsdui/parser/xsdui_card/xsdui_card.dart';
import 'package:xsdui/parser/xsdui_divider/xsdui_divider.dart';
import 'package:xsdui/parser/xsdui_divider/xsdui_divider_vertical.dart';
import 'package:xsdui/parser/xsdui_elevated_button/xsdui_elevated_button.dart';
import 'package:xsdui/parser/xsdui_expandable/xsdui_expandable.dart';
import 'package:xsdui/parser/xsdui_fitted_box/xsdui_fitted_box.dart';
import 'package:xsdui/parser/xsdui_form/xsdui_form.dart';
import 'package:xsdui/parser/xsdui_gesture_detector/xsdui_gesture_detector.dart';
import 'package:xsdui/parser/xsdui_image/xsdui_image.dart';
import 'package:xsdui/parser/xsdui_inkwell/xsdui_inkwell.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_builder.dart';
import 'package:xsdui/parser/xsdui_list_view/xsdui_list_view_separated.dart';
import 'package:xsdui/parser/xsdui_padding/xsdui_padding.dart';
import 'package:xsdui/parser/xsdui_positioned/xsdui_positioned.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view.dart';
import 'package:xsdui/parser/xsdui_spacer/xsdui_spacer.dart';
import 'package:xsdui/parser/xsdui_text_form_field/xsdui_text_form_field.dart';
import 'package:xsdui/parser/xsdui_wrap/xsdui_wrap.dart';
import 'package:xsdui/utils/xsdui_widget_name.dart';
import 'package:xsdui/xsdui.dart';
import 'package:xsdui/xsdui/xsdui_asset.dart';

import '../parser/xsdui_expanded/xsdui_expanded.dart';

class XSdui {
  static Map<String, Function>? _functionMaps;

  static Map<String, TextEditingController>? _textControllerMaps;

  static Map<String, GlobalKey<FormState>>? _keyMaps;

  static Map<String, String? Function(String?)?>? _validators;

  static void setTextControllerMap(
      Map<String, TextEditingController> controllers) {
    _textControllerMaps = controllers;
  }

  static void setFunctionMap(Map<String, Function> functionMaps) {
    _functionMaps = functionMaps;
  }

  static void setKeyMap(Map<String, GlobalKey<FormState>> keys) {
    _keyMaps = keys;
  }

  static void setValidator(Map<String, String? Function(String?)?> validators) {
    _validators = validators;
  }

  static Widget fromAsset(BuildContext context, {required String path}) {
    return FutureBuilder<Map<String, dynamic>>(
      future: XSduiAsset.load(path: path),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return XSdui.fromJson(context, json: snapshot.data!);
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }

  static Widget fromNetwork(
    BuildContext context, {
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) {
    return FutureBuilder<Map<String, dynamic>>(
      future: XSduiNetwork.getRequest(url: url),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.done:
            if (snapshot.hasData) {
              return XSdui.fromJson(json: snapshot.data ?? {}, context);
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const SizedBox();
            }
          default:
            return const SizedBox();
        }
      },
    );
  }

  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    String type =
        json["type"] == null ? "" : json["type"].toString().toLowerCase();
    switch (type) {
      case "":
        return const SizedBox();

      case XSduiWidgetName.expanded:
        return XSduiExpanded.fromJson(context, json: json);

      case XSduiWidgetName.expandable:
        return XSduiExpandable.fromJson(context, json: json);

      case XSduiWidgetName.fittedbox:
        return XSduiFittedBox.fromJson(context, json: json);

      case XSduiWidgetName.card:
        return XSduiCard.fromJson(context, json: json);

      case XSduiWidgetName.positioned:
        return XSduiPositioned.fromJson(context, json: json);

      case XSduiWidgetName.sizedBox:
        return XSduiSizedBox.fromJson(context, json: json);

      case XSduiWidgetName.appbar:
        return XSduiAppbar.fromJson(context, json: json);

      case XSduiWidgetName.column:
        return XSduiColumn.fromJson(context, json: json);

      case XSduiWidgetName.container:
        return XSduiContainer.fromJson(context, json: json);

      case XSduiWidgetName.elevatedButton:
        return XSduiElevatedButton.fromJson(context,
            json: json, functionMap: _functionMaps ?? {'dummy': () {}});

      case XSduiWidgetName.gestureDetector:
        return XSduiGestureDetector.fromJson(context,
            json: json, functionMap: _functionMaps ?? {'dummy': () {}});

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
        return XSduiTextFormField.fromJson(
          context,
          json: json,
          controllers: _textControllerMaps!,
          validators: _validators!,
        );

      case XSduiWidgetName.form:
        return XsduiForm.fromJson(context, json: json, keyMaps: _keyMaps!);

      case XSduiWidgetName.wrap:
        return XSduiWrap.fromJson(context, json: json);

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
