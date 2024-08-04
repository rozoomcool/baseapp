import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_answer.freezed.dart';
part 'test_answer.g.dart';

@freezed
class TestAnswer with _$TestAnswer {
  const factory TestAnswer({
    int? id,
    required String variant
  }) = _TestAnswer;

  factory TestAnswer.fromJson(Map<String, Object?> json)
      => _$TestAnswerFromJson(json);
}