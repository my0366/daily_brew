import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/entities/base_entity.dart';
import 'package:daily_brew/features/sign_in/sign_in_state.dart';
import 'package:daily_brew/shared/data/local/session_storage.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_client.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../entities/auth/token_response_entity.dart';

part 'sign_in_view_model.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() {
    return SignInState.initial();
  }

  void updateUserId(String userId) {
    state = state.copyWith(authDto: state.authDto..userId = userId);
  }

  void updatePassword(String password) {
    state = state.copyWith(authDto: state.authDto..password = password);
  }

  Future<dynamic> signIn() async {
    final result = await ref.read(authRepositoryProvider).signIn(state.authDto);
    BaseEntity<TokenResponseEntity> tokenResponse = BaseEntity.fromJson(
      result as Map<String, dynamic>,
      (json) => TokenResponseEntity.fromJson(json as Map<String, dynamic>),
    );
    switch (result["statusCode"]) {
      case 201:
        SessionStorage.storeAccessToken(tokenResponse.data!.accessToken);
        SessionStorage.storeRefreshToken(tokenResponse.data!.refreshToken);
    }
    return result["statusCode"];
  }
}
