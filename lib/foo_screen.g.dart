// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foo_screen.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $fooScreenRouteData,
    ];

RouteBase get $fooScreenRouteData => GoRouteData.$route(
      path: '/foo',
      factory: $FooScreenRouteDataExtension._fromState,
    );

extension $FooScreenRouteDataExtension on FooScreenRouteData {
  static FooScreenRouteData _fromState(GoRouterState state) =>
      FooScreenRouteData();

  String get location => GoRouteData.$location(
        '/foo',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
