import 'dart:convert';

import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const _userAuthKey = "userAuthKey";

  static SharedPreferences? _sharedPrefs;

  static Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  UserAuth? getUserAuth() {
    final user = _sharedPrefs?.getString(_userAuthKey);
    if (user == null) return null;
    return UserAuth.fromJson(jsonDecode(user) as JSON);
  }

  void setUserAuth(UserAuth userAuth) {
    _sharedPrefs?.setString(_userAuthKey, jsonEncode(userAuth.toJson()));
  }

  void clearUserAuth() {
    _sharedPrefs?.remove(_userAuthKey);
  }
}
