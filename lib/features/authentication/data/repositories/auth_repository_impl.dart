import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/services/local_storage_service.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final LocalStorageService localStorageService;

  AuthRepositoryImpl(this.remoteDataSource, this.localStorageService);

  @override
  Future<Either<Failure, User>> login(String phone) async {
    try {
      final userModel = await remoteDataSource.login(phone);
      return Right(userModel.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> verifyOtp(String phone, String otp) async {
    try {
      final userModel = await remoteDataSource.verifyOtp(phone, otp);
      if (userModel.token != null) {
        await localStorageService.saveToken(userModel.token!);
      }
      await localStorageService.saveUser(userModel);
      return Right(userModel.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await localStorageService.clear();
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}
