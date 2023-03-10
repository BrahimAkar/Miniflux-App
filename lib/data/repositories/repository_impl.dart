// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:miniflux_app/data/data_source/remote_data_source.dart';
import 'package:miniflux_app/data/network/failure.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/domain/repositories/repository.dart';

class RepositoryImplementation implements Repository {
  final RemoteDataSource remoteDataSource;
  RepositoryImplementation({required this.remoteDataSource});
  @override
  Future<Either<Failure, MeModel>> aboutMe() {}
}
