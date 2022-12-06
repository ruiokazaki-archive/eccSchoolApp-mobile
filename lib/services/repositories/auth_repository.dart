import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/local_storage/local_storage_service.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/api_service.dart';

class AuthRepository {
  final _api = ApiService();
  final _localStorage = LocalStorageService();

  Future<UserAuth> signIn({
    required String userId,
    required String password,
  }) async {
    final payload = {
      'id': userId,
      'pw': password,
    };
    final userAuth = await _api.postDocument<UserAuth>(
      endpoint: ApiEndpoint.auth(AuthEndpoint.SIGNIN),
      data: payload,
      converter: (responseBody) => UserAuth.fromJson(responseBody),
    );

    _localStorage.setUserAuth(userAuth);
    return userAuth;
  }

  void signOut() {
    _localStorage.clearUserAuth();
  }

  Future<UserAuth?> getLocalUserAuth() => _localStorage.getUserAuth();
}
