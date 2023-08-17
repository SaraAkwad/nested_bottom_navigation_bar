import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_bottom_navigation_bar/app_router.dart';
import 'package:nested_bottom_navigation_bar/details_controller.dart';
import 'package:nested_bottom_navigation_bar/foo_screen.dart';
import 'package:nested_bottom_navigation_bar/home_screen.dart';

class HomeDetailsRouteData extends GoRouteData {
  const HomeDetailsRouteData(this.id);
  final int id;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailsScreen(id: id);
  }
}

class ProfileDetailsRouteData extends GoRouteData {
  const ProfileDetailsRouteData(this.id);
  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailsScreen(id: id);
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('DetailsScreen $id'),
            const SizedBox(height: 20),
            Consumer(builder: (context, ref, child) {
              final state = ref.watch(detailsControllerProvider);
              return Text(state);
            }),
            const SizedBox(height: 20),
            Consumer(builder: (context, ref, child) {
              return ElevatedButton(
                onPressed: () =>
                    ref.watch(detailsControllerProvider.notifier).changeValue(),
                child: const Text('Change the state'),
              );
            }),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => navigatorKey.currentState!.push(
                    MaterialPageRoute(builder: (context) => const FooScreen())),
                child: const Text('Go to Foo screen'))
          ],
        ),
      ),
    );
  }
}
