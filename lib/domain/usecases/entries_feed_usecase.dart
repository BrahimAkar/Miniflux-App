import 'package:dartz/dartz.dart';
import 'package:miniflux_app/data/network/failure.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/domain/repositories/repository.dart';
import 'package:miniflux_app/domain/usecases/base_usecase.dart';

class UserFeedUseCase implements BaseUseCase<void, EntriesFeed> {
  final Repository _repository;

  UserFeedUseCase(this._repository);

  @override
  Future<Either<Failure, EntriesFeed>> execute(void input) async {
    return await _repository.getEntriesFeed();
  }
}
