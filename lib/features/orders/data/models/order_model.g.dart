// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      orderNumber: json['order_number'] as String?,
      total: json['total'] == null
          ? null
          : TotalModel.fromJson(json['total'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      toDate: json['to_date'] == null
          ? null
          : ToDateModel.fromJson(json['to_date'] as Map<String, dynamic>),
      mapAddress: json['map_address'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      canAcceptButton: json['can_accept_button'] as bool?,
      canConfirmButton: json['can_confirm_button'] as bool?,
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'total': instance.total,
      'status': instance.status,
      'to_date': instance.toDate,
      'map_address': instance.mapAddress,
      'lat': instance.lat,
      'lng': instance.lng,
      'can_accept_button': instance.canAcceptButton,
      'can_confirm_button': instance.canConfirmButton,
      'city': instance.city,
    };

_$TotalModelImpl _$$TotalModelImplFromJson(Map<String, dynamic> json) =>
    _$TotalModelImpl(
      fullSentence: json['full_sentence'] as String?,
      labelUnit: json['label_unit'] as String?,
      number: (json['number'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TotalModelImplToJson(_$TotalModelImpl instance) =>
    <String, dynamic>{
      'full_sentence': instance.fullSentence,
      'label_unit': instance.labelUnit,
      'number': instance.number,
    };

_$StatusModelImpl _$$StatusModelImplFromJson(Map<String, dynamic> json) =>
    _$StatusModelImpl(
      color: json['color'] as String?,
      customName: json['custom_name'] as String?,
      name: json['name'] as String?,
      opacity: (json['opacity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StatusModelImplToJson(_$StatusModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'custom_name': instance.customName,
      'name': instance.name,
      'opacity': instance.opacity,
    };

_$ToDateModelImpl _$$ToDateModelImplFromJson(Map<String, dynamic> json) =>
    _$ToDateModelImpl(
      date: json['date'] as String?,
      time: json['time'] == null
          ? null
          : TimeModel.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToDateModelImplToJson(_$ToDateModelImpl instance) =>
    <String, dynamic>{'date': instance.date, 'time': instance.time};

_$TimeModelImpl _$$TimeModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeModelImpl(
      label: json['label'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$TimeModelImplToJson(_$TimeModelImpl instance) =>
    <String, dynamic>{'label': instance.label, 'value': instance.value};

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_id': instance.countryId,
      'image': instance.image,
    };
