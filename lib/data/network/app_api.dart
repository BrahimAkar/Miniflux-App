import 'package:dio/dio.dart';
import 'package:miniflux_app/app/constants.dart';
import 'package:miniflux_app/data/response/responses.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET("/home")
  Future<MeResponse> getMe();
}
