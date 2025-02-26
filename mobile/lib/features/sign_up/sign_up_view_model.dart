import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:daily_brew/features/sign_in/sign_in_state.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_client.dart';
import 'package:daily_brew/shared/data/remote/repository/auth/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_view_model.g.dart';

@riverpod
class SignUpNotifier extends AutoDisposeNotifier<SignInState> {
  @override
  SignInState build() {
    return SignInState.initial();
  }

  Future<dynamic> signUp() async {
    final result = await ref.read(authRepositoryProvider).signUp(state.authDto);
    return result;
  }
}
