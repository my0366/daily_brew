import 'package:daily_brew/features/sign_up/sign_up_view_model.dart';
import 'package:daily_brew/shared/util/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignUpUI extends ConsumerStatefulWidget {
  const SignUpUI({super.key});

  @override
  ConsumerState createState() => _SignUpFeatureState();
}

class _SignUpFeatureState extends ConsumerState<SignUpUI> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<ShadFormState>();
    return ShadForm(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ShadInputFormField(
            id: 'username',
            style: ShadTheme.of(context).textTheme.p,
            placeholderStyle: ShadTheme.of(context).textTheme.p,
            label: Text('아이디', style: ShadTheme.of(context).textTheme.large),
            placeholder: const Text('아이디를 입력해 주세요'),
            validator: (userId) => validateUserId(userId),
          ),
          Gap(8),
          ShadInputFormField(
            id: 'password',
            obscuringCharacter: '*',
            style: ShadTheme.of(context).textTheme.p,
            placeholderStyle: ShadTheme.of(context).textTheme.p,
            obscureText: true,
            label: Text('비밀번호', style: ShadTheme.of(context).textTheme.large),
            placeholder: const Text('비밀번호를 입력해 주세요.'),
            validator: (password) => validateUserPassword(password),
          ),
          Gap(8),
          ShadInputFormField(
            id: 'confirmPassword',
            label: Text('비밀번호 확인', style: ShadTheme.of(context).textTheme.large.copyWith()),
            placeholder: const Text('비밀번호를 다시 입력해 주세요.'),
            validator: (confirmPassword) {
              final password = formKey.currentState!.value['password'];
              if (confirmPassword != password) {
                return '비밀번호가 일치하지 않습니다.';
              }
              return null;
            },
          ),
          Gap(8),
          ShadButton(
            width: double.infinity,
            height: 50,
            onPressed: () {
              if (formKey.currentState!.saveAndValidate()) {
                ref.read(signUpNotifierProvider.notifier).signUp().then((value) {
                  context.go('/home');
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
