import 'package:ecc_school_app_mobile/models/timetable/timetable_model.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/api_service.dart';

class TimetableRepository {
  final _apiService = ApiService();

  Future<Timetable> getTimetable(
    UserAuth userAuth,
    String dayOfWeek,
  ) async {
    final timetable = await _apiService.getDocument<Timetable>(
      endpoint: ApiEndpoint.user(
        UserEndpoint.TIMETABLE,
        uuid: userAuth.uuid,
        query: dayOfWeek,
      ),
      token: userAuth.token,
      converter: (responseBody) => Timetable.fromJson(responseBody),
    );
    return timetable;
  }
}
