import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';

import 'xsdui_side_bar_tree_item.dart';

class XSduiSideBarTree extends StatelessWidget {
  const XSduiSideBarTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ExpansionTile(
          title: Text(tree["type"]),
          children: [XSduiSideBarTreeItem(json: tree["body"])],
        ),
      ),
    );
  }
}
