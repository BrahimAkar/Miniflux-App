// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    UserFeedRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const UserFeed(),
      );
    },
    MainHomePageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const MainHomePage(),
      );
    },
    ArticlePageRoute.name: (routeData) {
      final args = routeData.argsAs<ArticlePageRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: ArticlePage(
          key: args.key,
          entryModel: args.entryModel,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          UserFeedRoute.name,
          path: '/user-feed',
        ),
        RouteConfig(
          MainHomePageRoute.name,
          path: '/',
        ),
        RouteConfig(
          ArticlePageRoute.name,
          path: '/article-page',
        ),
      ];
}

/// generated route for
/// [UserFeed]
class UserFeedRoute extends PageRouteInfo<void> {
  const UserFeedRoute()
      : super(
          UserFeedRoute.name,
          path: '/user-feed',
        );

  static const String name = 'UserFeedRoute';
}

/// generated route for
/// [MainHomePage]
class MainHomePageRoute extends PageRouteInfo<void> {
  const MainHomePageRoute()
      : super(
          MainHomePageRoute.name,
          path: '/',
        );

  static const String name = 'MainHomePageRoute';
}

/// generated route for
/// [ArticlePage]
class ArticlePageRoute extends PageRouteInfo<ArticlePageRouteArgs> {
  ArticlePageRoute({
    Key? key,
    required EntryModel entryModel,
  }) : super(
          ArticlePageRoute.name,
          path: '/article-page',
          args: ArticlePageRouteArgs(
            key: key,
            entryModel: entryModel,
          ),
        );

  static const String name = 'ArticlePageRoute';
}

class ArticlePageRouteArgs {
  const ArticlePageRouteArgs({
    this.key,
    required this.entryModel,
  });

  final Key? key;

  final EntryModel entryModel;

  @override
  String toString() {
    return 'ArticlePageRouteArgs{key: $key, entryModel: $entryModel}';
  }
}
