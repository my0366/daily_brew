import 'package:daily_brew/dtos/create_goal_dto.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

part 'set_goal_state.freezed.dart';

@freezed
class SetGoalState with _$SetGoalState {
  const factory SetGoalState({
    required CreateGoalDto createGoalDto,
  }) = _SetGoalState;

  factory SetGoalState.initial() {
    return SetGoalState(
      createGoalDto: CreateGoalDto(
        startAt: null,
        endAt: null,
      ),
    );
  }
}
