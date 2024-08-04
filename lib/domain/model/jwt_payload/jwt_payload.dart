import 'package:baseapp/domain/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_payload.freezed.dart';
part 'jwt_payload.g.dart';

@freezed
class JwtPayload with _$JwtPayload {
  const factory JwtPayload({
    required User user,
    required String access,
    required String refresh,
  }) = _JwtPayload;

  factory JwtPayload.fromJson(Map<String, Object?> json)
      => _$JwtPayloadFromJson(json);
}