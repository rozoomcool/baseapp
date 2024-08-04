// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JwtPayload _$JwtPayloadFromJson(Map<String, dynamic> json) {
  return _JwtPayload.fromJson(json);
}

/// @nodoc
mixin _$JwtPayload {
  User get user => throw _privateConstructorUsedError;
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtPayloadCopyWith<JwtPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtPayloadCopyWith<$Res> {
  factory $JwtPayloadCopyWith(
          JwtPayload value, $Res Function(JwtPayload) then) =
      _$JwtPayloadCopyWithImpl<$Res, JwtPayload>;
  @useResult
  $Res call({User user, String access, String refresh});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$JwtPayloadCopyWithImpl<$Res, $Val extends JwtPayload>
    implements $JwtPayloadCopyWith<$Res> {
  _$JwtPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JwtPayloadImplCopyWith<$Res>
    implements $JwtPayloadCopyWith<$Res> {
  factory _$$JwtPayloadImplCopyWith(
          _$JwtPayloadImpl value, $Res Function(_$JwtPayloadImpl) then) =
      __$$JwtPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String access, String refresh});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$JwtPayloadImplCopyWithImpl<$Res>
    extends _$JwtPayloadCopyWithImpl<$Res, _$JwtPayloadImpl>
    implements _$$JwtPayloadImplCopyWith<$Res> {
  __$$JwtPayloadImplCopyWithImpl(
      _$JwtPayloadImpl _value, $Res Function(_$JwtPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$JwtPayloadImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtPayloadImpl implements _JwtPayload {
  const _$JwtPayloadImpl(
      {required this.user, required this.access, required this.refresh});

  factory _$JwtPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtPayloadImplFromJson(json);

  @override
  final User user;
  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'JwtPayload(user: $user, access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtPayloadImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, access, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtPayloadImplCopyWith<_$JwtPayloadImpl> get copyWith =>
      __$$JwtPayloadImplCopyWithImpl<_$JwtPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtPayloadImplToJson(
      this,
    );
  }
}

abstract class _JwtPayload implements JwtPayload {
  const factory _JwtPayload(
      {required final User user,
      required final String access,
      required final String refresh}) = _$JwtPayloadImpl;

  factory _JwtPayload.fromJson(Map<String, dynamic> json) =
      _$JwtPayloadImpl.fromJson;

  @override
  User get user;
  @override
  String get access;
  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$JwtPayloadImplCopyWith<_$JwtPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
