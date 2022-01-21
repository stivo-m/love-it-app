import 'package:dio/dio.dart';
import 'package:love_it_app/domain/objects/strings.dart';

class AppHTTPClient {
  static Dio? dio;
  AppHTTPClient({String? token}) {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      responseType: ResponseType.plain,
      connectTimeout: 30000,
      receiveTimeout: 30000,
      headers: <String, dynamic>{
        'x-app-verification-key': token,
        'Accept': 'application/json'
      },
    );

    dio = Dio(options);
  }

  static Dio? get client => dio ??= Dio();
}
