// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  String get period => throw _privateConstructorUsedError;
  String get subjectTitle => throw _privateConstructorUsedError;
  String get classroom => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call(
      {String period, String subjectTitle, String classroom, String teacher});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? subjectTitle = null,
    Object? classroom = null,
    Object? teacher = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      subjectTitle: null == subjectTitle
          ? _value.subjectTitle
          : subjectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$_SubjectCopyWith(
          _$_Subject value, $Res Function(_$_Subject) then) =
      __$$_SubjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String period, String subjectTitle, String classroom, String teacher});
}

/// @nodoc
class __$$_SubjectCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$_Subject>
    implements _$$_SubjectCopyWith<$Res> {
  __$$_SubjectCopyWithImpl(_$_Subject _value, $Res Function(_$_Subject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? subjectTitle = null,
    Object? classroom = null,
    Object? teacher = null,
  }) {
    return _then(_$_Subject(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      subjectTitle: null == subjectTitle
          ? _value.subjectTitle
          : subjectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subject implements _Subject {
  const _$_Subject(
      {required this.period,
      required this.subjectTitle,
      required this.classroom,
      required this.teacher});

  factory _$_Subject.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectFromJson(json);

  @override
  final String period;
  @override
  final String subjectTitle;
  @override
  final String classroom;
  @override
  final String teacher;

  @override
  String toString() {
    return 'Subject(period: $period, subjectTitle: $subjectTitle, classroom: $classroom, teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subject &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.subjectTitle, subjectTitle) ||
                other.subjectTitle == subjectTitle) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, period, subjectTitle, classroom, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectCopyWith<_$_Subject> get copyWith =>
      __$$_SubjectCopyWithImpl<_$_Subject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectToJson(
      this,
    );
  }
}

abstract class _Subject implements Subject {
  const factory _Subject(
      {required final String period,
      required final String subjectTitle,
      required final String classroom,
      required final String teacher}) = _$_Subject;

  factory _Subject.fromJson(Map<String, dynamic> json) = _$_Subject.fromJson;

  @override
  String get period;
  @override
  String get subjectTitle;
  @override
  String get classroom;
  @override
  String get teacher;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectCopyWith<_$_Subject> get copyWith =>
      throw _privateConstructorUsedError;
}

Timetable _$TimetableFromJson(Map<String, dynamic> json) {
  return _Timetable.fromJson(json);
}

/// @nodoc
mixin _$Timetable {
  String get date => throw _privateConstructorUsedError;
  String get weekday => throw _privateConstructorUsedError;
  List<Subject> get timetable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableCopyWith<Timetable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableCopyWith<$Res> {
  factory $TimetableCopyWith(Timetable value, $Res Function(Timetable) then) =
      _$TimetableCopyWithImpl<$Res, Timetable>;
  @useResult
  $Res call({String date, String weekday, List<Subject> timetable});
}

/// @nodoc
class _$TimetableCopyWithImpl<$Res, $Val extends Timetable>
    implements $TimetableCopyWith<$Res> {
  _$TimetableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weekday = null,
    Object? timetable = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as String,
      timetable: null == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimetableCopyWith<$Res> implements $TimetableCopyWith<$Res> {
  factory _$$_TimetableCopyWith(
          _$_Timetable value, $Res Function(_$_Timetable) then) =
      __$$_TimetableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String weekday, List<Subject> timetable});
}

/// @nodoc
class __$$_TimetableCopyWithImpl<$Res>
    extends _$TimetableCopyWithImpl<$Res, _$_Timetable>
    implements _$$_TimetableCopyWith<$Res> {
  __$$_TimetableCopyWithImpl(
      _$_Timetable _value, $Res Function(_$_Timetable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weekday = null,
    Object? timetable = null,
  }) {
    return _then(_$_Timetable(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as String,
      timetable: null == timetable
          ? _value._timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Timetable implements _Timetable {
  const _$_Timetable(
      {required this.date,
      required this.weekday,
      required final List<Subject> timetable})
      : _timetable = timetable;

  factory _$_Timetable.fromJson(Map<String, dynamic> json) =>
      _$$_TimetableFromJson(json);

  @override
  final String date;
  @override
  final String weekday;
  final List<Subject> _timetable;
  @override
  List<Subject> get timetable {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timetable);
  }

  @override
  String toString() {
    return 'Timetable(date: $date, weekday: $weekday, timetable: $timetable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timetable &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            const DeepCollectionEquality()
                .equals(other._timetable, _timetable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, weekday,
      const DeepCollectionEquality().hash(_timetable));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimetableCopyWith<_$_Timetable> get copyWith =>
      __$$_TimetableCopyWithImpl<_$_Timetable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimetableToJson(
      this,
    );
  }
}

abstract class _Timetable implements Timetable {
  const factory _Timetable(
      {required final String date,
      required final String weekday,
      required final List<Subject> timetable}) = _$_Timetable;

  factory _Timetable.fromJson(Map<String, dynamic> json) =
      _$_Timetable.fromJson;

  @override
  String get date;
  @override
  String get weekday;
  @override
  List<Subject> get timetable;
  @override
  @JsonKey(ignore: true)
  _$$_TimetableCopyWith<_$_Timetable> get copyWith =>
      throw _privateConstructorUsedError;
}
