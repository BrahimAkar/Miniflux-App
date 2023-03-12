import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/presentation/pages/article_page/views/article_page.dart';
import 'package:miniflux_app/presentation/pages/main_home_page/views/main_home_page.dart';
import 'package:miniflux_app/presentation/pages/user_feed/views/user_feed.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: UserFeed),
    AutoRoute(page: MainHomePage, initial: true),
    AutoRoute(page: ArticlePage),
  ],
)
class AppRouter extends _$AppRouter {}

final appRouter = AppRouter();
