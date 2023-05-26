import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

import '../xsdui_container/xsdui_container_extension.dart';
import '../xsdui_single_child_scroll_view/xsdui_single_child_scroll_view_extension.dart';
import '../xsdui_stack/xsdui_stack_extension.dart';
import 'xsdui_list_view_extension.dart';

class XSduiListViewBuilderCustom {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    required Map<String, Map<List, Widget? Function(BuildContext, int)>>
        listMap,
  }) {
    int getListLength() {
      for (int i = 0; i < listMap.length;) {
        final listName = json['list'];
        if (listMap.containsKey(listName)) {
          return listMap[listName]!.keys.first.length;
        } else {
          debugPrint('Unknown list name: $listName');
          return 0;
        }
      }
      return 0;
    }

    Widget? Function(BuildContext, int) getBuilderFunction() {
      for (int i = 0; i < listMap.length;) {
        final listName = json['list'];

        if (listMap.containsKey(listName)) {
          return listMap[listName]!.values.first;
        } else {
          return (context, index) {
            return const SizedBox();
          };
        }
      }
      return (context, index) {
        return const SizedBox();
      };
    }

    debugPrint('called listview custom');
    return ListView.builder(
      addAutomaticKeepAlives: json["addAutomaticKeepAlives"] ?? true,
      addRepaintBoundaries: json["addRepaintBoundaries"] ?? true,
      addSemanticIndexes: json["addSemanticIndexes"] ?? true,
      cacheExtent: json["cacheExtent"],
      clipBehavior: XSduiClipBehavior.fromString(json["clipBehavior"]),
      dragStartBehavior:
          XSduiDragStartBehavior.fromString(json["dragStartBehavior"]),
      itemExtent: json["itemExtent"],
      keyboardDismissBehavior: XSduiListViewKeyboardDissmissBehavior.fromString(
          json["keyboardDismissBehavior"]),
      padding: json["padding"] == null
          ? null
          : XSduiEdgeInsetPadding.fromMap(json["padding"]),
      primary: json["primary"],
      prototypeItem: json["prototypeItem"] == null
          ? null
          : XSdui.fromJson(context, json: json["prototypeItem"]),
      restorationId: json["restorationId"],
      reverse: json["reverse"] ?? false,
      semanticChildCount: json["semanticChildCount"],
      shrinkWrap: json["shrinkWrap"] ?? false,
      scrollDirection: XSduiAxis.fromString(json["scrollDirection"]),
      physics: json["physics"] == null
          ? null
          : XSduiScrollPhysics.fromString(json["physics"]),
      itemCount: getListLength(),
      itemBuilder: getBuilderFunction(),
    );
  }

  static Map<String, dynamic> toJson(ListView widget) {
    return {
      "type": "ListViewBuilder",
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
      "prototypeItem": XSdui.toJson(widget.prototypeItem),
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
}
