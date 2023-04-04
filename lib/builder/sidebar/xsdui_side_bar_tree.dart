import 'package:flutter/material.dart';
import 'package:xsdui/builder/bloc/home_bloc.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';

import 'xsdui_side_bar_tree_item.dart';

class XSduiSideBarTree extends StatelessWidget {
  const XSduiSideBarTree({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ExpansionTile(
          title: Text(tree["type"]),
          children: [
            XSduiSideBarTreeItem(
              json: tree["body"],
              homeBloc: homeBloc,
            ),
          ],
        ),
      ),
    );
  }
}
