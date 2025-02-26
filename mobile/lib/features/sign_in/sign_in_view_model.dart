import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/features/sign_in/sign_in_state.dart';
import 'package:daily_brew/shared/data/local/session_storage.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_client.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_view_model.g.dart';

@riverpod
class SignInNotifier extends AutoDisposeNotifier<SignInState> {
  @override
  SignInState build() {
    return SignInState.initial();
  }

  Future<dynamic> signIn() async {
    final result = await ref.read(authRepositoryProvider).signIn(state.authDto);
    switch (result["statusCode"]) {
      case 200:
        SessionStorage.storeAccessToken(result["data"]['accessToken']);
        SessionStorage.storeRefreshToken(result["data"]['refreshToken']);
    }
    return result;
  }
}
