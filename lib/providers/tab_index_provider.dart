import 'package:ecc_school_app_mobile/constants/tab_names.dart';
import 'package:ecc_school_app_mobile/models/tab_index/tab_index_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tabIndexNotifierProvider =
    StateNotifierProvider<TabIndexNotifier, TabIndex>(
        (ref) => TabIndexNotifier());

class TabIndexNotifier extends StateNotifier<TabIndex> {
  TabIndexNotifier() : super(const TabIndex(currentTabIndex: 0));

  changeTabIndex(String tabName) {
    switch (tabName) {
      case TabNames.HomeScreen:
        state = const TabIndex(currentTabIndex: 0);
        break;
      case TabNames.TimetableScreen:
        state = const TabIndex(currentTabIndex: 1);
        break;
      case TabNames.AttendanceScreen:
        state = const TabIndex(currentTabIndex: 2);
        break;
      case TabNames.NewsScreen:
        state = const TabIndex(currentTabIndex: 3);
        break;
      case TabNames.CalendarScreen:
        state = const TabIndex(currentTabIndex: 4);
        break;
    }
  }

  int get getCurrentIndex => state.currentTabIndex;
}
