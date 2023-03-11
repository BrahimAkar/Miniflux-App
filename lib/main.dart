import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniflux_app/app/router/app_router.dart';
import 'package:miniflux_app/domain/usecases/entries_feed_usecase.dart';
import 'package:miniflux_app/presentation/themes/themes.dart';
import 'package:miniflux_app/presentation/views/user_feed/cubit/user_feed_cubit.dart';
import 'package:miniflux_app/utils/constants/strings.dart';

import 'app/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserFeedCubit(
            instance<UserFeedUseCase>(),
          )..getUserFeed(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        title: ConstStrings.appTitle,
        theme: AppThemes.darkTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.dark,
        // theme: AppTheme.light,
      ),
    );
  }
}
