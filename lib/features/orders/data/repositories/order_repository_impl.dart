import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;
import '../../../../core/error/failures.dart';
import '../../domain/entities/order.dart';
import '../../domain/entities/order_details.dart';
import '../../domain/repositories/order_repository.dart';
import '../datasources/order_remote_data_source.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource remoteDataSource;

  OrderRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Order>>> getOrders(int page) async {
    try {
      final orderModels = await remoteDataSource.getOrders(page);
      return Right(orderModels.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, OrderDetails>> getOrderDetails(int orderId) async {
    try {
      final orderDetailsModel = await remoteDataSource.getOrderDetails(orderId);
      return Right(orderDetailsModel.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> acceptOrder(int orderId) async {
    try {
      await remoteDataSource.acceptOrder(orderId);
      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> confirmOrder(int orderId) async {
    try {
      await remoteDataSource.confirmOrder(orderId);
      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
