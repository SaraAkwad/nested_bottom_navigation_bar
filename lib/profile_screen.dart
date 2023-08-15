import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_bottom_navigation_bar/home_screen.dart';

import 'details_screen.dart';

@immutable
class ProfileScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => const ProfileDetailsRouteData(2).go(context),
          child: const Text('Go to Details Screen'),
        ),
      ),
    );
  }
}