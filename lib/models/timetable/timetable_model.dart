import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_model.freezed.dart';
part 'timetable_model.g.dart';

@freezed
class Subject with _$Subject {
  const factory Subject({
    required String period,
    required String subjectTitle,
    required String classroom,
    required String teacher,
  }) = _Subject;

  factory Subject.fromJson(JSON json) => _$SubjectFromJson(json);
}

@freezed
class Timetable with _$Timetable {
  @JsonSerializable(explicitToJson: true)
  const factory Timetable({
    required String date,
    required String weekday,
    required List<Subject> timetable,
  }) = _Timetable;

  factory Timetable.fromJson(JSON json) => _$TimetableFromJson(json);
}
