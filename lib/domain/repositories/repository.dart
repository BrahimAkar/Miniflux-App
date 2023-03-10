import 'package:dartz/dartz.dart';
import 'package:miniflux_app/data/network/failure.dart';
import 'package:miniflux_app/domain/models/models.dart';

abstract class Repository {
  Future<Either<Failure, MeModel>> aboutMe();
}
