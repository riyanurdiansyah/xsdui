import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../xsdui.dart';
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
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return DragTarget<String>(
                  onAccept: (data) {
                    homeBloc.add(HomeOnDragEvent(type: data));
                  },
                  builder: (context, candidateData, rejectedData) {
                    return XSdui.fromJson(context, json: homeBloc.state.jsonUi);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
