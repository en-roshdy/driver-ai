import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/home_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitial()) {
    on<GetHomeData>((event, emit) async {
      emit(HomeLoading());
      final result = await homeRepository.getHome();
      result.fold(
        (failure) => emit(HomeError(failure.message)),
        (homeData) => emit(HomeLoaded(homeData)),
      );
    });

    on<ChangeAvailabilityEvent>((event, emit) async {
      // Logic for changing availability
      // Could emit a specific state or just refresh home
      final result = await homeRepository.changeAvailability(event.isAvailable);
      result.fold(
        (failure) => emit(HomeError(failure.message)),
        (_) => add(GetHomeData()),
      );
    });
  }
}
