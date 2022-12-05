// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return _Attendance.fromJson(json);
}

/// @nodoc
mixin _$Attendance {
  String get title => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  String get absence => throw _privateConstructorUsedError;
  String get lateness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceCopyWith<Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
          Attendance value, $Res Function(Attendance) then) =
      _$AttendanceCopyWithImpl<$Res, Attendance>;
  @useResult
  $Res call(
      {String title,
      String rate,
      String count,
      String absence,
      String lateness});
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res, $Val extends Attendance>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? rate = null,
    Object? count = null,
    Object? absence = null,
    Object? lateness = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      absence: null == absence
          ? _value.absence
          : absence // ignore: cast_nullable_to_non_nullable
              as String,
      lateness: null == lateness
          ? _value.lateness
          : lateness // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceCopyWith<$Res>
    implements $AttendanceCopyWith<$Res> {
  factory _$$_AttendanceCopyWith(
          _$_Attendance value, $Res Function(_$_Attendance) then) =
      __$$_AttendanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String rate,
      String count,
      String absence,
      String lateness});
}

/// @nodoc
class __$$_AttendanceCopyWithImpl<$Res>
    extends _$AttendanceCopyWithImpl<$Res, _$_Attendance>
    implements _$$_AttendanceCopyWith<$Res> {
  __$$_AttendanceCopyWithImpl(
      _$_Attendance _value, $Res Function(_$_Attendance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? rate = null,
    Object? count = null,
    Object? absence = null,
    Object? lateness = null,
  }) {
    return _then(_$_Attendance(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      absence: null == absence
          ? _value.absence
          : absence // ignore: cast_nullable_to_non_nullable
              as String,
      lateness: null == lateness
          ? _value.lateness
          : lateness // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attendance implements _Attendance {
  const _$_Attendance(
      {required this.title,
      required this.rate,
      required this.count,
      required this.absence,
      required this.lateness});

  factory _$_Attendance.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceFromJson(json);

  @override
  final String title;
  @override
  final String rate;
  @override
  final String count;
  @override
  final String absence;
  @override
  final String lateness;

  @override
  String toString() {
    return 'Attendance(title: $title, rate: $rate, count: $count, absence: $absence, lateness: $lateness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attendance &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.absence, absence) || other.absence == absence) &&
            (identical(other.lateness, lateness) ||
                other.lateness == lateness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, rate, count, absence, lateness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceCopyWith<_$_Attendance> get copyWith =>
      __$$_AttendanceCopyWithImpl<_$_Attendance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceToJson(
      this,
    );
  }
}

abstract class _Attendance implements Attendance {
  const factory _Attendance(
      {required final String title,
      required final String rate,
      required final String count,
      required final String absence,
      required final String lateness}) = _$_Attendance;

  factory _Attendance.fromJson(Map<String, dynamic> json) =
      _$_Attendance.fromJson;

  @override
  String get title;
  @override
  String get rate;
  @override
  String get count;
  @override
  String get absence;
  @override
  String get lateness;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceCopyWith<_$_Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}
