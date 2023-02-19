// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tab_index_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabIndex {
  int get currentTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabIndexCopyWith<TabIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabIndexCopyWith<$Res> {
  factory $TabIndexCopyWith(TabIndex value, $Res Function(TabIndex) then) =
      _$TabIndexCopyWithImpl<$Res, TabIndex>;
  @useResult
  $Res call({int currentTabIndex});
}

/// @nodoc
class _$TabIndexCopyWithImpl<$Res, $Val extends TabIndex>
    implements $TabIndexCopyWith<$Res> {
  _$TabIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTabIndex = null,
  }) {
    return _then(_value.copyWith(
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabIndexCopyWith<$Res> implements $TabIndexCopyWith<$Res> {
  factory _$$_TabIndexCopyWith(
          _$_TabIndex value, $Res Function(_$_TabIndex) then) =
      __$$_TabIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTabIndex});
}

/// @nodoc
class __$$_TabIndexCopyWithImpl<$Res>
    extends _$TabIndexCopyWithImpl<$Res, _$_TabIndex>
    implements _$$_TabIndexCopyWith<$Res> {
  __$$_TabIndexCopyWithImpl(
      _$_TabIndex _value, $Res Function(_$_TabIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTabIndex = null,
  }) {
    return _then(_$_TabIndex(
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabIndex implements _TabIndex {
  const _$_TabIndex({required this.currentTabIndex});

  @override
  final int currentTabIndex;

  @override
  String toString() {
    return 'TabIndex(currentTabIndex: $currentTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabIndex &&
            (identical(other.currentTabIndex, currentTabIndex) ||
                other.currentTabIndex == currentTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabIndexCopyWith<_$_TabIndex> get copyWith =>
      __$$_TabIndexCopyWithImpl<_$_TabIndex>(this, _$identity);
}

abstract class _TabIndex implements TabIndex {
  const factory _TabIndex({required final int currentTabIndex}) = _$_TabIndex;

  @override
  int get currentTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabIndexCopyWith<_$_TabIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
