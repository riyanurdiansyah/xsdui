import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xsdui/builder/bloc/home_bloc.dart';
import 'package:xsdui/utils/xsdui_translate_animation.dart';

import 'config/container/xsdui_container_config.dart';

class XSduiSideBarConfig extends StatelessWidget {
  const XSduiSideBarConfig({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: SingleChildScrollView(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.jsonSelected.isEmpty) {
                return Container(
                  color: Colors.red,
                );
              }
              if (state.jsonSelected["type"].toString().toLowerCase() ==
                  "container") {
                return const TranslateRightToLeftAnimation(
                    child: XSduiContainerConfig());
              }
              return Container(color: Colors.amber);
            },
          ),
        ),
      ),
    );
  }
}
