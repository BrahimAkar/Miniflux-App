import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miniflux_app/presentation/views/home_view.dart';
import 'package:miniflux_app/presentation/views/user_feed/views/user_feed.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    // AutoRoute(page: HomeView, initial: true),
    AutoRoute(page: UserFeed, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}

final appRouter = AppRouter();