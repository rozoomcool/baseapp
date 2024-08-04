import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String recipient,
    required String content,
    String? sender,
    String? createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json)
      => _$MessageFromJson(json);
}