import 'package:ecc_school_app_mobile/views/screens/home_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/attendance_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/news_detail_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/news_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/sign_in_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/timetable_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

final GoRouter goRouter = GoRouter(
  routes: $appRoutes,
);

// NOTE: 認証済みユーザーのみがアクセスできるroutes
@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<AttendanceRoute>(path: 'attendance'),
  TypedGoRoute<TimetableRoute>(path: 'timetable'),
  TypedGoRoute<NewsRoute>(
    path: 'news',
    routes: [
      TypedGoRoute<NewsDetailRoute>(path: ':newsId'),
    ],
  ),
])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

class AttendanceRoute extends GoRouteData {
  const AttendanceRoute();

  @override
  Widget build(BuildContext context) => const AttendanceScreen();
}

class TimetableRoute extends GoRouteData {
  const TimetableRoute();

  @override
  Widget build(BuildContext context) => const TimetableScreen();
}

class NewsRoute extends GoRouteData {
  const NewsRoute();

  @override
  Widget build(BuildContext context) => const NewsScreen();
}

class NewsDetailRoute extends GoRouteData {
  const NewsDetailRoute(
    this.newsId,
  );

  final String newsId;

  @override
  Widget build(BuildContext context) => NewsDetailScreen(newsId);
}

// NOTE: 認証されていないユーザーのみがアクセスできるroutes
@TypedGoRoute<SignInRoute>(
  path: '/signIn',
)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context) => const SignInScreen();
}
