// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonTestImpl _$$LessonTestImplFromJson(Map<String, dynamic> json) =>
    _$LessonTestImpl(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] as String,
      answerId: (json['answerId'] as num).toInt(),
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => TestAnswer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LessonTestImplToJson(_$LessonTestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answerId': instance.answerId,
      'variants': instance.variants,
    };
