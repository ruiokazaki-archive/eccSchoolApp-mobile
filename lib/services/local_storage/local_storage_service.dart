import 'dart:convert';

import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const _userAuthKey = "userAuthKey";

  Future<UserAuth?> getUserAuth() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final user = sharedPrefs.getString(_userAuthKey);

    if (user == null) return null;
    return UserAuth.fromJson(jsonDecode(user) as JSON);
  }

  void setUserAuth(UserAuth userAuth) async {
    final sharedPrefs = await SharedPreferences.getInstance();

    sharedPrefs.setString(_userAuthKey, jsonEncode(userAuth.toJson()));
  }

  void clearUserAuth() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.remove(_userAuthKey);
  }
}
