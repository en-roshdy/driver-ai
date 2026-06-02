import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/enums.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      final result = await authRepository.login(event.phone, event.method);
      result.fold(
        (failure) => emit(AuthError(failure.message)),
        (user) => emit(OtpSent(event.phone)),
      );
    });

    on<OtpVerified>((event, emit) async {
      emit(AuthLoading());
      final result = await authRepository.verifyOtp(event.phone, event.otp);
      result.fold(
        (failure) => emit(AuthError(failure.message)),
        (user) => emit(AuthAuthenticated(user)),
      );
    });
  }
}
