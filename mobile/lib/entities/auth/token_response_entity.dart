import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_entity.freezed.dart';

part 'token_response_entity.g.dart';

@freezed
class TokenResponseEntity with _$TokenResponseEntity {
  const factory TokenResponseEntity({required String accessToken, required String refreshToken}) = _TokenResponseEntity;

  factory TokenResponseEntity.fromJson(Map<String, dynamic> json) => _$TokenResponseEntityFromJson(json);
}
