// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignUpState {
  AuthDto get authDto => throw _privateConstructorUsedError;
  TextEditingController get userIdController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  GlobalKey<ShadFormState> get signUpFormKey =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
    SignUpState value,
    $Res Function(SignUpState) then,
  ) = _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call({
    AuthDto authDto,
    TextEditingController userIdController,
    TextEditingController passwordController,
    GlobalKey<ShadFormState> signUpFormKey,
  });
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authDto = null,
    Object? userIdController = null,
    Object? passwordController = null,
    Object? signUpFormKey = null,
  }) {
    return _then(
      _value.copyWith(
            authDto:
                null == authDto
                    ? _value.authDto
                    : authDto // ignore: cast_nullable_to_non_nullable
                        as AuthDto,
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
            signUpFormKey:
                null == signUpFormKey
                    ? _value.signUpFormKey
                    : signUpFormKey // ignore: cast_nullable_to_non_nullable
                        as GlobalKey<ShadFormState>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
    _$SignUpStateImpl value,
    $Res Function(_$SignUpStateImpl) then,
  ) = __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AuthDto authDto,
    TextEditingController userIdController,
    TextEditingController passwordController,
    GlobalKey<ShadFormState> signUpFormKey,
  });
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
    _$SignUpStateImpl _value,
    $Res Function(_$SignUpStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authDto = null,
    Object? userIdController = null,
    Object? passwordController = null,
    Object? signUpFormKey = null,
  }) {
    return _then(
      _$SignUpStateImpl(
        authDto:
            null == authDto
                ? _value.authDto
                : authDto // ignore: cast_nullable_to_non_nullable
                    as AuthDto,
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
        signUpFormKey:
            null == signUpFormKey
                ? _value.signUpFormKey
                : signUpFormKey // ignore: cast_nullable_to_non_nullable
                    as GlobalKey<ShadFormState>,
      ),
    );
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl({
    required this.authDto,
    required this.userIdController,
    required this.passwordController,
    required this.signUpFormKey,
  });

  @override
  final AuthDto authDto;
  @override
  final TextEditingController userIdController;
  @override
  final TextEditingController passwordController;
  @override
  final GlobalKey<ShadFormState> signUpFormKey;

  @override
  String toString() {
    return 'SignUpState(authDto: $authDto, userIdController: $userIdController, passwordController: $passwordController, signUpFormKey: $signUpFormKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.authDto, authDto) || other.authDto == authDto) &&
            (identical(other.userIdController, userIdController) ||
                other.userIdController == userIdController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.signUpFormKey, signUpFormKey) ||
                other.signUpFormKey == signUpFormKey));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    authDto,
    userIdController,
    passwordController,
    signUpFormKey,
  );

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState({
    required final AuthDto authDto,
    required final TextEditingController userIdController,
    required final TextEditingController passwordController,
    required final GlobalKey<ShadFormState> signUpFormKey,
  }) = _$SignUpStateImpl;

  @override
  AuthDto get authDto;
  @override
  TextEditingController get userIdController;
  @override
  TextEditingController get passwordController;
  @override
  GlobalKey<ShadFormState> get signUpFormKey;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
