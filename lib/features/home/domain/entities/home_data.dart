import 'package:equatable/equatable.dart';

import '../../../orders/domain/entities/order.dart';

class HomeData extends Equatable {
  final List<Order> pendingOrders;
  final List<Statistic> statistics;

  const HomeData({
    required this.pendingOrders,
    required this.statistics,
  });

  @override
  List<Object?> get props => [pendingOrders, statistics];
}

class Statistic extends Equatable {
  final String image;
  final String name;
  final double value;
  final bool? isDouble;

  const Statistic({
    required this.image,
    required this.name,
    required this.value,
    required this.isDouble,
  });

  @override
  List<Object?> get props => [image, name, value, isDouble];
}
