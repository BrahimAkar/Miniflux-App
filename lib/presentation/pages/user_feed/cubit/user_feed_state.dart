// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_feed_cubit.dart';

abstract class UserFeedState extends Equatable {
  final EntriesFeed? feed;
  final Failure? failure;

  const UserFeedState({
    this.feed,
    this.failure,
  });

  @override
  List<Object> get props => [];
}

class UserFeedLoading extends UserFeedState {
  const UserFeedLoading();
}

class UserFeedSuccess extends UserFeedState {
  const UserFeedSuccess({super.feed});
}

class UserFeedFailed extends UserFeedState {
  const UserFeedFailed({super.failure});
}
