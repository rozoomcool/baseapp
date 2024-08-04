// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      ownerId: (json['ownerId'] as num?)?.toInt(),
      preview: json['preview'] as String?,
      complexity: $enumDecode(_$ComplexityEnumMap, json['complexity']),
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'ownerId': instance.ownerId,
      'preview': instance.preview,
      'complexity': _$ComplexityEnumMap[instance.complexity]!,
      'chapters': instance.chapters,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$ComplexityEnumMap = {
  Complexity.EASY: 'EASY',
  Complexity.MEDIUM: 'MEDIUM',
  Complexity.HARD: 'HARD',
};
