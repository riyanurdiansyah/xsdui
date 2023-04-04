import 'package:flutter/material.dart';

import 'xsdui_side_bar_tree_item.dart';

class XSduiSideBarTreeItemLast extends StatelessWidget {
  const XSduiSideBarTreeItemLast({
    super.key,
    this.json,
    this.listJson,
  });

  final Map<String, dynamic>? json;
  final List<Map<String, dynamic>>? listJson;

  @override
  Widget build(BuildContext context) {
    if (listJson != null) {
      return Column(
        children: List.generate(listJson?.length ?? 0, (index) {
          if (listJson![index]["children"] == null &&
              listJson![index]["child"] == null) {
            return ListTile(
              title: Text(listJson![index]["type"]),
            );
          }

          return XSduiSideBarTreeItem(json: listJson![index]);
        }),
      );
    }

    if (json != null) {
      if (json!["child"] == null && json!["children"] == null) {
        return ListTile(
          title: Text(json!["type"]),
        );
      }
      return ExpansionTile(
        title: Text(json!["type"]),
        children: [
          XSduiSideBarTreeItemLast(
              json: json!["child"], listJson: json!["children"]),
        ],
      );
    }
    return const SizedBox();
  }
}
