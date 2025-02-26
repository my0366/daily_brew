import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SessionStorage {
  static final _storage = FlutterSecureStorage();

  static Future<void> storeAccessToken(String accessToken) async {
    await _storage.write(key: 'accessToken', value: accessToken);
  }

  static Future<void> storeRefreshToken(String refreshToken) async {
    await _storage.write(key: 'refreshToken', value: refreshToken);
  }

  static Future<String?> getAccessToken() async {
    return await _storage.read(key: 'accessToken');
  }

  static Future<String?> getRefreshToken() async {
    return await _storage.read(key: 'refreshToken');
  }
}
