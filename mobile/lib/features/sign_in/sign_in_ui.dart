import 'package:daily_brew/features/sign_in/sign_in_view_model.dart';
import 'package:daily_brew/shared/util/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignInUI extends ConsumerStatefulWidget {
  const SignInUI({super.key});

  @override
  ConsumerState createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<SignInUI> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signInNotifierProvider);
    final notifier = ref.read(signInNotifierProvider.notifier);
    return ShadForm(
      key: state.signUpFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ShadInputFormField(
            id: 'username',
            controller: state.userIdController,
            style: ShadTheme.of(context).textTheme.p,
            placeholderStyle: ShadTheme.of(context).textTheme.p,
            onChanged: notifier.updateUserId,
            label: Text('아이디', style: ShadTheme.of(context).textTheme.large),
            placeholder: const Text('아이디를 입력해 주세요'),
            validator: (userId) => validateUserId(userId),
          ),
          Gap(8),
          ShadInputFormField(
            id: 'password',
            obscuringCharacter: '*',
            controller: state.passwordController,
            onChanged: notifier.updatePassword,
            style: ShadTheme.of(context).textTheme.p,
            placeholderStyle: ShadTheme.of(context).textTheme.p,
            obscureText: true,
            label: Text('비밀번호', style: ShadTheme.of(context).textTheme.large),
            placeholder: const Text('비밀번호를 입력해 주세요.'),
            validator: (password) => validateUserPassword(password),
          ),
          Gap(8),
          ShadButton(
            width: double.infinity,
            height: 50,
            onPressed: () {
              if (state.signUpFormKey.currentState!.saveAndValidate()) {
                ref.read(signInNotifierProvider.notifier).signIn().then((value) {
                  switch (value) {
                    case 201:
                      context.go('/home');
                      break;
                    default:
                      print('error');
                  }
                });

                // ref.read(signInNotifierProvider.notifier).signIn();
              } else {
                print('validation failed');
              }
            },
            child: Text('로그인', style: ShadTheme.of(context).textTheme.h4.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
