import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'foo_screen.g.dart';

@TypedGoRoute<FooScreenRouteData>(path: '/foo')
@immutable
class FooScreenRouteData extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FooScreen();
  }
}

class FooScreen extends StatelessWidget {
  const FooScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('FooScreen'),
      ),
    );
  }
}
