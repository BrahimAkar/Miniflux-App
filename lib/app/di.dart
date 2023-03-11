import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:miniflux_app/data/data_source/remote_data_source.dart';
import 'package:miniflux_app/data/network/app_api.dart';
import 'package:miniflux_app/data/network/dio_factory.dart';
import 'package:miniflux_app/data/network/network_info.dart';
import 'package:miniflux_app/data/repositories/repository_impl.dart';
import 'package:miniflux_app/domain/repositories/repository.dart';
import 'package:miniflux_app/domain/usecases/about_me_usecase.dart';
import 'package:miniflux_app/domain/usecases/entries_feed_usecase.dart';

final instance = GetIt.instance;

Future<void> initDependencies() async {
  // network info
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));
  // dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory());
  Dio dio = await instance<DioFactory>().getDio();
  //app service client
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
  // remote data source
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance<AppServiceClient>()));

  // repository
  instance.registerLazySingleton<Repository>(
      () => RepositoryImplementation(instance(), instance()));
  // AboutMeUseCase
  instance.registerFactory<AboutMeUseCase>(() => AboutMeUseCase(instance()));
  // UserFeedUseCase
  instance.registerFactory<UserFeedUseCase>(() => UserFeedUseCase(instance()));
}
