// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAuth _$UserAuthFromJson(Map<String, dynamic> json) {
  return _UserAuth.fromJson(json);
}

/// @nodoc
mixin _$UserAuth {
  String? get uuid => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthCopyWith<UserAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthCopyWith<$Res> {
  factory $UserAuthCopyWith(UserAuth value, $Res Function(UserAuth) then) =
      _$UserAuthCopyWithImpl<$Res, UserAuth>;
  @useResult
  $Res call({String? uuid, String? token});
}

/// @nodoc
class _$UserAuthCopyWithImpl<$Res, $Val extends UserAuth>
    implements $UserAuthCopyWith<$Res> {
  _$UserAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAuthCopyWith<$Res> implements $UserAuthCopyWith<$Res> {
  factory _$$_UserAuthCopyWith(
          _$_UserAuth value, $Res Function(_$_UserAuth) then) =
      __$$_UserAuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uuid, String? token});
}

/// @nodoc
class __$$_UserAuthCopyWithImpl<$Res>
    extends _$UserAuthCopyWithImpl<$Res, _$_UserAuth>
    implements _$$_UserAuthCopyWith<$Res> {
  __$$_UserAuthCopyWithImpl(
      _$_UserAuth _value, $Res Function(_$_UserAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_UserAuth(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAuth extends _UserAuth {
  _$_UserAuth({this.uuid, this.token}) : super._();

  factory _$_UserAuth.fromJson(Map<String, dynamic> json) =>
      _$$_UserAuthFromJson(json);

  @override
  final String? uuid;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserAuth(uuid: $uuid, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAuth &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAuthCopyWith<_$_UserAuth> get copyWith =>
      __$$_UserAuthCopyWithImpl<_$_UserAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAuthToJson(
      this,
    );
  }
}

abstract class _UserAuth extends UserAuth {
  factory _UserAuth({final String? uuid, final String? token}) = _$_UserAuth;
  _UserAuth._() : super._();

  factory _UserAuth.fromJson(Map<String, dynamic> json) = _$_UserAuth.fromJson;

  @override
  String? get uuid;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserAuthCopyWith<_$_UserAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
