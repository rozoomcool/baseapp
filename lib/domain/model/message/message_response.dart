import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_response.freezed.dart';
part 'message_response.g.dart';

@freezed
class MessageResponse with _$MessageResponse {
  const factory MessageResponse({
    required String recipient,
    required String content,
    required String sender,
  }) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, Object?> json)
      => _$MessageResponseFromJson(json);
}