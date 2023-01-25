import 'package:ecc_school_app_mobile/helpers/utils/open_url.dart';
import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/home/wrap_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart' as routes;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 4.0,
                width: 18.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
              const SizedBox(height: 4.0),
              Container(
                height: 4.0,
                width: 12.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ],
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: CircleAvatar(
              maxRadius: 15.0,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            wrapItem(
              icon: Icons.schedule,
              label: "時間割",
              color: Colors.red.withOpacity(0.8),
              onTapped: () => const routes.TimetableRoute().go(context),
              context: context,
            ),
            wrapItem(
              icon: Icons.percent,
              label: "出席率",
              color: Colors.green.withOpacity(0.8),
              onTapped: () => const routes.AttendanceRoute().go(context),
              context: context,
            ),
            wrapItem(
              icon: Icons.calendar_month,
              label: "カレンダー",
              color: Colors.blue.withOpacity(0.8),
              onTapped: () => const routes.CalendarRoute().go(context),
              context: context,
            ),
            wrapItem(
              icon: Icons.notifications,
              label: "お知らせ",
              color: Colors.orange.withOpacity(0.8),
              onTapped: () => const routes.NewsRoute().go(context),
              context: context,
            ),
            wrapItem(
              icon: Icons.link,
              label: "各種リンク",
              color: Colors.purple.withOpacity(0.8),
              onTapped: () => openUrl('https://www.ecc-app.net/links'),
              context: context,
            ),
            wrapItem(
              icon: Icons.logout,
              label: "ログアウト",
              color: Colors.teal.withOpacity(0.8),
              onTapped: () => {
                ref.read(authNotifierProvider.notifier).signOut(),
                const routes.SignInRoute().go(context),
              },
              context: context,
            ),
          ],
        ),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       ElevatedButton(
      //         onPressed: () => const routes.AttendanceRoute().go(context),
      //         child: const Text('Go to the Attendance screen'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => const routes.NewsRoute().go(context),
      //         child: const Text('Go to the News screen'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => const routes.TimetableRoute().go(context),
      //         child: const Text('Go to the Timetable screen'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => const routes.CalendarRoute().go(context),
      //         child: const Text('Go to the Calendar screen'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => {
      //           ref.read(authNotifierProvider.notifier).signOut(),
      //           const routes.SignInRoute().go(context),
      //         },
      //         child: const Text('Sign out'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
