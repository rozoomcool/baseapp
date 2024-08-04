// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      password: json['password'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      avatar: json['avatar'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      surname: json['surname'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      isEnabled: json['isEnabled'] as bool?,
      isAccountNonExpired: json['isAccountNonExpired'] as bool?,
      isCredentialsNonExpired: json['isCredentialsNonExpired'] as bool?,
      isAccountNonLocked: json['isAccountNonLocked'] as bool?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'role': _$RoleEnumMap[instance.role],
      'avatar': instance.avatar,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'surname': instance.surname,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isEnabled': instance.isEnabled,
      'isAccountNonExpired': instance.isAccountNonExpired,
      'isCredentialsNonExpired': instance.isCredentialsNonExpired,
      'isAccountNonLocked': instance.isAccountNonLocked,
    };

const _$RoleEnumMap = {
  Role.TEACHER: 'TEACHER',
  Role.STUDENT: 'STUDENT',
  Role.ADMIN: 'ADMIN',
};
