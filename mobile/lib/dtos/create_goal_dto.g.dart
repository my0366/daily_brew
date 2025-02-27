// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_goal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGoalDto _$CreateGoalDtoFromJson(
  Map<String, dynamic> json,
) => CreateGoalDto(
  target: (json['target'] as num?)?.toInt() ?? 0,
  startAt:
      json['startAt'] == null
          ? null
          : DateTime.parse(json['startAt'] as String),
  endAt: json['endAt'] == null ? null : DateTime.parse(json['endAt'] as String),
);

Map<String, dynamic> _$CreateGoalDtoToJson(CreateGoalDto instance) =>
    <String, dynamic>{
      'target': instance.target,
      'startAt': instance.startAt?.toIso8601String(),
      'endAt': instance.endAt?.toIso8601String(),
    };
