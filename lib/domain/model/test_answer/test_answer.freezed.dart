// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestAnswer _$TestAnswerFromJson(Map<String, dynamic> json) {
  return _TestAnswer.fromJson(json);
}

/// @nodoc
mixin _$TestAnswer {
  int? get id => throw _privateConstructorUsedError;
  String get variant => throw _privateConstructorUsedError;
  bool get isAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestAnswerCopyWith<TestAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestAnswerCopyWith<$Res> {
  factory $TestAnswerCopyWith(
          TestAnswer value, $Res Function(TestAnswer) then) =
      _$TestAnswerCopyWithImpl<$Res, TestAnswer>;
  @useResult
  $Res call({int? id, String variant, bool isAnswer});
}

/// @nodoc
class _$TestAnswerCopyWithImpl<$Res, $Val extends TestAnswer>
    implements $TestAnswerCopyWith<$Res> {
  _$TestAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? variant = null,
    Object? isAnswer = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswer: null == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestAnswerImplCopyWith<$Res>
    implements $TestAnswerCopyWith<$Res> {
  factory _$$TestAnswerImplCopyWith(
          _$TestAnswerImpl value, $Res Function(_$TestAnswerImpl) then) =
      __$$TestAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String variant, bool isAnswer});
}

/// @nodoc
class __$$TestAnswerImplCopyWithImpl<$Res>
    extends _$TestAnswerCopyWithImpl<$Res, _$TestAnswerImpl>
    implements _$$TestAnswerImplCopyWith<$Res> {
  __$$TestAnswerImplCopyWithImpl(
      _$TestAnswerImpl _value, $Res Function(_$TestAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? variant = null,
    Object? isAnswer = null,
  }) {
    return _then(_$TestAnswerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswer: null == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestAnswerImpl implements _TestAnswer {
  const _$TestAnswerImpl(
      {this.id, required this.variant, required this.isAnswer});

  factory _$TestAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestAnswerImplFromJson(json);

  @override
  final int? id;
  @override
  final String variant;
  @override
  final bool isAnswer;

  @override
  String toString() {
    return 'TestAnswer(id: $id, variant: $variant, isAnswer: $isAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestAnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.isAnswer, isAnswer) ||
                other.isAnswer == isAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, variant, isAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestAnswerImplCopyWith<_$TestAnswerImpl> get copyWith =>
      __$$TestAnswerImplCopyWithImpl<_$TestAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestAnswerImplToJson(
      this,
    );
  }
}

abstract class _TestAnswer implements TestAnswer {
  const factory _TestAnswer(
      {final int? id,
      required final String variant,
      required final bool isAnswer}) = _$TestAnswerImpl;

  factory _TestAnswer.fromJson(Map<String, dynamic> json) =
      _$TestAnswerImpl.fromJson;

  @override
  int? get id;
  @override
  String get variant;
  @override
  bool get isAnswer;
  @override
  @JsonKey(ignore: true)
  _$$TestAnswerImplCopyWith<_$TestAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
