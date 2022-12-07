import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
class Attendance with _$Attendance {
  const factory Attendance({
    required String title,
    required String rate,
    required String count,
    required String absence,
    required String lateness,
  }) = _Attendance;

  factory Attendance.fromJson(JSON json) => _$AttendanceFromJson(json);
}
