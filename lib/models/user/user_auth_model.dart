import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_model.freezed.dart';
part 'user_auth_model.g.dart';

@freezed
class UserAuth with _$UserAuth {
  UserAuth._();

  factory UserAuth({
    required String uuid,
    required String token,
  }) = _UserAuth;

  factory UserAuth.fromJson(JSON json) => _$UserAuthFromJson(json);
}
