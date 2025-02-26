import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/shared/constants/config.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_client.dart';
import 'package:daily_brew/shared/util/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  final loginApiClient = AuthApiClient(dio, baseUrl: Config.baseURL);
  return AuthRepository(loginApiClient);
}

class AuthRepository {
  AuthApiClient loginService;

  AuthRepository(this.loginService);

  Future<dynamic> signUp(AuthDto body) async {
    final result = await loginService.signUp(body);
    return result;
  }

  Future<dynamic> signIn(AuthDto body) async {
    final result = await loginService.signIn(body);
    return result;
  }
}
