// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BaseEntity<T> _$BaseEntityFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _BaseEntity<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseEntity<T> {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  /// Serializes this BaseEntity to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseEntityCopyWith<T, BaseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEntityCopyWith<T, $Res> {
  factory $BaseEntityCopyWith(
    BaseEntity<T> value,
    $Res Function(BaseEntity<T>) then,
  ) = _$BaseEntityCopyWithImpl<T, $Res, BaseEntity<T>>;
  @useResult
  $Res call({int statusCode, String message, T data});
}

/// @nodoc
class _$BaseEntityCopyWithImpl<T, $Res, $Val extends BaseEntity<T>>
    implements $BaseEntityCopyWith<T, $Res> {
  _$BaseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(
      _value.copyWith(
            statusCode:
                null == statusCode
                    ? _value.statusCode
                    : statusCode // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as T,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BaseEntityImplCopyWith<T, $Res>
    implements $BaseEntityCopyWith<T, $Res> {
  factory _$$BaseEntityImplCopyWith(
    _$BaseEntityImpl<T> value,
    $Res Function(_$BaseEntityImpl<T>) then,
  ) = __$$BaseEntityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int statusCode, String message, T data});
}

/// @nodoc
class __$$BaseEntityImplCopyWithImpl<T, $Res>
    extends _$BaseEntityCopyWithImpl<T, $Res, _$BaseEntityImpl<T>>
    implements _$$BaseEntityImplCopyWith<T, $Res> {
  __$$BaseEntityImplCopyWithImpl(
    _$BaseEntityImpl<T> _value,
    $Res Function(_$BaseEntityImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(
      _$BaseEntityImpl<T>(
        statusCode:
            null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as T,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseEntityImpl<T> implements _BaseEntity<T> {
  const _$BaseEntityImpl({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory _$BaseEntityImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$BaseEntityImplFromJson(json, fromJsonT);

  @override
  final int statusCode;
  @override
  final String message;
  @override
  final T data;

  @override
  String toString() {
    return 'BaseEntity<$T>(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEntityImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    statusCode,
    message,
    const DeepCollectionEquality().hash(data),
  );

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseEntityImplCopyWith<T, _$BaseEntityImpl<T>> get copyWith =>
      __$$BaseEntityImplCopyWithImpl<T, _$BaseEntityImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseEntityImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseEntity<T> implements BaseEntity<T> {
  const factory _BaseEntity({
    required final int statusCode,
    required final String message,
    required final T data,
  }) = _$BaseEntityImpl<T>;

  factory _BaseEntity.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$BaseEntityImpl<T>.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  T get data;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseEntityImplCopyWith<T, _$BaseEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
