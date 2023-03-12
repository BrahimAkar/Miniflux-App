import 'package:dio/dio.dart';
import 'package:miniflux_app/data/response/responses.dart';
import 'package:miniflux_app/utils/constants/strings.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ConstStrings.baseUrlApi)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET("/me")
  Future<MeResponse> getMe();
  @GET("/entries?direction=desc&status=unread")
  Future<EntriesResponse> getEntries();
}
