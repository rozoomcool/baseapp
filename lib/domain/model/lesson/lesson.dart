import 'package:baseapp/domain/model/lecture/lecture.dart';
import 'package:baseapp/domain/model/lesson_test/lesson_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    int? id,
    required String title,
    @Default([]) List<Lecture> lectures,
    @Default([]) List<LessonTest> tests,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json)
      => _$LessonFromJson(json);
}
