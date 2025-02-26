import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/dtos/create_goal_dto.dart';
import 'package:daily_brew/shared/constants/config.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_client.dart';
import 'package:daily_brew/shared/data/remote/repository/goals/goals_client.dart';
import 'package:daily_brew/shared/util/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'goals_repository.g.dart';

@Riverpod(keepAlive: true)
GoalsRepository goalsRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  final goalsApiClient = GoalsApiClient(dio, baseUrl: Config.baseURL);
  return GoalsRepository(goalsApiClient);
}

class GoalsRepository {
  GoalsApiClient goalsApiClient;

  GoalsRepository(this.goalsApiClient);

  Future<dynamic> getGoals() async {
    final result = await goalsApiClient.getGoals();
    return result;
  }

  Future<dynamic> getGoal() async {
    final result = await goalsApiClient.getGoal();
    return result;
  }

  Future<dynamic> getCurrentGoal() async {
    final result = await goalsApiClient.getCurrentGoal();
    return result;
  }

  Future<dynamic> createGoal(CreateGoalDto createGoalDto) async {
    final result = await goalsApiClient.postCreateGoal(createGoalDto);
    return result;
  }
}
