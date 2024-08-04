// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonTest _$LessonTestFromJson(Map<String, dynamic> json) {
  return _LessonTest.fromJson(json);
}

/// @nodoc
mixin _$LessonTest {
  int? get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<TestAnswer> get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonTestCopyWith<LessonTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonTestCopyWith<$Res> {
  factory $LessonTestCopyWith(
          LessonTest value, $Res Function(LessonTest) then) =
      _$LessonTestCopyWithImpl<$Res, LessonTest>;
  @useResult
  $Res call({int? id, String question, List<TestAnswer> variants});
}

/// @nodoc
class _$LessonTestCopyWithImpl<$Res, $Val extends LessonTest>
    implements $LessonTestCopyWith<$Res> {
  _$LessonTestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<TestAnswer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonTestImplCopyWith<$Res>
    implements $LessonTestCopyWith<$Res> {
  factory _$$LessonTestImplCopyWith(
          _$LessonTestImpl value, $Res Function(_$LessonTestImpl) then) =
      __$$LessonTestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String question, List<TestAnswer> variants});
}

/// @nodoc
class __$$LessonTestImplCopyWithImpl<$Res>
    extends _$LessonTestCopyWithImpl<$Res, _$LessonTestImpl>
    implements _$$LessonTestImplCopyWith<$Res> {
  __$$LessonTestImplCopyWithImpl(
      _$LessonTestImpl _value, $Res Function(_$LessonTestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = null,
    Object? variants = null,
  }) {
    return _then(_$LessonTestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<TestAnswer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonTestImpl implements _LessonTest {
  const _$LessonTestImpl(
      {this.id,
      required this.question,
      final List<TestAnswer> variants = const []})
      : _variants = variants;

  factory _$LessonTestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonTestImplFromJson(json);

  @override
  final int? id;
  @override
  final String question;
  final List<TestAnswer> _variants;
  @override
  @JsonKey()
  List<TestAnswer> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'LessonTest(id: $id, question: $question, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonTestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonTestImplCopyWith<_$LessonTestImpl> get copyWith =>
      __$$LessonTestImplCopyWithImpl<_$LessonTestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonTestImplToJson(
      this,
    );
  }
}

abstract class _LessonTest implements LessonTest {
  const factory _LessonTest(
      {final int? id,
      required final String question,
      final List<TestAnswer> variants}) = _$LessonTestImpl;

  factory _LessonTest.fromJson(Map<String, dynamic> json) =
      _$LessonTestImpl.fromJson;

  @override
  int? get id;
  @override
  String get question;
  @override
  List<TestAnswer> get variants;
  @override
  @JsonKey(ignore: true)
  _$$LessonTestImplCopyWith<_$LessonTestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
