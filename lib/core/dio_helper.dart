import 'package:dio/dio.dart';

abstract class DioHelper {
  static late final Dio _dio;
  static void initializeDio() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://dummyjson.com/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getDate({required String endpoint}) async {
    return await _dio.get(endpoint);
  }
}
