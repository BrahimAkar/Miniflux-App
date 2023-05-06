// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:miniflux_app/data/data_source/remote_data_source.dart';
import 'package:miniflux_app/data/mappers/mappers.dart';
import 'package:miniflux_app/data/network/error_handler.dart';
import 'package:miniflux_app/data/network/failure.dart';
import 'package:miniflux_app/data/network/network_info.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/domain/repositories/repository.dart';

class RepositoryImplementation implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo networkInfo;
  RepositoryImplementation(this.networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, MeModel>> aboutMe() async {
    if (await networkInfo.isConnected) {
      // its connected to internet, its safe to call API
      try {
        final response = await _remoteDataSource.me();
        return Right(response.toDomain());
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      // return internet connection error
      // return either left
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, EntriesFeed>> getEntriesFeed() async {
    // bool isConnected = await networkInfo.isConnected;
    // if (await networkInfo.isConnected) {
    // its connected to internet, its safe to call API
    try {
      final response = await _remoteDataSource.getEntries();
      return Right(response.toDomain());
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
    // } else {
    // return internet connection error
    // return either left
    // return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    // }
  }
}
