import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:ecc_school_app_mobile/models/attendance/attendance_model.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/dio_service.dart';

class ApiService {
  final _dioService = DioService();

  Future<UserAuth> signIn(JSON payload) async {
    final userAuth = await _dioService.post<UserAuth>(
      endpoint: ApiEndpoint.auth(AuthEndpoint.SIGNIN),
      data: payload,
      converter: (responseBody) => UserAuth.fromJson(responseBody),
    );
    return userAuth;
  }

  Future<List<Attendance>> attendance(UserAuth userAuth) async {
    if (userAuth.isNull) {
      throw Exception('User is not signed in');
    }

    final attendances = await _dioService.getCollection<Attendance>(
      endpoint: ApiEndpoint.user(
        UserEndpoint.ATTENDANCE,
        uuid: userAuth.uuid!,
      ),
      token: userAuth.token!,
      converter: (responseBody) => Attendance.fromJson(responseBody),
    );
    return attendances;
  }
}
