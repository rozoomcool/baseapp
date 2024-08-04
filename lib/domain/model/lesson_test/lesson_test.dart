import 'package:baseapp/domain/model/test_answer/test_answer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_test.freezed.dart';
part 'lesson_test.g.dart';

@freezed
class LessonTest with _$LessonTest {
  const factory LessonTest({
    int? id,
    required String question,
    required int answerId,
    @Default([]) List<TestAnswer> variants
  }) = _LessonTest;

  factory LessonTest.fromJson(Map<String, Object?> json)
      => _$LessonTestFromJson(json);
}
