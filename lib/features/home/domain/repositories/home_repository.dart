import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/home_data.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeData>> getHome();
  Future<Either<Failure, Unit>> changeAvailability(bool isAvailable);
}
