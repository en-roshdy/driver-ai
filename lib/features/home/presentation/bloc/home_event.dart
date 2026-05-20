import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class GetHomeData extends HomeEvent {}

class ChangeAvailabilityEvent extends HomeEvent {
  final bool isAvailable;

  const ChangeAvailabilityEvent(this.isAvailable);

  @override
  List<Object> get props => [isAvailable];
}
