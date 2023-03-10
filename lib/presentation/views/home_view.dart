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
      body: BlocBuilder<AboutMeCubit, AboutMeState>(
        builder: (_, state) {
          switch (state.runtimeType) {
            case AboutMeLoading:
              return const Center(child: CupertinoActivityIndicator());
            case AboutMeFailed:
              return const Center(child: Icon(Icons.refresh));
            case AboutMeSuccess:
              return Text(state.me!.username);
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
