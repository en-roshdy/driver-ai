import 'package:equatable/equatable.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class GetChats extends ChatEvent {
  final int page;
  const GetChats({this.page = 1});

  @override
  List<Object> get props => [page];
}

class GetChatMessages extends ChatEvent {
  final int chatId;
  final int page;
  const GetChatMessages(this.chatId, {this.page = 1});

  @override
  List<Object> get props => [chatId, page];
}

class SendMessage extends ChatEvent {
  final int chatId;
  final String message;
  final String type;

  const SendMessage(this.chatId, this.message, {this.type = 'text'});

  @override
  List<Object> get props => [chatId, message, type];
}
