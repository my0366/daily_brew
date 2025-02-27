import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/features/set_goal/set_goal_state.dart';
import 'package:daily_brew/features/sign_in/sign_in_state.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_client.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_repository.dart';
import 'package:daily_brew/shared/data/remote/repository/goals/goals_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

part 'set_goal_view_model.g.dart';

@riverpod
class SetGoalNotifier extends AutoDisposeNotifier<SetGoalState> {
  @override
  SetGoalState build() {
    return SetGoalState.initial();
  }

  Future<dynamic> setGoal() async {
    final result = await ref.read(goalsRepositoryProvider).createGoal(state.createGoalDto);
    return result;
  }

  void setDate(ShadDateTimeRange? dateTimeRange) {
    state = state.copyWith(
      createGoalDto:
          state.createGoalDto
            ..startAt = dateTimeRange?.start
            ..endAt = dateTimeRange?.end,
    );
  }

  void decreaseTargetCup() {
    int targetCup = state.createGoalDto.target;
    if (targetCup > 0) {
      targetCup--;
    }
    state = state.copyWith(createGoalDto: state.createGoalDto..target = targetCup);
  }

  void increaseTargetCup() {
    int targetCup = state.createGoalDto.target;
    targetCup++;
    state = state.copyWith(createGoalDto: state.createGoalDto..target = targetCup);
  }

  bool isValid() {
    return state.createGoalDto.target > 0 && state.createGoalDto.startAt != null && state.createGoalDto.endAt != null;
  }
}
