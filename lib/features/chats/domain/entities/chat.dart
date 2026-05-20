import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  final int chatId;
  final String lastMessageText;
  final String lastMessageDate;
  final String memberName;
  final String? memberImage;
  final int unreadCount;
  final int orderId;

  const Chat({
    required this.chatId,
    required this.lastMessageText,
    required this.lastMessageDate,
    required this.memberName,
    this.memberImage,
    required this.unreadCount,
    required this.orderId,
  });

  @override
  List<Object?> get props => [
        chatId,
        lastMessageText,
        lastMessageDate,
        memberName,
        memberImage,
        unreadCount,
        orderId,
      ];
}

class ChatMessage extends Equatable {
  final int id;
  final String body;
  final bool isMine;
  final String date;
  final String type;

  const ChatMessage({
    required this.id,
    required this.body,
    required this.isMine,
    required this.date,
    required this.type,
  });

  @override
  List<Object?> get props => [id, body, isMine, date, type];
}
