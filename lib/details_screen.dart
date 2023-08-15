import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        child: Text('DetailsScreen $id'),
      ),
    );
  }
}
