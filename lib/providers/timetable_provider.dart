import 'package:ecc_school_app_mobile/models/timetable/timetable_model.dart';
import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/services/repositories/timetable_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final timetableNotifierProvider =
    StateNotifierProvider<TimetableNotifier, List<Timetable>>(
        (ref) => TimetableNotifier(ref));

class TimetableNotifier extends StateNotifier<List<Timetable>> {
  TimetableNotifier(this.ref) : super([]);

  final timetableRepository = TimetableRepository();
  final Ref ref;

  void getTimetables() async {
    final userAuth = ref.read(authNotifierProvider);

    if (userAuth == null) return;

    List<Future<Timetable>> timetablesFuture = [];

    for (int i = 1; i < 6; i++) {
      timetablesFuture
          .add(timetableRepository.getTimetable(userAuth, i.toString()));
    }

    final timetables = await Future.wait(timetablesFuture);

    state = timetables;
  }
}
