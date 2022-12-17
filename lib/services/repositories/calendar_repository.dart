import 'package:ecc_school_app_mobile/models/calendar/calendar_model.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/api_service.dart';

class CalendarRepository {
  final _apiService = ApiService();

  Future<List<CalendarDay>> getCalendar(
    UserAuth userAuth,
    String year,
    String month,
  ) async {
    final calendar = await _apiService.getCollection<CalendarDay>(
      endpoint: ApiEndpoint.user(
        UserEndpoint.CALENDAR,
        uuid: userAuth.uuid,
        query: year,
        subQuery: month,
      ),
      token: userAuth.token,
      converter: (responseBody) => CalendarDay.fromJson(responseBody),
    );
    return calendar;
  }
}
