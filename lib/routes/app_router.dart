import 'package:ecc_school_app_mobile/views/screens/attendance_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/calendar_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/home_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/introduction_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/links.dart';
import 'package:ecc_school_app_mobile/views/screens/news_detail_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/news_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/sign_in_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/timetable_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

@immutable
class AppRouter {
  const AppRouter._();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static const String initialRoute = Routes.HomeRoute;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.IntroductionRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const IntroductionScreen(),
          settings: const RouteSettings(name: Routes.IntroductionRoute),
        );
      case Routes.SignInRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const SignInScreen(),
          settings: const RouteSettings(name: Routes.SignInRoute),
        );

      case Routes.HomeRoute:
        return PageRouteBuilder<dynamic>(
          transitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (_, __, ___) => const HomeScreen(),
          settings: const RouteSettings(name: Routes.HomeRoute),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case Routes.AttendanceRoute:
        return PageRouteBuilder<dynamic>(
          transitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (_, __, ___) => const AttendanceScreen(),
          settings: const RouteSettings(name: Routes.AttendanceRoute),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case Routes.TimetableRoute:
        return PageRouteBuilder<dynamic>(
          transitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (_, __, ___) => const TimetableScreen(),
          settings: const RouteSettings(name: Routes.TimetableRoute),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case Routes.CalendarRoute:
        return PageRouteBuilder<dynamic>(
          transitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (_, __, ___) => const CalendarScreen(),
          settings: const RouteSettings(name: Routes.CalendarRoute),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case Routes.NewsRoute:
        return PageRouteBuilder<dynamic>(
          transitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (_, __, ___) => const NewsScreen(),
          settings: const RouteSettings(name: Routes.NewsRoute),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case Routes.NewsDetailRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              NewsDetailScreen(newsId: settings.arguments as String),
          settings: const RouteSettings(name: Routes.NewsDetailRoute),
        );
      case Routes.LinksRoute:
        return PageRouteBuilder<dynamic>(
          transitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (_, __, ___) => const LinksScreen(),
          settings: const RouteSettings(name: Routes.NewsDetailRoute),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return PageRouteBuilder<dynamic>(
      transitionDuration: const Duration(milliseconds: 100),
      pageBuilder: (_, __, ___) => Scaffold(
        appBar: AppBar(
          title: const Text('Unknown Route'),
        ),
        body: const Center(
          child: Text('Unknown Route'),
        ),
      ),
    );
  }

  static Future<dynamic> pushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static Future<void> pop([dynamic result]) async {
    navigatorKey.currentState!.pop(result);
  }

  static void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  static void popUntilRoot() {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(initialRoute));
  }
}
