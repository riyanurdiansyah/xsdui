import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xsdui/builder/models/scaffold/xsdui_scaffold_model.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      Map<String, dynamic> data = {"type": "scaffold"};

      emit(state.copyWith(jsonUi: data));
    });
    on<HomeChangeIndexEvent>(_onChangeIndex);
    on<HomeOnTapWidget>(_onTapWidget);
    on<HomeOnTapTreeEvent>(_onTapTree);
    on<HomeOnDragEvent>(_onDragWidget);
  }

  FutureOr<void> _onChangeIndex(
      HomeChangeIndexEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(indexSelected: event.index));
  }

  FutureOr<void> _onTapWidget(HomeOnTapWidget event, Emitter<HomeState> emit) {
    var tempWidget = state.widget.copyWith(widget: event.widget);
    emit(state.copyWith(widget: tempWidget));
  }

  FutureOr<void> _onTapTree(HomeOnTapTreeEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(jsonSelected: event.json));
  }

  FutureOr<void> _onDragWidget(HomeOnDragEvent event, Emitter<HomeState> emit) {
    var tempWidget = state.jsonUi;
    Map<String, dynamic> newJson = {
      "title": {
        "type": "text",
        "title": "Okey",
      }
    };
    tempWidget['appBar'] = newJson;
    tempWidget['body'] = {
      "type": "column",
      "children": [
        {
          "type": "textformfield",
          "hintText": "John Doe",
          "keyboardType": "number",
          "label": {
            "type": "text",
            "title": "Jancok",
          },
          "obscureText": true,
          "border": {
            "borderType": "outline",
            "borderRadius": {
              "borderRadiusType": "circular",
              "radius": 14.0,
            },
          }
        }
      ]
    };
    debugPrint("CEK : $tempWidget");
    emit(state.copyWith(jsonUi: tempWidget));
  }
}
