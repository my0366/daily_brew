// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_goal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateGoalDto _$CreateGoalDtoFromJson(Map<String, dynamic> json) {
  return _CreateGoalDto.fromJson(json);
}

/// @nodoc
mixin _$CreateGoalDto {
  int get target => throw _privateConstructorUsedError;
  DateTime? get startAt => throw _privateConstructorUsedError;
  DateTime? get endAt => throw _privateConstructorUsedError;

  /// Serializes this CreateGoalDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGoalDtoCopyWith<CreateGoalDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoalDtoCopyWith<$Res> {
  factory $CreateGoalDtoCopyWith(
    CreateGoalDto value,
    $Res Function(CreateGoalDto) then,
  ) = _$CreateGoalDtoCopyWithImpl<$Res, CreateGoalDto>;
  @useResult
  $Res call({int target, DateTime? startAt, DateTime? endAt});
}

/// @nodoc
class _$CreateGoalDtoCopyWithImpl<$Res, $Val extends CreateGoalDto> implements $CreateGoalDtoCopyWith<$Res> {
  _$CreateGoalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? startAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(
      _value.copyWith(
        target: null == target
            ? _value.target
            : target // ignore: cast_nullable_to_non_nullable
                as int,
        startAt: freezed == startAt
            ? _value.startAt
            : startAt // ignore: cast_nullable_to_non_nullable
                as DateTime?,
        endAt: freezed == endAt
            ? _value.endAt
            : endAt // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateGoalDtoImplCopyWith<$Res> implements $CreateGoalDtoCopyWith<$Res> {
  factory _$$CreateGoalDtoImplCopyWith(
    _$CreateGoalDtoImpl value,
    $Res Function(_$CreateGoalDtoImpl) then,
  ) = __$$CreateGoalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int target, DateTime? startAt, DateTime? endAt});
}

/// @nodoc
class __$$CreateGoalDtoImplCopyWithImpl<$Res> extends _$CreateGoalDtoCopyWithImpl<$Res, _$CreateGoalDtoImpl>
    implements _$$CreateGoalDtoImplCopyWith<$Res> {
  __$$CreateGoalDtoImplCopyWithImpl(
    _$CreateGoalDtoImpl _value,
    $Res Function(_$CreateGoalDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? startAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(
      _$CreateGoalDtoImpl(
        target: null == target
            ? _value.target
            : target // ignore: cast_nullable_to_non_nullable
                as int,
        startAt: freezed == startAt
            ? _value.startAt
            : startAt // ignore: cast_nullable_to_non_nullable
                as DateTime?,
        endAt: freezed == endAt
            ? _value.endAt
            : endAt // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGoalDtoImpl implements _CreateGoalDto {
  const _$CreateGoalDtoImpl({
    this.target = 0,
    this.startAt = null,
    this.endAt = null,
  });

  factory _$CreateGoalDtoImpl.fromJson(Map<String, dynamic> json) => _$$CreateGoalDtoImplFromJson(json);

  @override
  @JsonKey()
  final int target;
  @override
  @JsonKey()
  final DateTime? startAt;
  @override
  @JsonKey()
  final DateTime? endAt;

  @override
  String toString() {
    return 'CreateGoalDto(target: $target, startAt: $startAt, endAt: $endAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoalDtoImpl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, startAt, endAt);

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoalDtoImplCopyWith<_$CreateGoalDtoImpl> get copyWith =>
      __$$CreateGoalDtoImplCopyWithImpl<_$CreateGoalDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGoalDtoImplToJson(this);
  }
}

abstract class _CreateGoalDto implements CreateGoalDto {
  const factory _CreateGoalDto({
    final int target,
    final DateTime? startAt,
    final DateTime? endAt,
  }) = _$CreateGoalDtoImpl;

  factory _CreateGoalDto.fromJson(Map<String, dynamic> json) = _$CreateGoalDtoImpl.fromJson;

  @override
  int get target;
  @override
  DateTime? get startAt;
  @override
  DateTime? get endAt;

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGoalDtoImplCopyWith<_$CreateGoalDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
