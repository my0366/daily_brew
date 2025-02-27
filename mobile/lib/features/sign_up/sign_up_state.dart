import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required AuthDto authDto,
    required TextEditingController userIdController,
    required TextEditingController passwordController,
    required GlobalKey<ShadFormState> signUpFormKey,
  }) = _SignUpState;

  factory SignUpState.initial() {
    return SignUpState(
      authDto: AuthDto(userId: '', password: ''),
      signUpFormKey: GlobalKey<ShadFormState>(),
      userIdController: TextEditingController(),
      passwordController: TextEditingController(),
    );
  }
}
