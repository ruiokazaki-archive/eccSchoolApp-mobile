// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $appStartupRoute,
      $homeRoute,
      $signInRoute,
      $introductionRoute,
    ];

GoRoute get $appStartupRoute => GoRouteData.$route(
      path: '/startup',
      factory: $AppStartupRouteExtension._fromState,
    );

extension $AppStartupRouteExtension on AppStartupRoute {
  static AppStartupRoute _fromState(GoRouterState state) =>
      const AppStartupRoute();

  String get location => GoRouteData.$location(
        '/startup',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'attendance',
          factory: $AttendanceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'timetable',
          factory: $TimetableRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'calendar',
          factory: $CalendarRouteExtension._fromState,
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

extension $TimetableRouteExtension on TimetableRoute {
  static TimetableRoute _fromState(GoRouterState state) =>
      const TimetableRoute();

  String get location => GoRouteData.$location(
        '/timetable',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $CalendarRouteExtension on CalendarRoute {
  static CalendarRoute _fromState(GoRouterState state) => const CalendarRoute();

  String get location => GoRouteData.$location(
        '/calendar',
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

GoRoute get $introductionRoute => GoRouteData.$route(
      path: '/introduction',
      factory: $IntroductionRouteExtension._fromState,
    );

extension $IntroductionRouteExtension on IntroductionRoute {
  static IntroductionRoute _fromState(GoRouterState state) =>
      const IntroductionRoute();

  String get location => GoRouteData.$location(
        '/introduction',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
