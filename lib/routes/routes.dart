import 'package:ecc_app_school_mobile/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<SettingsRoute>(path: 'settings'),
])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

@TypedGoRoute<DetailRoute>(
  path: '/details',
)
class DetailRoute extends GoRouteData {
  const DetailRoute();

  @override
  Widget build(BuildContext context) => const DetailsScreen();
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context) => const SettingsScreen();
}
