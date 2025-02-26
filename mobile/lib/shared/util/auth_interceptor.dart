import 'package:daily_brew/shared/data/local/session_storage.dart';

import 'package:dio/dio.dart';

class SessionInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response);
    super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] = "Bearer ${await SessionStorage.getAccessToken()}";
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    //:Todo implement 401 Error
  }
}
