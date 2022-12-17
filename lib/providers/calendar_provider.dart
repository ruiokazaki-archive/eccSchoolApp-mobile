import 'package:ecc_school_app_mobile/models/calendar/calendar_model.dart';
import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/services/repositories/calendar_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calendarNotifierProvider =
    StateNotifierProvider<CalendarNotifier, List<CalendarDay>>(
        (ref) => CalendarNotifier(ref));

class CalendarNotifier extends StateNotifier<List<CalendarDay>> {
  CalendarNotifier(this.ref) : super([]);

  final calendarRepository = CalendarRepository();
  final Ref ref;

  void getCalendar(
    String year,
    String month,
  ) async {
    final userAuth = ref.read(authNotifierProvider);

    if (userAuth == null) return;

    final calendar =
        await calendarRepository.getCalendar(userAuth, year, month);

    state = calendar;
  }
}
