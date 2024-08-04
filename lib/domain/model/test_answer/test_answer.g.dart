// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestAnswerImpl _$$TestAnswerImplFromJson(Map<String, dynamic> json) =>
    _$TestAnswerImpl(
      id: (json['id'] as num?)?.toInt(),
      variant: json['variant'] as String,
      isAnswer: json['isAnswer'] as bool,
    );

Map<String, dynamic> _$$TestAnswerImplToJson(_$TestAnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant': instance.variant,
      'isAnswer': instance.isAnswer,
    };
