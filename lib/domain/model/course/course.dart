import 'package:baseapp/domain/model/stage/chapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    int? id,
    required String title,
    required String description,
    int? ownerId,
    String? preview,
    required Complexity complexity,
    @Default([]) List<Chapter> chapters,
    DateTime? createdAt,
    DateTime? updatedAt
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json)
      => _$CourseFromJson(json);
}

enum Complexity {
  EASY, MEDIUM, HARD
}

// {
//     "id": 36,
//     "title": "title",
//     "description": "fjfkgjdlfsgjl;ksdf",
//     "ownerId": 1,
//     "preview": null,
//     "chapters": [
//         {
//             "id": 2,
//             "title": "ffff",
//             "lessons": [
//                 {
//                     "id": 2,
//                     "title": "rrrrr",
//                     "lectures": [
//                         {
//                             "id": 2,
//                             "content": "jsdkfjkd",
//                             "createdAt": "2024-08-03T21:16:58.390+00:00",
//                             "updatedAt": "2024-08-03T21:16:58.390+00:00"
//                         }
//                     ],
//                     "tests": [
//                         {
//                             "id": 2,
//                             "question": "HOW?",
//                             "variants": [
//                                 {
//                                     "id": 2,
//                                     "variant": "hello"
//                                 }
//                             ],
//                             "answerId": 0
//                         }
//                     ],
//                     "createdAt": "2024-08-03T21:16:58.388+00:00",
//                     "updatedAt": "2024-08-03T21:16:58.410+00:00"
//                 }
//             ]
//         }
//     ],
//     "complexity": "EASY",
//     "createdAt": "2024-08-03T21:16:58.377+00:00",
//     "updatedAt": "2024-08-03T21:16:58.406+00:00"
// }