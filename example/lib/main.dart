import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_column/xsdui_column_extension.dart';
import 'package:xsdui/parser/xsdui_text/xsdui_text_extension.dart';
import 'package:xsdui/utils/xsdui_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final data = WidgetToJson.encode(
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Text("data $index");
                    },
                  ),
                  context: context,
                );

                debugPrint("CEK : $data");
              },
              child: const Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetToJson {
  static Map<String, dynamic>? toJson(
    Widget? widget, {
    BuildContext? context,
  }) {
    if (widget is TextField) {
      return {"cek": widget.decoration};
    }
    if (widget is Stack) {
      return {
        "alignment": widget.alignment.toString() == "null"
            ? null
            : widget.alignment.toString().replaceAll("Alignment.", ""),
        "fit": widget.fit.toString(),
      };
    }
    if (widget is Padding) {
      return {
        "padding": {
          "paddingType": "ltrb",
          "left": (widget.padding as EdgeInsets).left,
          "top": (widget.padding as EdgeInsets).top,
          "right": (widget.padding as EdgeInsets).right,
          "bottom": (widget.padding as EdgeInsets).bottom,
        },
        "child": toJson(widget.child),
      };
    }

    if (widget is ListView) {
      final cek = widget.buildSlivers(context!).map((e) {
        return e;
      });
      debugPrint("CEK : ${widget.toString()}");
      return {
        "addAutomaticKeepAlives":
            (widget.childrenDelegate as SliverChildBuilderDelegate)
                .addAutomaticKeepAlives,
        "addRepaintBoundaries":
            (widget.childrenDelegate as SliverChildBuilderDelegate)
                .addRepaintBoundaries,
        "addSemanticIndexes":
            (widget.childrenDelegate as SliverChildBuilderDelegate)
                .addSemanticIndexes,
        "cacheExtent": widget.cacheExtent,
        "clipBehavior": widget.clipBehavior.toString().replaceAll("Clip.", ""),
        "dragStartBehavior": widget.dragStartBehavior
            .toString()
            .replaceAll("DragStartBehavior.", ""),
        "itemExtent": widget.itemExtent,
        "keyboardDismissBehavior": widget.keyboardDismissBehavior
            .toString()
            .replaceAll("ScrollViewKeyboardDismissBehavior.", ""),
        "padding": widget.padding == null
            ? null
            : {
                "paddingType": "ltrb",
                "left": (widget.padding as EdgeInsets).left,
                "top": (widget.padding as EdgeInsets).top,
                "right": (widget.padding as EdgeInsets).right,
                "bottom": (widget.padding as EdgeInsets).bottom,
              },
        "primary": widget.primary,
        "prototypeItem": toJson(widget.prototypeItem),
        "restorationId": widget.restorationId,
        "reverse": widget.reverse,
        "semanticChildCount": widget.semanticChildCount,
        "shrinkWrap": widget.shrinkWrap,
        "scrollDirection": widget.physics is ClampingScrollPhysics
            ? "clamping"
            : widget.physics is BouncingScrollPhysics
                ? "bouncing"
                : widget.physics is FixedExtentScrollPhysics
                    ? "fixed"
                    : widget.physics is NeverScrollableScrollPhysics
                        ? "never"
                        : widget.physics is PageScrollPhysics
                            ? "page"
                            : null,
      };
    }

    if (widget is InkWell) {
      return {
        "borderRadius": {
          "borderRadiusType": "ltrb",
          "bottomLeft": (widget.borderRadius as BorderRadius).bottomLeft.x,
          "bottomRight": (widget.borderRadius as BorderRadius).bottomRight.x,
          "topLeft": (widget.borderRadius as BorderRadius).topLeft.x,
          "topRight": (widget.borderRadius as BorderRadius).topRight.x,
        },
        "child": toJson(widget.child),
      };
    }
    if (widget is Image) {
      if (widget.image is NetworkImage) {
        return {
          "imageType": "network",
          "link": (widget.image as NetworkImage).url,
          "fit": widget.fit == null
              ? null
              : widget.fit!.toString().replaceAll("BoxFit.", ""),
        };
      }

      if (widget.image is AssetImage) {
        return {
          "imageType": "network",
          "link": (widget.image as FileImage).file.path,
          "fit": widget.fit == null
              ? null
              : widget.fit!.toString().replaceAll("BoxFit.", ""),
        };
      }
      return {
        "imageType": "network",
        "link": (widget.image as AssetImage).assetName,
        "fit": widget.fit == null
            ? null
            : widget.fit!.toString().replaceAll("BoxFit.", ""),
      };
    }
    if (widget is Scaffold) {
      return {
        'type': 'Scaffold',
        'appBar': widget.appBar == null ? null : toJson(widget.appBar),
        'drawer': toJson(widget.drawer),
        'endDrawer': toJson(widget.endDrawer),
        'backgroundColor': HexColor.toHex(widget.backgroundColor!),
        'body': widget.body == null ? null : toJson(widget.body),
        "bottomNavigationBar": toJson(widget.bottomNavigationBar),
        "floatingActionButton": toJson(widget.floatingActionButton),
        "floatingActionButtonLocation":
            widget.floatingActionButtonLocation.toString() == "null"
                ? null
                : widget.floatingActionButtonLocation
                    .toString()
                    .replaceAll("FloatingActionButtonLocation.", ""),
      };
    }
    if (widget is Column) {
      return {
        'type': 'Column',
        'children': widget.children.map(toJson).toList(),
      };
    }
    if (widget is Text) {
      return {
        "type": "Text",
        "textAlign": XSduiTextAlign.convertToString(widget.textAlign),
        "maxLines": widget.maxLines,
        "overflow": XSduiTextOverflow.convertToString(widget.overflow),
        "textDirection":
            XSduiTextDirection.convertToString(widget.textDirection),
        "softWrap": widget.softWrap,
        "textScaleFactor": widget.textScaleFactor,
        "semanticsLabel": widget.semanticsLabel,
        'color': widget.style!.color == null
            ? null
            : HexColor.toHex(widget.style!.color!),
        "fontSize": widget.style?.fontSize,
        "fontFamily": widget.style?.fontFamily,
        "fontWeight":
            widget.style?.fontWeight.toString().replaceAll("FontWeight.", ""),
        "fontStyle":
            widget.style?.fontStyle.toString().replaceAll("FontStyle.", ""),
        "wordSpacing": widget.style?.wordSpacing,
        "height": widget.style?.height,
      };
    }
    if (widget is Container) {
      return {
        "type": "Container",
        "width": widget.constraints!.maxWidth.runtimeType == double
            ? widget.constraints!.maxWidth
            : null,
        "height": widget.constraints!.maxHeight.runtimeType == double
            ? widget.constraints!.maxHeight
            : null,
        "child": toJson(widget.child!),
        "alignment": widget.alignment.toString() == "null"
            ? null
            : widget.alignment.toString().replaceAll("Alignment.", ""),
        "margin": widget.margin == null
            ? null
            : {
                "marginType": "ltrb",
                "left": (widget.margin as EdgeInsets).left,
                "top": (widget.margin as EdgeInsets).top,
                "right": (widget.margin as EdgeInsets).right,
                "bottom": (widget.margin as EdgeInsets).bottom,
              },
        "padding": widget.padding == null
            ? null
            : {
                "paddingType": "ltrb",
                "left": (widget.padding as EdgeInsets).left,
                "top": (widget.padding as EdgeInsets).top,
                "right": (widget.padding as EdgeInsets).right,
                "bottom": (widget.padding as EdgeInsets).bottom,
              },
        "borderRadius": {
          "borderRadiusType": "ltrb",
          "bottomLeft": ((widget.decoration as BoxDecoration).borderRadius
                  as BorderRadius)
              .bottomLeft
              .x,
          "bottomRight": ((widget.decoration as BoxDecoration).borderRadius
                  as BorderRadius)
              .bottomRight
              .x,
          "topLeft": ((widget.decoration as BoxDecoration).borderRadius
                  as BorderRadius)
              .topLeft
              .x,
          "topRight": ((widget.decoration as BoxDecoration).borderRadius
                  as BorderRadius)
              .topRight
              .x,
        },
      };
    }
    if (widget is ElevatedButton) {
      return {
        'type': 'ElevatedButton',
        'style': {
          'color': widget.style!.backgroundColor == null
              ? null
              : HexColor.toHex(
                  (widget.style!.backgroundColor as MaterialStatePropertyAll)
                      .value),
          "elevation": widget.style!.elevation == null
              ? null
              : (widget.style!.elevation as MaterialStatePropertyAll).value,
          'padding': {
            "paddingType": "ltrb",
            "left": ((widget.style!.padding
                        as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                    .value as EdgeInsets)
                .left,
            "top": ((widget.style!.padding
                        as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                    .value as EdgeInsets)
                .top,
            "right": ((widget.style!.padding
                        as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                    .value as EdgeInsets)
                .right,
            "bottom": ((widget.style!.padding
                        as MaterialStatePropertyAll<EdgeInsetsGeometry?>)
                    .value as EdgeInsets)
                .bottom,
          }
        },
        'child': toJson(widget.child),
      };
    }
    return null;
  }

  static String encode(
    Widget widget, {
    BuildContext? context,
  }) {
    return jsonEncode(toJson(widget, context: context));
  }
}
