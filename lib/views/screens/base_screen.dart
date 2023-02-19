import 'package:ecc_school_app_mobile/providers/tab_index_provider.dart';
import 'package:ecc_school_app_mobile/views/screens/attendance_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/calendar_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/home_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/news_screen.dart';
import 'package:ecc_school_app_mobile/views/screens/timetable_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseScreen extends ConsumerWidget {
  final List<Widget> _pageWidgets = [
    const HomeScreen(),
    const TimetableScreen(),
    const AttendanceScreen(),
    const NewsScreen(),
    const CalendarScreen(),
  ];

  final List<BottomNavigationBarItem> _tabItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.schedule),
      label: '時間割',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.percent),
      label: '出席率',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: 'お知らせ',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.calendar_month),
      label: 'カレンダー',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndexState = ref.watch(tabIndexNotifierProvider);

    final CupertinoTabController controller = CupertinoTabController();
    controller.index = tabIndexState.currentTabIndex;

    return CupertinoTabScaffold(
      controller: controller,
      tabBar: CupertinoTabBar(
        currentIndex: 0,
        items: _tabItems,
        activeColor: Theme.of(context).primaryColor,
        inactiveColor: Colors.black38,
        backgroundColor: Colors.white,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(builder: (context) {
          return _pageWidgets[index];
        });
      },
    );
  }
}
