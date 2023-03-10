import 'package:miniflux_app/presentation/views/home_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: HomeView, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}

final appRouter = AppRouter();
