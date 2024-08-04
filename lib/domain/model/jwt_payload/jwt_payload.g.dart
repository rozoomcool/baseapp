// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtPayloadImpl _$$JwtPayloadImplFromJson(Map<String, dynamic> json) =>
    _$JwtPayloadImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      access: json['access'] as String,
      refresh: json['refresh'] as String,
    );

Map<String, dynamic> _$$JwtPayloadImplToJson(_$JwtPayloadImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access': instance.access,
      'refresh': instance.refresh,
    };
