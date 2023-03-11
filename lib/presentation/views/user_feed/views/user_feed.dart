import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miniflux_app/presentation/views/user_feed/cubit/user_feed_cubit.dart';
import 'package:miniflux_app/presentation/views/user_feed/views/widgets/single_entry.dart';
import 'package:miniflux_app/utils/constants/strings.dart';

class UserFeed extends HookWidget {
  const UserFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Latest News',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).textTheme.labelSmall!.color,
                ),
          ),
        ),
        Expanded(
          child: BlocBuilder<UserFeedCubit, UserFeedState>(
            builder: (_, state) {
              switch (state.runtimeType) {
                case UserFeedLoading:
                  return const Center(child: CupertinoActivityIndicator());
                case UserFeedFailed:
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.refresh),
                        onPressed: () {
                          context.read<UserFeedCubit>().getUserFeed();
                        },
                      ),
                      Text(state.failure?.message ?? ConstStrings.emptyString),
                    ],
                  );
                case UserFeedSuccess:
                  return CustomScrollView(
                    // controller: scrollController,
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Column(
                            children: [
                              SingleEntry(
                                entry: state.feed!.entries[index],
                                index: index,
                              ),
                              // This divider will not appears on last index
                              if (index != (state.feed!.entries.length - 1))
                                const Divider(),
                            ],
                          ),
                          childCount: state.feed?.entries.length,
                        ),
                      ),
                    ],
                  );
                default:
                  return const SizedBox();
              }
            },
          ),
        ),
      ],
    );
  }
}
