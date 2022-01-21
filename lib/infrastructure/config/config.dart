import 'package:dio/dio.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppHTTPClient {
  static Dio? _dio;
  static void setApiToken({String? token}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? _token = preferences.getString(apiToken);
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      responseType: ResponseType.plain,
      connectTimeout: 30000,
      receiveTimeout: 30000,
      headers: <String, dynamic>{
        'x-app-verification-key': _token ?? token,
        'Accept': 'application/json'
      },
    );

    _dio = Dio(options);
  }

  static Dio? get client => _dio ??= Dio();
}
