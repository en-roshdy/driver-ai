import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../error/failures.dart';
import 'common_repository.dart';
import '../../features/profile/data/models/driver_info_model.dart';

@LazySingleton(as: CommonRepository)
class CommonRepositoryImpl implements CommonRepository {
  final Dio dio;

  CommonRepositoryImpl(this.dio);

  @override
  Future<Either<Failure, DriverInfoModel>> getDriverInfo() async {
    try {
      final response = await dio.get('delegate/profile');
      if (response.statusCode == 200) {
        return Right(DriverInfoModel.fromJson(response.data['data']));
      }
      return const Left(ServerFailure('Failed to load profile'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getSettings() async {
    try {
      final response = await dio.get('settings');
      if (response.statusCode == 200) {
        return Right(response.data['data']);
      }
      return const Left(ServerFailure('Failed to load settings'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
