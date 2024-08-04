// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageResponseImpl _$$MessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageResponseImpl(
      recipient: json['recipient'] as String,
      content: json['content'] as String,
      sender: json['sender'] as String,
    );

Map<String, dynamic> _$$MessageResponseImplToJson(
        _$MessageResponseImpl instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'content': instance.content,
      'sender': instance.sender,
    };
