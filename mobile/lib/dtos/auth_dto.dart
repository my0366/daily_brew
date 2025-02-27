import 'package:json_annotation/json_annotation.dart';

part 'auth_dto.g.dart';

@JsonSerializable()
class AuthDto {
  String userId;
  String password;

  AuthDto({required this.userId, required this.password});

  factory AuthDto.fromJson(Map<String, dynamic> json) => _$AuthDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDtoToJson(this);
}
