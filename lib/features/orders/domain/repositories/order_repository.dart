import 'package:dartz/dartz.dart' hide Order;
import '../../../../core/error/failures.dart';
import '../entities/order.dart';
import '../entities/order_details.dart';

abstract class OrderRepository {
  Future<Either<Failure, List<Order>>> getOrders(int page);
  Future<Either<Failure, OrderDetails>> getOrderDetails(int orderId);
  Future<Either<Failure, Unit>> acceptOrder(int orderId);
  Future<Either<Failure, Unit>> confirmOrder(int orderId);
}
