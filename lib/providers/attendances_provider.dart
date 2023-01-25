import 'package:ecc_school_app_mobile/models/attendance/attendance_model.dart';
import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/services/repositories/attendances_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final attendancesNotifierProvider =
    StateNotifierProvider<AttendancesNotifier, List<Attendance>>(
        (ref) => AttendancesNotifier(ref));

class AttendancesNotifier extends StateNotifier<List<Attendance>> {
  AttendancesNotifier(this.ref) : super([]) {
    getAttendances();
  }

  final attendanceRepository = AttendancesRepository();
  final Ref ref;

  void getAttendances() async {
    final userAuth = ref.read(authNotifierProvider);

    if (userAuth == null) return;

    final attendances = await attendanceRepository.getAttendances(userAuth);
    state = attendances;
  }
}
