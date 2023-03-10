import 'package:dartz/dartz.dart';
import 'package:miniflux_app/data/network/failure.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/domain/repositories/repository.dart';
import 'package:miniflux_app/domain/usecases/base_usecase.dart';

class AboutMeUseCase implements BaseUseCase<void, MeModel> {
  final Repository _repository;

  AboutMeUseCase(this._repository);

  @override
  Future<Either<Failure, MeModel>> execute(void input) async {
    return await _repository.aboutMe();
  }
}
