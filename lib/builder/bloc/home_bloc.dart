import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xsdui/builder/models/scaffold/xsdui_scaffold_model.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      Map<String, dynamic> data = {"type": "Scaffold"};

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
    tempWidget[event.type] = {
      "title": {
        "type": "text",
        "title": "OK",
      }
    };
    emit(state.copyWith(jsonUi: tempWidget));
  }
}
