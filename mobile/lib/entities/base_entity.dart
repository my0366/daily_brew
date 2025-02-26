import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';

part 'base_entity.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseEntity<T> with _$BaseEntity<T> {
  const factory BaseEntity({
    required int statusCode,
    required String message,
    required T data,
  }) = _BaseEntity<T>;

  factory BaseEntity.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseEntityFromJson(json, fromJsonT);
}
