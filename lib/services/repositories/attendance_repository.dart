import 'package:ecc_school_app_mobile/models/attendance/attendance_model.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/api_service.dart';

class AttendanceRepository {
  final _apiService = ApiService();

  Future<List<Attendance>> getAttendances(
    UserAuth userAuth,
  ) async {
    final attendances = await _apiService.getCollection<Attendance>(
      endpoint: ApiEndpoint.user(
        UserEndpoint.ATTENDANCE,
        uuid: userAuth.uuid,
      ),
      token: userAuth.token,
      converter: (responseBody) => Attendance.fromJson(responseBody),
    );
    return attendances;
  }
}
