import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/services/repositories/calendar_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final calendarNotifierProvider =
    StateNotifierProvider<CalendarNotifier, Map<DateTime, List<String>>>(
        (ref) => CalendarNotifier(ref));

class CalendarNotifier extends StateNotifier<Map<DateTime, List<String>>> {
  CalendarNotifier(this.ref) : super({}) {
    DateTime now = DateTime.now();
    getCalendar(DateFormat('yyyy').format(now), DateFormat('MM').format(now));
  }

  final calendarRepository = CalendarRepository();
  final Ref ref;

  void getCalendar(
    String year,
    String month,
  ) async {
    final userAuth = ref.read(authNotifierProvider);

    if (userAuth == null) return;

    if (state["$year$month"] != null) return;

    final calendar =
        await calendarRepository.getCalendar(userAuth, year, month);

    state = {
      ...state,
      ...Map.fromIterables(
        calendar.map(
            (calendarDay) => DateTime.parse("$year-$month-${calendarDay.day}")),
        calendar.map((calendarDay) =>
            calendarDay.plans.map((plan) => plan.title).toList()),
      ),
    };
  }
}
