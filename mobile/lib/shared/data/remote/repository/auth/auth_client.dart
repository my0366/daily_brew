import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: 'auth')
abstract class LoginApiClient {
  factory LoginApiClient(Dio dio, {String baseUrl}) = _LoginApiClient;

  @POST("/sign-up")
  Future<dynamic> signUp(
    @Body() AuthDto body,
  );

  @POST("/sign-in")
  Future<dynamic> signIn(
    @Body() AuthDto body,
  );
}
