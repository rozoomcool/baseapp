import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:baseapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  IO.Socket? socket;

  AuthSharedRepository repo = AuthSharedRepository(GetIt.I<SharedPreferences>());

  void connect() {
    socket = IO.io('$wsBaseUrl', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
      'auth': {
        'token': repo.getAccessToken()
      }
    });
    socket?.connect();

    socket?.on('connect', (_) {
      debugPrint('Connected to the server');
    });

    socket?.on('disconnect', (_) {
      debugPrint('Disconnected from server');
    });
  }

  void sendMessage(String recipient, String content) {
    socket?.emit('private_message', {
      'recipient': recipient,
      'content': content,
    });
  }

  void onMessageReceived(Function(dynamic) callback) {
    // debugPrint(callback.toString());
    socket?.on('private_message', callback);
  }

  void dispose() {
    socket?.disconnect();
  }
}
