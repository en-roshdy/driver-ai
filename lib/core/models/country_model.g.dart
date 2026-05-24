// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      flag: json['flag'] as String,
      phoneCode: json['phone_code'] as String,
      phoneLength: (json['phone_length'] as num).toInt(),
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'flag': instance.flag,
      'phone_code': instance.phoneCode,
      'phone_length': instance.phoneLength,
    };
