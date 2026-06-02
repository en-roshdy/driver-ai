import 'package:dartz/dartz.dart';
import '../../../../core/constants/enums.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(String phone, VerificationMethod method);
  Future<Either<Failure, User>> verifyOtp(String phone, String otp);
  Future<Either<Failure, Unit>> logout();
}
