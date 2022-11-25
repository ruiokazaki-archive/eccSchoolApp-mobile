import 'package:ecc_school_app_mobile/views/screens/home_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/settings_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

final GoRouter goRouter = GoRouter(
  routes: $appRoutes,
);

@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<SettingsRoute>(path: 'settings'),
])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context) => const SettingsScreen();
}

@TypedGoRoute<SigninRoute>(
  path: '/signin',
)
class SigninRoute extends GoRouteData {
  const SigninRoute();

  @override
  Widget build(BuildContext context) => const SigninScreen();
}
