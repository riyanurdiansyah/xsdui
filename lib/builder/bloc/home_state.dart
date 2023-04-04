part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.indexSelected = 0,
    this.widget = emptyWidget,
  });

  final int indexSelected;
  final XSduiScaffoldModel widget;

  HomeState copyWith({
    int? indexSelected,
    XSduiScaffoldModel? widget,
  }) =>
      HomeState(
        indexSelected: indexSelected ?? this.indexSelected,
        widget: widget ?? this.widget,
      );

  @override
  List<Object> get props => [
        indexSelected,
        widget,
      ];
}

class HomeInitial extends HomeState {}
