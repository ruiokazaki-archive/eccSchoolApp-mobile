import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    String? uuid,
    String? token,
  }) = _User;

  factory User.fromJson(JSON json) => _$UserFromJson(json);
}
