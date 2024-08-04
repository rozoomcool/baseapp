// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      lectures: (json['lectures'] as List<dynamic>?)
              ?.map((e) => Lecture.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tests: (json['tests'] as List<dynamic>?)
              ?.map((e) => LessonTest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'lectures': instance.lectures,
      'tests': instance.tests,
    };
