import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
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
  }
}
