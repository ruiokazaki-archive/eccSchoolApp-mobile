import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_index_model.freezed.dart';

@freezed
class TabIndex with _$TabIndex {
  const factory TabIndex({
    required int currentTabIndex,
  }) = _TabIndex;
}
