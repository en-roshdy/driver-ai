import 'package:equatable/equatable.dart';
import '../../domain/entities/chat.dart';

abstract class ChatState extends Equatable {
  const ChatState();
  
  @override
  List<Object> get props => [];
}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatsLoaded extends ChatState {
  final List<Chat> chats;

  const ChatsLoaded(this.chats);

  @override
  List<Object> get props => [chats];
}

class ChatMessagesLoaded extends ChatState {
  final List<ChatMessage> messages;

  const ChatMessagesLoaded(this.messages);

  @override
  List<Object> get props => [messages];
}

class ChatError extends ChatState {
  final String message;

  const ChatError(this.message);

  @override
  List<Object> get props => [message];
}

class MessageSent extends ChatState {}
