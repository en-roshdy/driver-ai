import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/chat_repository.dart';
import 'chat_event.dart';
import 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;

  ChatBloc(this.chatRepository) : super(ChatInitial()) {
    on<GetChats>((event, emit) async {
      emit(ChatLoading());
      final result = await chatRepository.getChats(event.page);
      result.fold(
        (failure) => emit(ChatError(failure.message)),
        (chats) => emit(ChatsLoaded(chats)),
      );
    });

    on<GetChatMessages>((event, emit) async {
      emit(ChatLoading());
      final result = await chatRepository.getChatMessages(event.chatId, event.page);
      result.fold(
        (failure) => emit(ChatError(failure.message)),
        (messages) => emit(ChatMessagesLoaded(messages)),
      );
    });

    on<SendMessage>((event, emit) async {
      final result = await chatRepository.sendMessage(event.chatId, event.message, event.type);
      result.fold(
        (failure) => emit(ChatError(failure.message)),
        (_) => emit(MessageSent()),
      );
    });
  }
}
