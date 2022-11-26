import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/networking/api_service.dart';

class AuthRepository {
  final _api = ApiService();
  Future<UserAuth> signin({
    required String userId,
    required String password,
  }) async {
    final payload = {
      'id': userId,
      'pw': password,
    };
    return _api.signin(payload);
  }
}
