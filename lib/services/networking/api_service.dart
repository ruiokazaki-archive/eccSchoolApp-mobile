import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/dio_service.dart';

class ApiService {
  final _dioService = DioService();

  Future<UserAuth> signin(JSON payload) async {
    final response = await _dioService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.SIGNIN),
      data: payload,
    );
    return UserAuth.fromJson(response);
  }
}
