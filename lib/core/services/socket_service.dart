import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'local_storage_service.dart';
import 'package:logger/logger.dart';

@lazySingleton
class SocketService {
  final LocalStorageService localStorageService;
  final Logger logger = Logger();
  io.Socket? _socket;

  SocketService(this.localStorageService);

  void connect() {
    final token = localStorageService.getToken();
    if (token == null) return;

    _socket = io.io('https://chat.final.sa', io.OptionBuilder()
      .setTransports(['websocket'])
      .setAuth({'token': token})
      .build());

    _socket!.onConnect((_) {
      logger.i('Socket Connected');
    });

    _socket!.onDisconnect((_) {
      logger.i('Socket Disconnected');
    });

    _socket!.on('new_message', (data) {
      // Handle new message
    });
  }

  void sendMessage(String event, dynamic data) {
    _socket?.emit(event, data);
  }

  void disconnect() {
    _socket?.disconnect();
  }
}
