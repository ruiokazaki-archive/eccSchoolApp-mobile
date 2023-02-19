import 'package:ecc_school_app_mobile/views/screens/attendance_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/base_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/calendar_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/home_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/introduction_screen.dart';
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

  static const String initialRoute = Routes.BaseRoute;

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

      case Routes.BaseRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => BaseScreen(),
          settings: const RouteSettings(name: Routes.BaseRoute),
        );
      case Routes.HomeRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const HomeScreen(),
          settings: const RouteSettings(name: Routes.HomeRoute),
        );
      case Routes.AttendanceRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const AttendanceScreen(),
          settings: const RouteSettings(name: Routes.AttendanceRoute),
        );
      case Routes.TimetableRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const TimetableScreen(),
          settings: const RouteSettings(name: Routes.TimetableRoute),
        );
      case Routes.CalendarRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const CalendarScreen(),
          settings: const RouteSettings(name: Routes.CalendarRoute),
        );
      case Routes.NewsRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const NewsScreen(),
          settings: const RouteSettings(name: Routes.NewsRoute),
        );
      case Routes.NewsDetailRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              NewsDetailScreen(newsId: settings.arguments as String),
          settings: const RouteSettings(name: Routes.NewsDetailRoute),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => Scaffold(
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
