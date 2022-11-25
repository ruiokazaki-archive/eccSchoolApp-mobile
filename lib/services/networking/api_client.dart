import 'package:dio/dio.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiClient {
  final String endpoint =
      dotenv.get('API_ENDPOINT', fallback: 'http://localhost:8080');

  Future<UserAuth?> signin() async {
    final dio = Dio();
    dio.interceptors.add(LogInterceptor());
    var payload = {
      'id': '',
      'pw': '',
    };
    var response = await dio.post(
      "$endpoint/signin",
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
