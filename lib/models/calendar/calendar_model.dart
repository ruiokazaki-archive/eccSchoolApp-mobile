import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_model.freezed.dart';
part 'calendar_model.g.dart';

@freezed
class Plan with _$Plan {
  const factory Plan({
    required String title,
    required String link,
  }) = _Plan;

  factory Plan.fromJson(JSON json) => _$PlanFromJson(json);
}

@freezed
class CalendarDay with _$CalendarDay {
  @JsonSerializable(explicitToJson: true)
  const factory CalendarDay({
    required String day,
    required List<Plan> plans,
  }) = _CalendarDay;

  factory CalendarDay.fromJson(JSON json) => _$CalendarDayFromJson(json);
}
