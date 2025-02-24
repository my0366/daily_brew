import 'package:daily_brew/features/sign_in/sign_in_ui.dart';
import 'package:daily_brew/features/sign_up/sign_up_ui.dart';
import 'package:daily_brew/shared/types/auth_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(body: _buildPage(context, ref));
  }

  Widget _buildPage(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: ShadTabs<AuthTabType>(
          value: AuthTabType.signIn,
          tabs: [
            ShadTab(
              value: AuthTabType.signIn,
              content: ShadCard(title: const Text('로그인'), child: SignInUI()),
              child: const Text('로그인'),
            ),
            ShadTab(
              value: AuthTabType.signUp,
              content: ShadCard(title: const Text('회원가입'), child: SignUpUI()),
              child: const Text('회원가입'),
            ),
          ],
        ),
      ),
    );
  }
}
