// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenResponseEntityImpl _$$TokenResponseEntityImplFromJson(
  Map<String, dynamic> json,
) => _$TokenResponseEntityImpl(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
);

Map<String, dynamic> _$$TokenResponseEntityImplToJson(
  _$TokenResponseEntityImpl instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
};
