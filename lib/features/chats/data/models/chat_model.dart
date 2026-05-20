import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/chat.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    @JsonKey(name: 'chat_id') required int chatId,
    @JsonKey(name: 'chat_last_message_text') required String lastMessageText,
    @JsonKey(name: 'chat_last_message_date') required String lastMessageDate,
    @JsonKey(name: 'chat_member') required ChatMemberModel member,
    @JsonKey(name: 'chat_unread_messages_count') required int unreadCount,
    @JsonKey(name: 'order_id') required int orderId,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);

  const ChatModel._();

  Chat toEntity() => Chat(
        chatId: chatId,
        lastMessageText: lastMessageText,
        lastMessageDate: lastMessageDate,
        memberName: member.name,
        memberImage: member.image,
        unreadCount: unreadCount,
        orderId: orderId,
      );
}

@freezed
class ChatMemberModel with _$ChatMemberModel {
  const factory ChatMemberModel({
    required int id,
    required String name,
    String? image,
  }) = _ChatMemberModel;

  factory ChatMemberModel.fromJson(Map<String, dynamic> json) => _$ChatMemberModelFromJson(json);
}

@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    @JsonKey(name: 'message_id') required int id,
    @JsonKey(name: 'message_body') required String body,
    @JsonKey(name: 'message_if_mine') required bool isMine,
    @JsonKey(name: 'message_custom_date') required String date,
    @JsonKey(name: 'message_type') required String type,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) => _$ChatMessageModelFromJson(json);

  const ChatMessageModel._();

  ChatMessage toEntity() => ChatMessage(
        id: id,
        body: body,
        isMine: isMine,
        date: date,
        type: type,
      );
}
