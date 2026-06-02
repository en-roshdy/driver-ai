import 'package:dartz/dartz.dart';
import 'package:final_delivery_ai/features/authentication/data/models/user_model.dart';
import '../../../../core/error/failures.dart';
import '../entities/home_data.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeData>> getHome();
  Future<Either<Failure, Unit>> changeAvailability(bool isAvailable);
  UserModel? getUserModel();
}
