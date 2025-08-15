import 'package:cinebox/config/env.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tmbd_rest_client.g.dart';

@Riverpod(keepAlive: true)

Dio tmbdRestClient(Ref ref){
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ),
  );

  dio.options.headers['Content-Type'] = 'aplication/json';
  dio.options.headers['Autorization'] = 'Bearer ${Env.themoviedbApiKey}';
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