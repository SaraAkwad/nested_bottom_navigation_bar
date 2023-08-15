// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      restorationScopeId: AppShellRouteData.$restorationScopeId,
      navigatorContainerBuilder: AppShellRouteData.$navigatorContainerBuilder,
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $HomeScreenRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'details/:id',
                  factory: $HomeDetailsRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ProfileBranchData.$navigatorKey,
          restorationScopeId: ProfileBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              factory: $ProfileScreenRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'details/:id',
                  factory: $ProfileDetailsRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HomeDetailsRouteDataExtension on HomeDetailsRouteData {
  static HomeDetailsRouteData _fromState(GoRouterState state) =>
      HomeDetailsRouteData(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/details/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileScreenRouteExtension on ProfileScreenRoute {
  static ProfileScreenRoute _fromState(GoRouterState state) =>
      ProfileScreenRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileDetailsRouteDataExtension on ProfileDetailsRouteData {
  static ProfileDetailsRouteData _fromState(GoRouterState state) =>
      ProfileDetailsRouteData(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/profile/details/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
