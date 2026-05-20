import 'package:dartz/dartz.dart';
import '../error/failures.dart';
import '../../features/profile/data/models/driver_info_model.dart';

abstract class CommonRepository {
  Future<Either<Failure, DriverInfoModel>> getDriverInfo();
  Future<Either<Failure, Map<String, dynamic>>> getSettings();
}
