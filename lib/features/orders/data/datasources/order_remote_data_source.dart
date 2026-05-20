import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/order_model.dart';
import '../models/order_details_model.dart';

abstract class OrderRemoteDataSource {
  Future<List<OrderModel>> getOrders(int page);
  Future<OrderDetailsModel> getOrderDetails(int orderId);
  Future<void> acceptOrder(int orderId);
  Future<void> confirmOrder(int orderId);
}

@LazySingleton(as: OrderRemoteDataSource)
class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final Dio dio;

  OrderRemoteDataSourceImpl(this.dio);

  @override
  Future<List<OrderModel>> getOrders(int page) async {
    final response = await dio.get('delegate/orders', queryParameters: {'page': page});
    if (response.statusCode == 200) {
      final List data = response.data['data'];
      return data.map((e) => OrderModel.fromJson(e)).toList();
    } else {
      throw Exception('Server Error');
    }
  }

  @override
  Future<OrderDetailsModel> getOrderDetails(int orderId) async {
    final response = await dio.get('delegate/orders/$orderId');
    if (response.statusCode == 200) {
      return OrderDetailsModel.fromJson(response.data['data']);
    } else {
      throw Exception('Server Error');
    }
  }

  @override
  Future<void> acceptOrder(int orderId) async {
    await dio.post('delegate/orders/$orderId/accept');
  }

  @override
  Future<void> confirmOrder(int orderId) async {
    await dio.post('delegate/orders/$orderId/confirm');
  }
}
