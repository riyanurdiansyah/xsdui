import 'package:flutter/material.dart';

import 'xsdui_side_bar_tree_item_last.dart';

class XSduiSideBarTreeItem extends StatelessWidget {
  const XSduiSideBarTreeItem({
    super.key,
    this.json,
  });

  final Map<String, dynamic>? json;

  @override
  Widget build(BuildContext context) {
    if (json != null) {
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
