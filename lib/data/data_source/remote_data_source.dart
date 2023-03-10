import 'package:miniflux_app/data/network/app_api.dart';
import 'package:miniflux_app/data/response/responses.dart';

abstract class RemoteDataSource {
  Future<MeResponse> login();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImpl(this._appServiceClient);
  @override
  Future<MeResponse> login() {
    return _appServiceClient.getMe();
  }
}
