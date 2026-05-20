// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabelValueModelImpl<T> _$$LabelValueModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$LabelValueModelImpl<T>(
  label: json['label'] as String,
  value: fromJsonT(json['value']),
);

Map<String, dynamic> _$$LabelValueModelImplToJson<T>(
  _$LabelValueModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'label': instance.label,
  'value': toJsonT(instance.value),
};
