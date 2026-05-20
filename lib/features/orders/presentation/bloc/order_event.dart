import 'package:equatable/equatable.dart';

abstract class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class GetOrders extends OrderEvent {
  final int page;
  const GetOrders({this.page = 1});

  @override
  List<Object> get props => [page];
}

class GetOrderDetails extends OrderEvent {
  final int orderId;
  const GetOrderDetails(this.orderId);

  @override
  List<Object> get props => [orderId];
}

class AcceptOrderEvent extends OrderEvent {
  final int orderId;
  const AcceptOrderEvent(this.orderId);

  @override
  List<Object> get props => [orderId];
}

class ConfirmOrderEvent extends OrderEvent {
  final int orderId;
  const ConfirmOrderEvent(this.orderId);

  @override
  List<Object> get props => [orderId];
}
