import 'package:ecc_school_app_mobile/helpers/utils/open_url.dart';
import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/routes/app_router.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart';
import 'package:ecc_school_app_mobile/views/screens/introduction_screen.dart';
import 'package:ecc_school_app_mobile/views/widgets/home/wrap_item.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAuth = ref.watch(authNotifierProvider);

    if (userAuth == null) {
      return const IntroductionScreen();
    }

    return layout(
      selectedBottomNavigationIndex: 0,
      pageTitle: 'Home',
      context: context,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                wrapItem(
                  icon: Icons.schedule,
                  label: "時間割",
                  color: Colors.red.withOpacity(0.8),
                  onTapped: () => AppRouter.pushNamed(Routes.TimetableRoute),
                  context: context,
                ),
                wrapItem(
                  icon: Icons.percent,
                  label: "出席率",
                  color: Colors.green.withOpacity(0.8),
                  onTapped: () => AppRouter.pushNamed(Routes.AttendanceRoute),
                  context: context,
                ),
                wrapItem(
                  icon: Icons.calendar_month,
                  label: "カレンダー",
                  color: Colors.blue.withOpacity(0.8),
                  onTapped: () => AppRouter.pushNamed(Routes.CalendarRoute),
                  context: context,
                ),
                wrapItem(
                  icon: Icons.notifications,
                  label: "お知らせ",
                  color: Colors.orange.withOpacity(0.8),
                  onTapped: () => AppRouter.pushNamed(Routes.NewsRoute),
                  context: context,
                ),
                wrapItem(
                  icon: Icons.report_gmailerrorred_rounded,
                  label: "バグ / 要望 / その他",
                  color: Colors.brown.withOpacity(0.8),
                  onTapped: () {
                    openUrl(
                        'https://github.com/RuiOkazaki/eccSchoolApp-mobile/issues');
                  },
                  context: context,
                ),
                wrapItem(
                  icon: Icons.star_border_rounded,
                  label: "アプリレビュー",
                  color: Colors.purple.withOpacity(0.8),
                  onTapped: () {
                    openUrl('https://forms.gle/tsXfXPJJWBsiC7aCA');
                  },
                  context: context,
                ),
                wrapItem(
                  icon: Icons.star_border_rounded,
                  label: "各種リンク",
                  color: Colors.pink.withOpacity(0.8),
                  onTapped: () {
                    AppRouter.pushNamed(Routes.LinksRoute);
                  },
                  context: context,
                ),
                wrapItem(
                  icon: Icons.logout,
                  label: "ログアウト",
                  color: Colors.teal.withOpacity(0.8),
                  onTapped: () => {
                    ref.read(authNotifierProvider.notifier).signOut(),
                    AppRouter.pushNamed(Routes.SignInRoute),
                  },
                  context: context,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
