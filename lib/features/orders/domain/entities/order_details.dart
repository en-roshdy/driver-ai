import 'package:equatable/equatable.dart';
import 'order.dart';

class OrderDetails extends Equatable {
  final Order order;
  final List<OrderItem> items;
  final String? clientName;
  final String? clientPhone;
  final String? clientImage;

  const OrderDetails({
    required this.order,
    required this.items,
    this.clientName,
    this.clientPhone,
    this.clientImage,
  });

  @override
  List<Object?> get props => [order, items, clientName, clientPhone, clientImage];
}

class OrderItem extends Equatable {
  final int id;
  final String name;
  final int quantity;
  final double price;
  final String? image;

  const OrderItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.image,
  });

  @override
  List<Object?> get props => [id, name, quantity, price, image];
}
