// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageRequestImpl _$$MessageRequestImplFromJson(Map<String, dynamic> json) =>
    _$MessageRequestImpl(
      recipient: json['recipient'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$MessageRequestImplToJson(
        _$MessageRequestImpl instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'content': instance.content,
    };
