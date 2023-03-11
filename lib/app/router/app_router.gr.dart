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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          UserFeedRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [UserFeed]
class UserFeedRoute extends PageRouteInfo<void> {
  const UserFeedRoute()
      : super(
          UserFeedRoute.name,
          path: '/',
        );

  static const String name = 'UserFeedRoute';
}
