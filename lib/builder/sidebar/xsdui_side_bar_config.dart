import 'package:flutter/material.dart';
import 'package:xsdui/builder/bloc/home_bloc.dart';

class XSduiSideBarConfig extends StatelessWidget {
  const XSduiSideBarConfig({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
