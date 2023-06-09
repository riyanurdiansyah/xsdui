import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_appbar/xsdui_appbar.dart';
import 'package:xsdui/parser/xsdui_scaffold/xsdui_scaffold_extension.dart';
import 'package:xsdui/parser/xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiScaffold {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    return Scaffold(
      appBar: json["appBar"] == null
          ? null
          : XSduiAppbar.fromJson(context, json: json["appBar"]),
      backgroundColor: json["backgroundColor"] == null
          ? null
          : HexColor.fromHex(json["backgroundColor"]),
      drawer: json["drawer"] == null
          ? null
          : XSdui.fromJson(context, json: json["drawer"]),
      drawerDragStartBehavior:
          XSduiDragStartBehavior.fromString(json["drawerDragStartBehavior"]),
      bottomSheet: json["bottomSheet"] == null
          ? null
          : XSdui.fromJson(context, json: json["bottomSheet"]),
      extendBody: json["extendBody"] ?? false,
      restorationId: json["restorationId"],
      drawerEdgeDragWidth: json["drawerEdgeDragWidth"],
      drawerEnableOpenDragGesture: json["drawerEnableOpenDragGesture"] ?? true,
      drawerScrimColor: json["drawerScrimColor"] == null
          ? null
          : HexColor.fromHex(json["drawerScrimColor"]),
      endDrawer: json["endDrawer"] == null
          ? null
          : XSdui.fromJson(context, json: json["endDrawer"]),
      primary: json["primary"] ?? true,
      persistentFooterButtons: json["persistentFooterButtons"] == null
          ? null
          : List.generate(
              json["persistentFooterButtons"].length,
              (index) => XSdui.fromJson(context,
                  json: json["persistentFooterButtons"][index])),
      extendBodyBehindAppBar: json["extendBodyBehindAppBar"] ?? false,
      floatingActionButtonLocation: json["floatingActionButtonLocation"] == null
          ? null
          : XSduiScaffoldFloatingActionButtonLocation.fromString(
              json["floatingActionButtonLocation"]),
      resizeToAvoidBottomInset: json["resizeToAvoidBottomInset"],
      body: json["body"] == null
          ? null
          : XSdui.fromJson(context, json: json["body"]),
      bottomNavigationBar: json["bottomNavigationBar"] == null
          ? null
          : XSdui.fromJson(context, json: json["bottomNavigationBar"]),
      floatingActionButton: json["floatingActionButton"] == null
          ? null
          : XSdui.fromJson(context, json: json["floatingActionButton"]),
    );
  }

  static Map<String, dynamic>? toJson(Scaffold widget) {
    return {
      "type": "Scaffold",
      "appBar": XSdui.toJson(widget.appBar),
      "drawer": XSdui.toJson(widget.drawer),
      "endDrawer": XSdui.toJson(widget.endDrawer),
      "extendBody": widget.extendBody,
      "bottomSheet": XSdui.toJson(widget.bottomSheet),
      "resizeToAvoidBottomInset": widget.resizeToAvoidBottomInset,
      "extendBodyBehindAppBar": widget.extendBodyBehindAppBar,
      "backgroundColor": widget.backgroundColor == null
          ? null
          : HexColor.toHex(widget.backgroundColor!),
      "drawerScrimColor": widget.backgroundColor == null
          ? null
          : HexColor.toHex(widget.drawerScrimColor!),
      "primary": widget.primary,
      "body": XSdui.toJson(widget.body),
      "bottomNavigationBar": XSdui.toJson(widget.bottomNavigationBar),
      "floatingActionButton": XSdui.toJson(widget.floatingActionButton),
      "floatingActionButtonLocation":
          widget.floatingActionButtonLocation.toString() == "null"
              ? null
              : widget.floatingActionButtonLocation
                  .toString()
                  .replaceAll("FloatingActionButtonLocation.", ""),
    };
  }
}
