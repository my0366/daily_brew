import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required AuthDto authDto,
    required GlobalKey<ShadFormState> signUpFormKey,
    required TextEditingController userIdController,
    required TextEditingController passwordController,
  }) = _SignInState;

  factory SignInState.initial() {
    return SignInState(
      signUpFormKey: GlobalKey<ShadFormState>(),
      authDto: AuthDto(userId: '', password: ''),
      userIdController: TextEditingController(),
      passwordController: TextEditingController(),
    );
  }
}
