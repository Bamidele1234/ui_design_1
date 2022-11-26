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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:ui_design_1/screens/ItemPage.dart' as _i2;
import 'package:ui_design_1/screens/LandingPage.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LandingPageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
      );
    },
    ItemPageRoute.name: (routeData) {
      final args = routeData.argsAs<ItemPageRouteArgs>();
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.ItemPage(
          key: args.key,
          itemData: args.itemData,
        ),
        transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          LandingPageRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          ItemPageRoute.name,
          path: '/itemPage',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingPageRoute extends _i3.PageRouteInfo<void> {
  const LandingPageRoute()
      : super(
          LandingPageRoute.name,
          path: '/',
        );

  static const String name = 'LandingPageRoute';
}

/// generated route for
/// [_i2.ItemPage]
class ItemPageRoute extends _i3.PageRouteInfo<ItemPageRouteArgs> {
  ItemPageRoute({
    _i4.Key? key,
    required dynamic itemData,
  }) : super(
          ItemPageRoute.name,
          path: '/itemPage',
          args: ItemPageRouteArgs(
            key: key,
            itemData: itemData,
          ),
        );

  static const String name = 'ItemPageRoute';
}

class ItemPageRouteArgs {
  const ItemPageRouteArgs({
    this.key,
    required this.itemData,
  });

  final _i4.Key? key;

  final dynamic itemData;

  @override
  String toString() {
    return 'ItemPageRouteArgs{key: $key, itemData: $itemData}';
  }
}
