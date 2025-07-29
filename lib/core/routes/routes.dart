import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vitech_blockchain/presentation/home/screen/home.dart';

class RouteArguments<T> {
  final T? item;
  final VoidCallback? callback;

  RouteArguments({this.item, this.callback});
}

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      name: Routes.homeName,
      builder: (context, state) => const Home(),
    ),
  ],
);

class Routes {
  static const String home = '/onboarding';
  static const String homeName = 'onboarding';
}
