import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/order_details.dart';
import 'order_model.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  const factory OrderDetailsModel({
    required OrderModel order,
    required List<OrderItemModel> items,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_phone') String? clientPhone,
    @JsonKey(name: 'client_image') String? clientImage,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);

  const OrderDetailsModel._();

  OrderDetails toEntity() => OrderDetails(
        order: order.toEntity(),
        items: items.map((e) => e.toEntity()).toList(),
        clientName: clientName,
        clientPhone: clientPhone,
        clientImage: clientImage,
      );
}

@freezed
class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required int id,
    required String name,
    required int quantity,
    required double price,
    String? image,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) => _$OrderItemModelFromJson(json);

  const OrderItemModel._();

  OrderItem toEntity() => OrderItem(
        id: id,
        name: name,
        quantity: quantity,
        price: price,
        image: image,
      );
}
