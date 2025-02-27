// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_goal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SetGoalState {
  CreateGoalDto get createGoalDto => throw _privateConstructorUsedError;

  /// Create a copy of SetGoalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetGoalStateCopyWith<SetGoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetGoalStateCopyWith<$Res> {
  factory $SetGoalStateCopyWith(
    SetGoalState value,
    $Res Function(SetGoalState) then,
  ) = _$SetGoalStateCopyWithImpl<$Res, SetGoalState>;
  @useResult
  $Res call({CreateGoalDto createGoalDto});
}

/// @nodoc
class _$SetGoalStateCopyWithImpl<$Res, $Val extends SetGoalState>
    implements $SetGoalStateCopyWith<$Res> {
  _$SetGoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetGoalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? createGoalDto = null}) {
    return _then(
      _value.copyWith(
            createGoalDto:
                null == createGoalDto
                    ? _value.createGoalDto
                    : createGoalDto // ignore: cast_nullable_to_non_nullable
                        as CreateGoalDto,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SetGoalStateImplCopyWith<$Res>
    implements $SetGoalStateCopyWith<$Res> {
  factory _$$SetGoalStateImplCopyWith(
    _$SetGoalStateImpl value,
    $Res Function(_$SetGoalStateImpl) then,
  ) = __$$SetGoalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateGoalDto createGoalDto});
}

/// @nodoc
class __$$SetGoalStateImplCopyWithImpl<$Res>
    extends _$SetGoalStateCopyWithImpl<$Res, _$SetGoalStateImpl>
    implements _$$SetGoalStateImplCopyWith<$Res> {
  __$$SetGoalStateImplCopyWithImpl(
    _$SetGoalStateImpl _value,
    $Res Function(_$SetGoalStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SetGoalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? createGoalDto = null}) {
    return _then(
      _$SetGoalStateImpl(
        createGoalDto:
            null == createGoalDto
                ? _value.createGoalDto
                : createGoalDto // ignore: cast_nullable_to_non_nullable
                    as CreateGoalDto,
      ),
    );
  }
}

/// @nodoc

class _$SetGoalStateImpl implements _SetGoalState {
  const _$SetGoalStateImpl({required this.createGoalDto});

  @override
  final CreateGoalDto createGoalDto;

  @override
  String toString() {
    return 'SetGoalState(createGoalDto: $createGoalDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetGoalStateImpl &&
            (identical(other.createGoalDto, createGoalDto) ||
                other.createGoalDto == createGoalDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createGoalDto);

  /// Create a copy of SetGoalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetGoalStateImplCopyWith<_$SetGoalStateImpl> get copyWith =>
      __$$SetGoalStateImplCopyWithImpl<_$SetGoalStateImpl>(this, _$identity);
}

abstract class _SetGoalState implements SetGoalState {
  const factory _SetGoalState({required final CreateGoalDto createGoalDto}) =
      _$SetGoalStateImpl;

  @override
  CreateGoalDto get createGoalDto;

  /// Create a copy of SetGoalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetGoalStateImplCopyWith<_$SetGoalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
