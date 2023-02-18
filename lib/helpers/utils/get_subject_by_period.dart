import 'package:ecc_school_app_mobile/models/timetable/timetable_model.dart';

Subject getSubjectByPeriod(
  List<Subject> subjects,
  int period,
) {
  return subjects.firstWhere(
    (t) => t.period == '$period限',
    orElse: () => const Subject(
      period: "",
      subjectTitle: "",
      classroom: "",
      teacher: "",
    ),
  );
}
