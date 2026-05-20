// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      chatId: (json['chat_id'] as num).toInt(),
      lastMessageText: json['chat_last_message_text'] as String,
      lastMessageDate: json['chat_last_message_date'] as String,
      member: ChatMemberModel.fromJson(
        json['chat_member'] as Map<String, dynamic>,
      ),
      unreadCount: (json['chat_unread_messages_count'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'chat_id': instance.chatId,
      'chat_last_message_text': instance.lastMessageText,
      'chat_last_message_date': instance.lastMessageDate,
      'chat_member': instance.member,
      'chat_unread_messages_count': instance.unreadCount,
      'order_id': instance.orderId,
    };

_$ChatMemberModelImpl _$$ChatMemberModelImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMemberModelImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  image: json['image'] as String?,
);

Map<String, dynamic> _$$ChatMemberModelImplToJson(
  _$ChatMemberModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
};

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessageModelImpl(
  id: (json['message_id'] as num).toInt(),
  body: json['message_body'] as String,
  isMine: json['message_if_mine'] as bool,
  date: json['message_custom_date'] as String,
  type: json['message_type'] as String,
);

Map<String, dynamic> _$$ChatMessageModelImplToJson(
  _$ChatMessageModelImpl instance,
) => <String, dynamic>{
  'message_id': instance.id,
  'message_body': instance.body,
  'message_if_mine': instance.isMine,
  'message_custom_date': instance.date,
  'message_type': instance.type,
};
