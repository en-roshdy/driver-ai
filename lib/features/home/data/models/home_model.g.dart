// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      pendingOrders: (json['orders'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: (json['statistics'] as List<dynamic>)
          .map((e) => StatisticModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'orders': instance.pendingOrders,
      'statistics': instance.statistics,
    };

_$StatisticModelImpl _$$StatisticModelImplFromJson(Map<String, dynamic> json) =>
    _$StatisticModelImpl(
      image: json['image'] as String,
      name: json['name'] as String,
      value: (json['number'] as num).toDouble(),
      isDouble: json['is_double'] as bool,
    );

Map<String, dynamic> _$$StatisticModelImplToJson(
  _$StatisticModelImpl instance,
) => <String, dynamic>{
  'image': instance.image,
  'name': instance.name,
  'number': instance.value,
  'is_double': instance.isDouble,
};
