// import 'package:baseapp/database/entities/message.dart';
// import 'package:baseapp/database/entities/message.g.dart';
import 'package:baseapp/database/entities/message_entity.dart';
import 'package:baseapp/domain/model/message/message.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:baseapp/domain/service/websocket_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final SocketService socketService;
  final AuthSharedRepository repo = AuthSharedRepository(GetIt.I<SharedPreferences>());
  final Isar _isar = GetIt.I<Isar>();

  ChatCubit(this.socketService) : super(ChatState.initial());

  void connect(String username) {
    socketService.connect();
    socketService.socket?.emit('connection');

    socketService.onMessageReceived((data) {
      final message = Message.fromJson(data);
      debugPrint(message.toString());
      addMessage(message);
    });
  }

  void sendMessage(String recipient, String content) {
    final message = Message(sender: repo.getUsername()!, recipient: recipient, content: content);
    addMessage(message);
    socketService.sendMessage(recipient, content);
  }

  Future<void> addMessage(Message message) async {
    var entity = MessageEntity()
                    ..content = message.content
                    ..createdAt = message.createdAt
                    ..recipient = message.recipient
                    ..sender = message.sender;
    await _isar.writeTxn(() async {await _isar.messageEntitys.put(entity);});
    emit(state.copyWith(messages: [...state.messages, message]));
  }

  Future<void> loadMessages() async {
    // final messages = await isar.messages.where().findAll();
    emit(state.copyWith(messages: []));
  }
}
