// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageRequest _$MessageRequestFromJson(Map<String, dynamic> json) {
  return _MessageRequest.fromJson(json);
}

/// @nodoc
mixin _$MessageRequest {
  String get recipient => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageRequestCopyWith<MessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRequestCopyWith<$Res> {
  factory $MessageRequestCopyWith(
          MessageRequest value, $Res Function(MessageRequest) then) =
      _$MessageRequestCopyWithImpl<$Res, MessageRequest>;
  @useResult
  $Res call({String recipient, String content});
}

/// @nodoc
class _$MessageRequestCopyWithImpl<$Res, $Val extends MessageRequest>
    implements $MessageRequestCopyWith<$Res> {
  _$MessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageRequestImplCopyWith<$Res>
    implements $MessageRequestCopyWith<$Res> {
  factory _$$MessageRequestImplCopyWith(_$MessageRequestImpl value,
          $Res Function(_$MessageRequestImpl) then) =
      __$$MessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String recipient, String content});
}

/// @nodoc
class __$$MessageRequestImplCopyWithImpl<$Res>
    extends _$MessageRequestCopyWithImpl<$Res, _$MessageRequestImpl>
    implements _$$MessageRequestImplCopyWith<$Res> {
  __$$MessageRequestImplCopyWithImpl(
      _$MessageRequestImpl _value, $Res Function(_$MessageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = null,
    Object? content = null,
  }) {
    return _then(_$MessageRequestImpl(
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageRequestImpl implements _MessageRequest {
  const _$MessageRequestImpl({required this.recipient, required this.content});

  factory _$MessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageRequestImplFromJson(json);

  @override
  final String recipient;
  @override
  final String content;

  @override
  String toString() {
    return 'MessageRequest(recipient: $recipient, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageRequestImpl &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipient, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageRequestImplCopyWith<_$MessageRequestImpl> get copyWith =>
      __$$MessageRequestImplCopyWithImpl<_$MessageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageRequestImplToJson(
      this,
    );
  }
}

abstract class _MessageRequest implements MessageRequest {
  const factory _MessageRequest(
      {required final String recipient,
      required final String content}) = _$MessageRequestImpl;

  factory _MessageRequest.fromJson(Map<String, dynamic> json) =
      _$MessageRequestImpl.fromJson;

  @override
  String get recipient;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$MessageRequestImplCopyWith<_$MessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
