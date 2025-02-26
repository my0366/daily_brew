import 'package:daily_brew/shared/constants/config.dart';
import 'package:daily_brew/shared/util/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  Dio dio = Dio();
  final options = BaseOptions(
    baseUrl: Config.baseURL,
    responseType: ResponseType.json,
    headers: {"Content-Type": "application/json"},
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );
  dio.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 90,
  ));
  dio.interceptors.add(SessionInterceptor());
  return dio;
}
