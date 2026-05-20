import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/chat.dart';

abstract class ChatRepository {
  Future<Either<Failure, List<Chat>>> getChats(int page);
  Future<Either<Failure, List<ChatMessage>>> getChatMessages(int chatId, int page);
  Future<Either<Failure, Unit>> sendMessage(int chatId, String message, String type);
}
