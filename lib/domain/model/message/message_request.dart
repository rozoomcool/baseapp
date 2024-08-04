import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_request.freezed.dart';
part 'message_request.g.dart';

@freezed
class MessageRequest with _$MessageRequest {
  const factory MessageRequest({
    required String recipient,
    required String content,
  }) = _MessageRequest;

  factory MessageRequest.fromJson(Map<String, Object?> json)
      => _$MessageRequestFromJson(json);
}