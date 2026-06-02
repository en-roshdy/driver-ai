import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final int? id;
  final String? orderNumber;
  final String? totalFullSentence;
  final String? statusName;
  final String? statusCustomName;
  final String? statusColor;
  final String? date;
  final String? time;
  final String? mapAddress;
  final double? lat;
  final double? lng;
  final bool? canAccept;
  final bool? canConfirm;
  final String? cityName;

  const Order({
    required this.id,
    required this.orderNumber,
    this.totalFullSentence,
    this.statusName,
    this.statusCustomName,
    this.statusColor,
    this.date,
    this.time,
    this.mapAddress,
    this.lat,
    this.lng,
    this.canAccept = false,
    this.canConfirm = false,
    this.cityName,
  });

  @override
  List<Object?> get props => [
        id,
        orderNumber,
        totalFullSentence,
        statusName,
        statusCustomName,
        statusColor,
        date,
        time,
        mapAddress,
        lat,
        lng,
        canAccept,
        canConfirm,
        cityName,
      ];
}
