// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call({String title, String link});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$_PlanCopyWith(_$_Plan value, $Res Function(_$_Plan) then) =
      __$$_PlanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String link});
}

/// @nodoc
class __$$_PlanCopyWithImpl<$Res> extends _$PlanCopyWithImpl<$Res, _$_Plan>
    implements _$$_PlanCopyWith<$Res> {
  __$$_PlanCopyWithImpl(_$_Plan _value, $Res Function(_$_Plan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_$_Plan(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Plan implements _Plan {
  const _$_Plan({required this.title, required this.link});

  factory _$_Plan.fromJson(Map<String, dynamic> json) => _$$_PlanFromJson(json);

  @override
  final String title;
  @override
  final String link;

  @override
  String toString() {
    return 'Plan(title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Plan &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanCopyWith<_$_Plan> get copyWith =>
      __$$_PlanCopyWithImpl<_$_Plan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {required final String title, required final String link}) = _$_Plan;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$_Plan.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_PlanCopyWith<_$_Plan> get copyWith => throw _privateConstructorUsedError;
}

CalendarDay _$CalendarDayFromJson(Map<String, dynamic> json) {
  return _CalendarDay.fromJson(json);
}

/// @nodoc
mixin _$CalendarDay {
  String get day => throw _privateConstructorUsedError;
  List<Plan> get plans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarDayCopyWith<CalendarDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDayCopyWith<$Res> {
  factory $CalendarDayCopyWith(
          CalendarDay value, $Res Function(CalendarDay) then) =
      _$CalendarDayCopyWithImpl<$Res, CalendarDay>;
  @useResult
  $Res call({String day, List<Plan> plans});
}

/// @nodoc
class _$CalendarDayCopyWithImpl<$Res, $Val extends CalendarDay>
    implements $CalendarDayCopyWith<$Res> {
  _$CalendarDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? plans = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      plans: null == plans
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarDayCopyWith<$Res>
    implements $CalendarDayCopyWith<$Res> {
  factory _$$_CalendarDayCopyWith(
          _$_CalendarDay value, $Res Function(_$_CalendarDay) then) =
      __$$_CalendarDayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, List<Plan> plans});
}

/// @nodoc
class __$$_CalendarDayCopyWithImpl<$Res>
    extends _$CalendarDayCopyWithImpl<$Res, _$_CalendarDay>
    implements _$$_CalendarDayCopyWith<$Res> {
  __$$_CalendarDayCopyWithImpl(
      _$_CalendarDay _value, $Res Function(_$_CalendarDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? plans = null,
  }) {
    return _then(_$_CalendarDay(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      plans: null == plans
          ? _value._plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CalendarDay implements _CalendarDay {
  const _$_CalendarDay({required this.day, required final List<Plan> plans})
      : _plans = plans;

  factory _$_CalendarDay.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarDayFromJson(json);

  @override
  final String day;
  final List<Plan> _plans;
  @override
  List<Plan> get plans {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plans);
  }

  @override
  String toString() {
    return 'CalendarDay(day: $day, plans: $plans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarDay &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._plans, _plans));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_plans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarDayCopyWith<_$_CalendarDay> get copyWith =>
      __$$_CalendarDayCopyWithImpl<_$_CalendarDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarDayToJson(
      this,
    );
  }
}

abstract class _CalendarDay implements CalendarDay {
  const factory _CalendarDay(
      {required final String day,
      required final List<Plan> plans}) = _$_CalendarDay;

  factory _CalendarDay.fromJson(Map<String, dynamic> json) =
      _$_CalendarDay.fromJson;

  @override
  String get day;
  @override
  List<Plan> get plans;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarDayCopyWith<_$_CalendarDay> get copyWith =>
      throw _privateConstructorUsedError;
}
