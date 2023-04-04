import 'package:flutter/material.dart';
import 'package:xsdui/builder/bloc/home_bloc.dart';

import 'xsdui_side_bar_tree_item.dart';

class XSduiSideBarTreeItemLast extends StatelessWidget {
  const XSduiSideBarTreeItemLast({
    super.key,
    this.json,
    this.listJson,
    required this.homeBloc,
  });

  final Map<String, dynamic>? json;
  final List<Map<String, dynamic>>? listJson;
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    if (listJson != null) {
      return Column(
        children: List.generate(listJson?.length ?? 0, (index) {
          if (listJson![index]["children"] == null &&
              listJson![index]["child"] == null) {
            return ListTile(
              onTap: () {
                debugPrint("CEK JSON : ${listJson![index]}");
              },
              title: Text(listJson![index]["type"]),
            );
          }

          return XSduiSideBarTreeItem(
            json: listJson![index],
            homeBloc: homeBloc,
          );
        }),
      );
    }

    if (json != null) {
      if (json!["child"] == null && json!["children"] == null) {
        return ListTile(
          onTap: () {
            debugPrint("CEK JSON 2 : $json");
          },
          title: Text(json!["type"]),
        );
      }
      return ExpansionTile(
        title: Text(json!["type"]),
        children: [
          XSduiSideBarTreeItemLast(
            json: json!["child"],
            listJson: json!["children"],
            homeBloc: homeBloc,
          ),
        ],
      );
    }
    return const SizedBox();
  }
}
