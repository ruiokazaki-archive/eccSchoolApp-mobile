import 'package:ecc_school_app_mobile/constants/timetable_type_constants.dart';
import 'package:ecc_school_app_mobile/helpers/extensions/date_time_extension.dart';
import 'package:ecc_school_app_mobile/helpers/utils/get_subject_by_period.dart';
import 'package:ecc_school_app_mobile/models/attendance/attendance_model.dart';
import 'package:ecc_school_app_mobile/providers/attendances_provider.dart';
import 'package:ecc_school_app_mobile/providers/timetable_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/loader.dart';
import 'package:ecc_school_app_mobile/views/widgets/timetable/table_header.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: constant_identifier_names
const List<String> PERIODS_TIME = [
  '09:15 ~\n10:45',
  '11:00 ~\n12:30',
  '13:30 ~\n15:00',
  '15:15 ~\n16:45',
  '17:00 ~\n18:30',
];

Widget timetable({
  required BuildContext context,
  required WidgetRef ref,
  required String timetableTypeStateValue,
}) {
  final timetablesAsyncValue = ref.watch(timetableNotifierProvider);
  final attendancesAsyncValue = ref.watch(attendancesNotifierProvider);

  DateTime date = DateTime.now();

  if (timetablesAsyncValue is AsyncError ||
      attendancesAsyncValue is AsyncError) {
    return Text(
        "${timetablesAsyncValue.error.toString()}\n${attendancesAsyncValue.error.toString()}");
  }
  if (timetablesAsyncValue is AsyncLoading ||
      attendancesAsyncValue is AsyncLoading) {
    return loader(context, height: 500);
  }

  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: Table(
          border: TableBorder.all(
            color: Colors.black12,
            width: 1,
          ),
          children: [
            tableHeader(context),
            for (int index = 0; index < 5; index++)
              TableRow(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .13,
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${index + 1}限',
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              PERIODS_TIME[index],
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ...[
                    for (var timetable in timetablesAsyncValue.value!)
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .13,
                        child: ColoredBox(
                          color: date.getWeekdayJaName() == timetable.weekday
                              ? Theme.of(context).primaryColor.withOpacity(.05)
                              : Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  getSubjectByPeriod(
                                    timetable.timetable,
                                    index + 1,
                                  ).subjectTitle,
                                  style: const TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                if (getSubjectByPeriod(
                                            timetable.timetable, index + 1)
                                        .subjectTitle !=
                                    "") ...[
                                  Text(
                                    timetableTypeStateValue ==
                                            TimetableTypeConstants.LectureScreen
                                        ? getSubjectByPeriod(
                                            timetable.timetable,
                                            index + 1,
                                          ).teacher.replaceAll("　", " ")
                                        : "出席率:",
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    timetableTypeStateValue ==
                                            TimetableTypeConstants.LectureScreen
                                        ? getSubjectByPeriod(
                                            timetable.timetable,
                                            index + 1,
                                          ).classroom
                                        : attendancesAsyncValue.value!
                                            .firstWhere(
                                              (attendance) =>
                                                  attendance.title ==
                                                  getSubjectByPeriod(
                                                    timetable.timetable,
                                                    index + 1,
                                                  ).subjectTitle,
                                              orElse: () => const Attendance(
                                                title: "",
                                                rate: "0%",
                                                count: "",
                                                absence: "",
                                                lateness: "",
                                              ),
                                            )
                                            .rate,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]
                              ],
                            ),
                          ),
                        ),
                      ),
                  ]
                ],
              ),
          ],
        ),
      )
    ],
  );
}
