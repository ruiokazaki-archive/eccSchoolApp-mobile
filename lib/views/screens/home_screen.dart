import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => const routes.AttendanceRoute().go(context),
              child: const Text('Go to the Attendance screen'),
            ),
            ElevatedButton(
              onPressed: () => const routes.NewsRoute().go(context),
              child: const Text('Go to the News screen'),
            ),
            ElevatedButton(
              onPressed: () => const routes.TimetableRoute().go(context),
              child: const Text('Go to the Timetable screen'),
            ),
            ElevatedButton(
              onPressed: () => const routes.CalendarRoute().go(context),
              child: const Text('Go to the Calendar screen'),
            ),
            ElevatedButton(
              onPressed: () => {
                ref.read(authNotifierProvider.notifier).signOut(),
                const routes.SignInRoute().go(context),
              },
              child: const Text('Sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
