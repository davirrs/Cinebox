import 'package:cinebox/config/env.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'backend_rest_client.g.dart';

@Riverpod(keepAlive: true)

Dio backendRestClient(Ref ref){
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.backendBaseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  dio.options.headers['Content-Type'] = 'aplication/json';
  dio.interceptors.addAll([
    LogInterceptor(
      request: true,
      requestHeader: true, 
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  ]);
  

  return dio;
}