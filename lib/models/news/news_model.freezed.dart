// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call({String id, String title, String date, String tag, String link});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? tag = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$_NewsCopyWith(_$_News value, $Res Function(_$_News) then) =
      __$$_NewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String date, String tag, String link});
}

/// @nodoc
class __$$_NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res, _$_News>
    implements _$$_NewsCopyWith<$Res> {
  __$$_NewsCopyWithImpl(_$_News _value, $Res Function(_$_News) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? tag = null,
    Object? link = null,
  }) {
    return _then(_$_News(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
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
class _$_News implements _News {
  const _$_News(
      {required this.id,
      required this.title,
      required this.date,
      required this.tag,
      required this.link});

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String date;
  @override
  final String tag;
  @override
  final String link;

  @override
  String toString() {
    return 'News(id: $id, title: $title, date: $date, tag: $tag, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_News &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, date, tag, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsCopyWith<_$_News> get copyWith =>
      __$$_NewsCopyWithImpl<_$_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {required final String id,
      required final String title,
      required final String date,
      required final String tag,
      required final String link}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get date;
  @override
  String get tag;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_NewsCopyWith<_$_News> get copyWith => throw _privateConstructorUsedError;
}

NewsDetail _$NewsDetailFromJson(Map<String, dynamic> json) {
  return _NewsDetail.fromJson(json);
}

/// @nodoc
mixin _$NewsDetail {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  List<String>? get attachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDetailCopyWith<NewsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailCopyWith<$Res> {
  factory $NewsDetailCopyWith(
          NewsDetail value, $Res Function(NewsDetail) then) =
      _$NewsDetailCopyWithImpl<$Res, NewsDetail>;
  @useResult
  $Res call(
      {String title,
      String body,
      String date,
      String tag,
      List<String>? attachment});
}

/// @nodoc
class _$NewsDetailCopyWithImpl<$Res, $Val extends NewsDetail>
    implements $NewsDetailCopyWith<$Res> {
  _$NewsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? date = null,
    Object? tag = null,
    Object? attachment = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsDetailCopyWith<$Res>
    implements $NewsDetailCopyWith<$Res> {
  factory _$$_NewsDetailCopyWith(
          _$_NewsDetail value, $Res Function(_$_NewsDetail) then) =
      __$$_NewsDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String body,
      String date,
      String tag,
      List<String>? attachment});
}

/// @nodoc
class __$$_NewsDetailCopyWithImpl<$Res>
    extends _$NewsDetailCopyWithImpl<$Res, _$_NewsDetail>
    implements _$$_NewsDetailCopyWith<$Res> {
  __$$_NewsDetailCopyWithImpl(
      _$_NewsDetail _value, $Res Function(_$_NewsDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? date = null,
    Object? tag = null,
    Object? attachment = freezed,
  }) {
    return _then(_$_NewsDetail(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value._attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDetail implements _NewsDetail {
  const _$_NewsDetail(
      {required this.title,
      required this.body,
      required this.date,
      required this.tag,
      final List<String>? attachment})
      : _attachment = attachment;

  factory _$_NewsDetail.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDetailFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  final String date;
  @override
  final String tag;
  final List<String>? _attachment;
  @override
  List<String>? get attachment {
    final value = _attachment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsDetail(title: $title, body: $body, date: $date, tag: $tag, attachment: $attachment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsDetail &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            const DeepCollectionEquality()
                .equals(other._attachment, _attachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body, date, tag,
      const DeepCollectionEquality().hash(_attachment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDetailCopyWith<_$_NewsDetail> get copyWith =>
      __$$_NewsDetailCopyWithImpl<_$_NewsDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDetailToJson(
      this,
    );
  }
}

abstract class _NewsDetail implements NewsDetail {
  const factory _NewsDetail(
      {required final String title,
      required final String body,
      required final String date,
      required final String tag,
      final List<String>? attachment}) = _$_NewsDetail;

  factory _NewsDetail.fromJson(Map<String, dynamic> json) =
      _$_NewsDetail.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  String get date;
  @override
  String get tag;
  @override
  List<String>? get attachment;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDetailCopyWith<_$_NewsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
