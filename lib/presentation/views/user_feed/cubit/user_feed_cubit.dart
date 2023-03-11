import 'package:equatable/equatable.dart';
import 'package:miniflux_app/data/network/failure.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/domain/usecases/entries_feed_usecase.dart';
import 'package:miniflux_app/presentation/cubits/base/base_cubit.dart';

part 'user_feed_state.dart';

class UserFeedCubit extends BaseCubit<UserFeedState, EntriesFeed> {
  final UserFeedUseCase _userFeedUseCase;
  UserFeedCubit(this._userFeedUseCase) : super(const UserFeedLoading(), null);

  Future<void> getUserFeed() async {
    if (isBusy) return;

    await run(() async {
      emit(const UserFeedLoading());

      (await _userFeedUseCase.execute(null)).fold(
          (l) => {
                emit(const UserFeedFailed()),
              },
          (r) => {emit(UserFeedSuccess(feed: r))});
    });
  }
}
