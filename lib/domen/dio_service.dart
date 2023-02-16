import 'package:dio/dio.dart';

class DioService {
  Dio client({String? token, bool isRouting = false}) {
    return Dio(BaseOptions(
      baseUrl: "https://api.foodyman.org",
      headers: {
        'Accept':
        'application/json, application/geo+json, application/gpx+xml, img/png; charset=utf-8',
        'Content-type': 'application/json'
      },
    ))
      ..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          requestHeader: true,
          responseHeader: false));
  }
}