class AuthDto {
  final String userId;
  final String password;

  AuthDto({
    required this.userId,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'password': password,
    };
  }
}
