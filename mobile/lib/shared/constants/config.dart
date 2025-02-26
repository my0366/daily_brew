import 'dart:io';

class Config {
  static String baseURL = "http://${Platform.isAndroid ? "10.0.2.2" : "localhost"}:3000/";
}
