// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$OrderDetailsModelImpl(
  order: OrderModel.fromJson(json['order'] as Map<String, dynamic>),
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  clientName: json['client_name'] as String?,
  clientPhone: json['client_phone'] as String?,
  clientImage: json['client_image'] as String?,
);

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
  _$OrderDetailsModelImpl instance,
) => <String, dynamic>{
  'order': instance.order,
  'items': instance.items,
  'client_name': instance.clientName,
  'client_phone': instance.clientPhone,
  'client_image': instance.clientImage,
};

_$OrderItemModelImpl _$$OrderItemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$OrderItemModelImplToJson(
  _$OrderItemModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'quantity': instance.quantity,
  'price': instance.price,
  'image': instance.image,
};
