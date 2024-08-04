import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture.freezed.dart';
part 'lecture.g.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    int? id,
    required String content,
  }) = _Lecture;

  factory Lecture.fromJson(Map<String, Object?> json)
      => _$LectureFromJson(json);
}
