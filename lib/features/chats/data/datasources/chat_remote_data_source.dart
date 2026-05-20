import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/chat_model.dart';

abstract class ChatRemoteDataSource {
  Future<List<ChatModel>> getChats(int page);
  Future<List<ChatMessageModel>> getChatMessages(int chatId, int page);
  Future<void> sendMessage(int chatId, String message, String type);
}

@LazySingleton(as: ChatRemoteDataSource)
class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final Dio dio;

  ChatRemoteDataSourceImpl(this.dio);

  @override
  Future<List<ChatModel>> getChats(int page) async {
    final response = await dio.get('delegate/chats', queryParameters: {'page': page});
    if (response.statusCode == 200) {
      final List data = response.data['data'];
      return data.map((e) => ChatModel.fromJson(e)).toList();
    } else {
      throw Exception('Server Error');
    }
  }

  @override
  Future<List<ChatMessageModel>> getChatMessages(int chatId, int page) async {
    final response = await dio.get('delegate/chats/$chatId/messages', queryParameters: {'page': page});
    if (response.statusCode == 200) {
      final List data = response.data['data'];
      return data.map((e) => ChatMessageModel.fromJson(e)).toList();
    } else {
      throw Exception('Server Error');
    }
  }

  @override
  Future<void> sendMessage(int chatId, String message, String type) async {
    await dio.post('delegate/chats/$chatId/messages', data: {
      'message': message,
      'type': type,
    });
  }
}
