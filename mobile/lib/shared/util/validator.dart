String? validateUserId(String? userId, {bool isSignIn = false}) {
  if (userId == null || userId.isEmpty) {
    return '이메일을 입력해주세요.';
  }
  if (isSignIn) {
    return null;
  }
  if (!RegExp(r'^[a-zA-Z0-9]{2,}$').hasMatch(userId)) {
    return '영문 또는 숫자로 2자리 이상 입력해 주세요.';
  }
  return null;
}

String? validateUserPassword(String? userPassword, {bool isSignIn = false}) {
  if (userPassword == null || userPassword.isEmpty) {
    return '비밀번호를 입력해주세요.';
  }
  if (isSignIn) {
    return null;
  }

  if (userPassword.length < 6) {
    return '비밀번호는 6자 이상이어야 합니다.';
  }
  return null;
}
