import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';
import 'package:xsdui/xsdui.dart';

import '../bloc/home_bloc.dart';

class XSduiDisplayPage extends StatelessWidget {
  const XSduiDisplayPage({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 1080 / 2220,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            child: XSdui.fromJson(context, json: tree),
          ),
        ),
      ),
    );
  }
}
