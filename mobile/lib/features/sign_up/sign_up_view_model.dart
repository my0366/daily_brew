import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/features/sign_in/sign_in_state.dart';
import 'package:daily_brew/features/sign_up/sign_up_state.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_client.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_view_model.g.dart';

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  @override
  SignUpState build() {
    return SignUpState.initial();
  }

  void updateUserId(String userId) {
    state = state.copyWith(authDto: state.authDto..userId = userId);
  }

  void updatePassword(String password) {
    state = state.copyWith(authDto: state.authDto..password = password);
  }

  Future<dynamic> signUp() async {
    final result = await ref.read(authRepositoryProvider).signUp(state.authDto);
    return result;
  }
}
