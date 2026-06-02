part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginRequested extends AuthEvent {
  final String phone;
  final VerificationMethod method;

  const LoginRequested(this.phone, this.method);

  @override
  List<Object> get props => [phone, method];
}

class OtpVerified extends AuthEvent {
  final String phone;
  final String otp;

  const OtpVerified(this.phone, this.otp);

  @override
  List<Object> get props => [phone, otp];
}
