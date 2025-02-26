import 'package:daily_brew/dtos/auth_dto.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required AuthDto authDto,
    required TextEditingController userIdController,
    required TextEditingController passwordController,
  }) = _SignInState;

  factory SignInState.initial() {
    return SignInState(
      authDto: AuthDto(
        userId: '',
        password: '',
      ),
      userIdController: TextEditingController(),
      passwordController: TextEditingController(),
    );
  }
}
