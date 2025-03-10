// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignInState {
  AuthDto get authDto => throw _privateConstructorUsedError;
  GlobalKey<ShadFormState> get signUpFormKey =>
      throw _privateConstructorUsedError;
  TextEditingController get userIdController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
    SignInState value,
    $Res Function(SignInState) then,
  ) = _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({
    AuthDto authDto,
    GlobalKey<ShadFormState> signUpFormKey,
    TextEditingController userIdController,
    TextEditingController passwordController,
  });
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authDto = null,
    Object? signUpFormKey = null,
    Object? userIdController = null,
    Object? passwordController = null,
  }) {
    return _then(
      _value.copyWith(
            authDto:
                null == authDto
                    ? _value.authDto
                    : authDto // ignore: cast_nullable_to_non_nullable
                        as AuthDto,
            signUpFormKey:
                null == signUpFormKey
                    ? _value.signUpFormKey
                    : signUpFormKey // ignore: cast_nullable_to_non_nullable
                        as GlobalKey<ShadFormState>,
            userIdController:
                null == userIdController
                    ? _value.userIdController
                    : userIdController // ignore: cast_nullable_to_non_nullable
                        as TextEditingController,
            passwordController:
                null == passwordController
                    ? _value.passwordController
                    : passwordController // ignore: cast_nullable_to_non_nullable
                        as TextEditingController,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
    _$SignInStateImpl value,
    $Res Function(_$SignInStateImpl) then,
  ) = __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AuthDto authDto,
    GlobalKey<ShadFormState> signUpFormKey,
    TextEditingController userIdController,
    TextEditingController passwordController,
  });
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
    _$SignInStateImpl _value,
    $Res Function(_$SignInStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authDto = null,
    Object? signUpFormKey = null,
    Object? userIdController = null,
    Object? passwordController = null,
  }) {
    return _then(
      _$SignInStateImpl(
        authDto:
            null == authDto
                ? _value.authDto
                : authDto // ignore: cast_nullable_to_non_nullable
                    as AuthDto,
        signUpFormKey:
            null == signUpFormKey
                ? _value.signUpFormKey
                : signUpFormKey // ignore: cast_nullable_to_non_nullable
                    as GlobalKey<ShadFormState>,
        userIdController:
            null == userIdController
                ? _value.userIdController
                : userIdController // ignore: cast_nullable_to_non_nullable
                    as TextEditingController,
        passwordController:
            null == passwordController
                ? _value.passwordController
                : passwordController // ignore: cast_nullable_to_non_nullable
                    as TextEditingController,
      ),
    );
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl({
    required this.authDto,
    required this.signUpFormKey,
    required this.userIdController,
    required this.passwordController,
  });

  @override
  final AuthDto authDto;
  @override
  final GlobalKey<ShadFormState> signUpFormKey;
  @override
  final TextEditingController userIdController;
  @override
  final TextEditingController passwordController;

  @override
  String toString() {
    return 'SignInState(authDto: $authDto, signUpFormKey: $signUpFormKey, userIdController: $userIdController, passwordController: $passwordController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.authDto, authDto) || other.authDto == authDto) &&
            (identical(other.signUpFormKey, signUpFormKey) ||
                other.signUpFormKey == signUpFormKey) &&
            (identical(other.userIdController, userIdController) ||
                other.userIdController == userIdController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    authDto,
    signUpFormKey,
    userIdController,
    passwordController,
  );

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState({
    required final AuthDto authDto,
    required final GlobalKey<ShadFormState> signUpFormKey,
    required final TextEditingController userIdController,
    required final TextEditingController passwordController,
  }) = _$SignInStateImpl;

  @override
  AuthDto get authDto;
  @override
  GlobalKey<ShadFormState> get signUpFormKey;
  @override
  TextEditingController get userIdController;
  @override
  TextEditingController get passwordController;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
