import 'package:dio/dio.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';

class ApiClient {
  Future<UserAuth?> signin() async {
    final dio = Dio();
    dio.interceptors.add(LogInterceptor());
    const url = '';
    var payload = {
      'id': '',
      'pw': '',
    };
    var response = await dio.post(
      url,
      data: payload,
    );
    if (response.statusCode == 200) {
      try {
        return UserAuth.fromJson(response.data);
      } catch (e) {
        print("エラー");
        print(e);
        rethrow;
      }
    }
    return null;
  }
}
