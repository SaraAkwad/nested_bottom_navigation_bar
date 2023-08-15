import 'package:go_router/go_router.dart';
import 'package:nested_bottom_navigation_bar/home_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(routes: $appRoutes, initialLocation: '/');
}