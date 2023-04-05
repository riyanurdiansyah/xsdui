part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeChangeIndexEvent extends HomeEvent {
  const HomeChangeIndexEvent(this.index);

  final int index;
}

class HomeOnTapWidget extends HomeEvent {
  const HomeOnTapWidget({required this.widget});
  final dynamic widget;
}

class HomeOnTapTreeEvent extends HomeEvent {
  const HomeOnTapTreeEvent({required this.json});

  final Map<String, dynamic> json;
}
