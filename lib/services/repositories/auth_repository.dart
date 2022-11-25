import 'package:ecc_school_app_mobile/services/networking/api_service.dart';

class AuthRepository {
  final _api = ApiService();
  dynamic signin({
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
