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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ConstStrings.appTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UserFeedCubit>().getUserFeed();
        },
        child: const Icon(Icons.refresh),
      ),
      body: BlocBuilder<UserFeedCubit, UserFeedState>(
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
                      (context, index) => SingleEntry(
                        entry: state.feed!.entries[index],
                        index: index,
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
    );
  }
}
