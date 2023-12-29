import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

const String appJson = 'application/json';

const String contentType = 'Content-Type';
const String accept = 'Accept';
const String acceptAll = '*/*';
const String authorization = 'Authorization';
const String contentTypeValue = 'application/json';
const String acceptValue = 'application/json';

const String baseUrl = 'https://gfoura.smartidea.tech/api/';

class DioFactory {
  const DioFactory();

  Future<Dio> get dio async {
    final dio = Dio();

    final Map<String, dynamic> headers = {
      contentType: appJson,
      accept: acceptAll,
    };

    dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
    );

    if (!kReleaseMode) {
      dio.interceptors.add(LogInterceptor(
        responseBody: true,
        requestBody: true,
      ));
    }

    return dio;
  }
}
