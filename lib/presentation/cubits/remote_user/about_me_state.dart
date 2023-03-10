// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:miniflux_app/data/network/failure.dart';
import 'package:miniflux_app/domain/models/models.dart';

abstract class AboutMeState extends Equatable {
  final MeModel? me;

  final Failure? failure;
  const AboutMeState({
    this.me,
    this.failure,
  });

  @override
  List<Object?> get props => [me];
}

class AboutMeLoading extends AboutMeState {
  const AboutMeLoading();
}

class AboutMeSuccess extends AboutMeState {
  const AboutMeSuccess({super.me});
}

class AboutMeFailed extends AboutMeState {
  const AboutMeFailed({super.failure});
}
