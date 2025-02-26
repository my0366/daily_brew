import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/dtos/create_goal_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'goals_client.g.dart';

@RestApi()
abstract class GoalsApiClient {
  factory GoalsApiClient(Dio dio, {String baseUrl}) = _GoalsApiClient;

  @GET("goals")
  Future<dynamic> getGoals();

  @GET("goals/{id}")
  Future<dynamic> getGoal();

  @GET("goals/current")
  Future<dynamic> getCurrentGoal();

  @POST("goals")
  Future<dynamic> postCreateGoal(
    @Body() CreateGoalDto createGoalDto,
  );
}
