part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.indexSelected = 0,
    this.widget = emptyWidget,
    this.jsonUi = const {},
    this.jsonSelected = const {},
  });

  final int indexSelected;
  final XSduiScaffoldModel widget;
  final Map<String, dynamic> jsonUi;
  final Map<String, dynamic> jsonSelected;

  HomeState copyWith({
    int? indexSelected,
    XSduiScaffoldModel? widget,
    Map<String, dynamic>? jsonUi,
    Map<String, dynamic>? jsonSelected,
  }) =>
      HomeState(
        indexSelected: indexSelected ?? this.indexSelected,
        widget: widget ?? this.widget,
        jsonUi: jsonUi ?? this.jsonUi,
        jsonSelected: jsonSelected ?? this.jsonSelected,
      );

  @override
  List<Object> get props => [indexSelected, widget, jsonUi, jsonSelected];
}

class HomeInitial extends HomeState {}
