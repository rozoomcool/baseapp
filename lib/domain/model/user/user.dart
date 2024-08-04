import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? username,
    String? password,
    Role? role,
    String? avatar,
    String? firstname,
    String? lastname,
    String? surname,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isEnabled,
    bool? isAccountNonExpired,
    bool? isCredentialsNonExpired,
    bool? isAccountNonLocked,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json)
      => _$UserFromJson(json);
}

enum Role {
  TEACHER, STUDENT, ADMIN
}