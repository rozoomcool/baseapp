// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      recipient: json['recipient'] as String,
      content: json['content'] as String,
      sender: json['sender'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'content': instance.content,
      'sender': instance.sender,
      'createdAt': instance.createdAt,
    };
