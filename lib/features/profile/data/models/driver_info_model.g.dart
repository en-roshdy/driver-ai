// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverInfoModelImpl _$$DriverInfoModelImplFromJson(
  Map<String, dynamic> json,
) => _$DriverInfoModelImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  image: json['image'] as String?,
  workStatus: json['work_status'] as bool?,
  unreadNotificationsCount: (json['unread_notifications_count'] as num?)
      ?.toInt(),
  unreadMessagesCount: (json['unread_messages_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$$DriverInfoModelImplToJson(
  _$DriverInfoModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'image': instance.image,
  'work_status': instance.workStatus,
  'unread_notifications_count': instance.unreadNotificationsCount,
  'unread_messages_count': instance.unreadMessagesCount,
};
