import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_goal_dto.freezed.dart';
part 'create_goal_dto.g.dart';

@freezed
class CreateGoalDto with _$CreateGoalDto {
  const factory CreateGoalDto({
    @Default(0) int target,
    @Default(null) DateTime? startAt,
    @Default(null) DateTime? endAt,
  }) = _CreateGoalDto;

  factory CreateGoalDto.fromJson(Map<String, dynamic> json) => _$CreateGoalDtoFromJson(json);
}
