import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/services/repositories/calendar_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final calendarNotifierProvider = StateNotifierProvider<CalendarNotifier,
    AsyncValue<Map<DateTime, List<String>>>>((ref) => CalendarNotifier(ref));

class CalendarNotifier
    extends StateNotifier<AsyncValue<Map<DateTime, List<String>>>> {
  CalendarNotifier(this.ref) : super(const AsyncValue.loading()) {
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

    if (state.value?["$year$month"] != null) return;

    final calendar =
        await calendarRepository.getCalendar(userAuth, year, month);

    state = AsyncData({
      ...state.value != null ? state.value! : {},
      ...Map.fromIterables(
        calendar.map((calendarDay) => DateTime.parse(
            "$year-$month-${int.parse(calendarDay.day) > 9 ? calendarDay.day : "0${calendarDay.day}"}")),
        calendar.map((calendarDay) =>
            calendarDay.plans.map((plan) => plan.title).toList()),
      ),
    });
  }
}
