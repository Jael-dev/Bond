// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:bond_mobile/src/screens/screens.dart' as _i1;
import 'package:flutter/material.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Home(),
      );
    },
    HomeSub.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeSub(),
      );
    },
    Messages.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Messages(),
      );
    },
    Songs.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Songs(),
      );
    },
    Contacts.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Contacts(),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          Home.name,
          path: '/',
          children: [
            _i2.RouteConfig(
              HomeSub.name,
              path: 'home_sub',
              parent: Home.name,
            ),
            _i2.RouteConfig(
              Messages.name,
              path: 'message',
              parent: Home.name,
            ),
            _i2.RouteConfig(
              Songs.name,
              path: 'songs',
              parent: Home.name,
            ),
            _i2.RouteConfig(
              Contacts.name,
              path: 'contacts',
              parent: Home.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i2.PageRouteInfo<void> {
  const Home({List<_i2.PageRouteInfo>? children})
      : super(
          Home.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i1.HomeSub]
class HomeSub extends _i2.PageRouteInfo<void> {
  const HomeSub()
      : super(
          HomeSub.name,
          path: 'home_sub',
        );

  static const String name = 'HomeSub';
}

/// generated route for
/// [_i1.Messages]
class Messages extends _i2.PageRouteInfo<void> {
  const Messages()
      : super(
          Messages.name,
          path: 'message',
        );

  static const String name = 'Messages';
}

/// generated route for
/// [_i1.Songs]
class Songs extends _i2.PageRouteInfo<void> {
  const Songs()
      : super(
          Songs.name,
          path: 'songs',
        );

  static const String name = 'Songs';
}

/// generated route for
/// [_i1.Contacts]
class Contacts extends _i2.PageRouteInfo<void> {
  const Contacts()
      : super(
          Contacts.name,
          path: 'contacts',
        );

  static const String name = 'Contacts';
}
