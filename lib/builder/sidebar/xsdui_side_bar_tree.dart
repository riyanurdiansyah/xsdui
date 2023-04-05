import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xsdui/builder/bloc/home_bloc.dart';

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
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.jsonUi.isEmpty) {
            return const SizedBox();
          }
          return SingleChildScrollView(
            child: ExpansionTile(
              onExpansionChanged: (val) {
                homeBloc.add(HomeOnTapTreeEvent(json: state.jsonUi));
              },
              title: Text(homeBloc.state.jsonUi["type"]),
              children: [
                XSduiSideBarTreeItem(
                  json: state.jsonUi["body"],
                  homeBloc: homeBloc,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
