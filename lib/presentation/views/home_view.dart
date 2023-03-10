import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miniflux_app/presentation/cubits/remote_user/about_me_cubit.dart';
import 'package:miniflux_app/presentation/cubits/remote_user/about_me_state.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remoteArticlesCubit = BlocProvider.of<AboutMeCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          remoteArticlesCubit.getAboutMe();
        },
        child: const Icon(Icons.refresh),
      ),
      body: BlocBuilder<AboutMeCubit, AboutMeState>(
        builder: (_, state) {
          switch (state.runtimeType) {
            case AboutMeLoading:
              return const Center(child: CupertinoActivityIndicator());
            case AboutMeFailed:
              return Center(
                  child: IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  remoteArticlesCubit.getAboutMe();
                },
              ));
            case AboutMeSuccess:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(state.me!.username),
                  Text(state.me!.language),
                  Text(state.me!.entriesPerPage.toString()),
                  Text(state.me!.showReadingTime.toString()),
                  Text(state.me!.entrySortingOrder),
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
