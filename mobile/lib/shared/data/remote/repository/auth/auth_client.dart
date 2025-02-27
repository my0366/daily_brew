import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  @POST("auth/sign-up")
  Future<dynamic> signUp(@Body() AuthDto body);

  @POST("auth/sign-in")
  Future<dynamic> signIn(@Body() AuthDto body);
}
