import 'package:equatable/equatable.dart';
import '../../domain/entities/order.dart';
import '../../domain/entities/order_details.dart';

abstract class OrderState extends Equatable {
  const OrderState();
  
  @override
  List<Object> get props => [];
}

class OrderInitial extends OrderState {}

class OrderLoading extends OrderState {}

class OrderLoaded extends OrderState {
  final List<Order> orders;

  const OrderLoaded(this.orders);

  @override
  List<Object> get props => [orders];
}

class OrderError extends OrderState {
  final String message;

  const OrderError(this.message);

  @override
  List<Object> get props => [message];
}

class OrderDetailsLoaded extends OrderState {
  final OrderDetails orderDetails;

  const OrderDetailsLoaded(this.orderDetails);

  @override
  List<Object> get props => [orderDetails];
}

class OrderActionSuccess extends OrderState {}
