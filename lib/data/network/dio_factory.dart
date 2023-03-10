import 'package:dio/dio.dart';
import 'package:miniflux_app/utils/constants/numbers.dart';
import 'package:miniflux_app/utils/constants/strings.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String authorization = "authorization";
const String defaultLanguage = "language";

class DioFactory {
  DioFactory();
  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: ConstStrings.token,
    };
    dio.options = BaseOptions(
      baseUrl: ConstStrings.baseUrl,
      headers: headers,
      receiveTimeout: const Duration(milliseconds: ConstsNumbers.apiTimeOut),
      sendTimeout: const Duration(milliseconds: ConstsNumbers.apiTimeOut),
    );

    return dio;
  }
}
