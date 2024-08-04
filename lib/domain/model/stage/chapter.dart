import 'package:baseapp/domain/model/lesson/lesson.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    int? id,
    required String title,
    @Default([]) List<Lesson> lessons,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, Object?> json)
      => _$ChapterFromJson(json);
}