import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:miniflux_app/env/env.dart';
import 'package:miniflux_app/utils/constants/numbers.dart';
import 'package:miniflux_app/utils/constants/strings.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String authorization = "X-Auth-Token";
const String defaultLanguage = "language";

class DioFactory {
  DioFactory();
  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: Env.MINIFLUX_KEY
    };
    dio.options = BaseOptions(
      baseUrl: ConstStrings.baseUrlApi,
      headers: headers,
      receiveTimeout: const Duration(milliseconds: ConstsNumbers.apiTimeOut),
      sendTimeout: const Duration(milliseconds: ConstsNumbers.apiTimeOut),
    );
    if (!kReleaseMode) {
      // its debug mode so print app logs
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }
    return dio;
  }
}
