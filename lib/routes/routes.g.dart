// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
      $signInRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'attendance',
          factory: $AttendanceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'news',
          factory: $NewsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':newsId',
              factory: $NewsDetailRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $AttendanceRouteExtension on AttendanceRoute {
  static AttendanceRoute _fromState(GoRouterState state) =>
      const AttendanceRoute();

  String get location => GoRouteData.$location(
        '/attendance',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $NewsRouteExtension on NewsRoute {
  static NewsRoute _fromState(GoRouterState state) => const NewsRoute();

  String get location => GoRouteData.$location(
        '/news',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $NewsDetailRouteExtension on NewsDetailRoute {
  static NewsDetailRoute _fromState(GoRouterState state) => NewsDetailRoute(
        state.params['newsId']!,
      );

  String get location => GoRouteData.$location(
        '/news/${Uri.encodeComponent(newsId)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $signInRoute => GoRouteData.$route(
      path: '/signIn',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/signIn',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
