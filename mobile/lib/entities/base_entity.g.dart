// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseEntityImpl<T> _$$BaseEntityImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$BaseEntityImpl<T>(
  statusCode: (json['statusCode'] as num).toInt(),
  message: json['message'] as String,
  data: fromJsonT(json['data']),
);

Map<String, dynamic> _$$BaseEntityImplToJson<T>(
  _$BaseEntityImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': toJsonT(instance.data),
};
