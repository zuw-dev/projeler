// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:navigate_router/other_page.dart' as _i1;
import 'package:navigate_router/screen/screen_a.dart' as _i2;
import 'package:navigate_router/screen/screen_b.dart' as _i3;
import 'package:navigate_router/screen/screen_c.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    OtherRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OtherPage(),
      );
    },
    RouteA.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ScreenA(),
      );
    },
    RouteB.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ScreenB(),
      );
    },
    RouteC.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ScreenC(),
      );
    },
  };
}

/// generated route for
/// [_i1.OtherPage]
class OtherRoute extends _i5.PageRouteInfo<void> {
  const OtherRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OtherRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtherRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ScreenA]
class RouteA extends _i5.PageRouteInfo<void> {
  const RouteA({List<_i5.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ScreenB]
class RouteB extends _i5.PageRouteInfo<void> {
  const RouteB({List<_i5.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ScreenC]
class RouteC extends _i5.PageRouteInfo<void> {
  const RouteC({List<_i5.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
