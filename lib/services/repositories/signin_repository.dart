import 'package:ecc_school_app_mobile/services/networking/api_client.dart';

class SinginRepository {
  final _api = ApiClient();
  dynamic signin() async {
    return _api.signin();
  }
}
