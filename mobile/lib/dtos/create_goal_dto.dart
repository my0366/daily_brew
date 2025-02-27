import 'package:json_annotation/json_annotation.dart';

part 'create_goal_dto.g.dart';

@JsonSerializable()
class CreateGoalDto {
  int target;
  DateTime? startAt;
  DateTime? endAt;

  CreateGoalDto({this.target = 0, this.startAt, this.endAt});

  factory CreateGoalDto.fromJson(Map<String, dynamic> json) => _$CreateGoalDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CreateGoalDtoToJson(this);
}
