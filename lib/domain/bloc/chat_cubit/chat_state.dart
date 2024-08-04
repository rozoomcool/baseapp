import 'package:baseapp/domain/model/message/message.dart';
import 'package:baseapp/domain/model/message/message_response.dart';
import 'package:equatable/equatable.dart';

class ChatState extends Equatable {
  final List<Message> messages;

  const ChatState({required this.messages});

  factory ChatState.initial() {
    return const ChatState(messages: []);
  }

  ChatState copyWith({List<Message>? messages}) {
    return ChatState(messages: messages ?? this.messages);
  }

  @override
  List<Object?> get props => [messages];
}
