import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/domain/usecases/about_me_usecase.dart';
import 'package:miniflux_app/presentation/cubits/base/base_cubit.dart';
import 'package:miniflux_app/presentation/cubits/remote_user/about_me_state.dart';

class AboutMeCubit extends BaseCubit<AboutMeState, MeModel> {
  final AboutMeUseCase _aboutMeUseCase;
  AboutMeCubit(this._aboutMeUseCase) : super(const AboutMeLoading(), null);
  final int _page = 1;

  Future<void> getAboutMe() async {
    if (isBusy) return;

    await run(() async {
      emit(const AboutMeLoading());

      (await _aboutMeUseCase.execute(null)).fold(
          (l) => {
                emit(const AboutMeFailed()),
              },
          (r) => {emit(AboutMeSuccess(me: r))});
    });
  }
}
