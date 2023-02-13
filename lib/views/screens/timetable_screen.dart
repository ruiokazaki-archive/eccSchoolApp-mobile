import 'package:ecc_school_app_mobile/constants/timetable_type_constants.dart';
import 'package:ecc_school_app_mobile/models/timetable/timetable_model.dart';
import 'package:ecc_school_app_mobile/providers/attendances_provider.dart';
import 'package:ecc_school_app_mobile/providers/timetable_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/async_value_layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/timetable/build_table_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> periods_time = [
  '09:15 ~\n10:45',
  '11:00 ~\n12:30',
  '13:30 ~\n15:00',
  '15:15 ~\n16:45',
  '17:00 ~\n18:30',
];

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

class TimetableScreen extends HookConsumerWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timetablesAsyncValue = ref.watch(timetableNotifierProvider);
    final attendancesAsyncValue = ref.watch(attendancesNotifierProvider);

    final timetableTypeState = useState(TimetableTypeConstants.LectureScreen);

    return layout(
      pageTitle: '時間割',
      context: context,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: asyncValueLayout(
            context: context,
            asyncValue: timetablesAsyncValue,
            builder: (timetables) => asyncValueLayout(
              context: context,
              asyncValue: attendancesAsyncValue,
              builder: (attendances) => Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Table(
                      border: TableBorder.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                      children: [
                        buildTableHeader(context),
                        for (int index = 0; index < 5; index++)
                          TableRow(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .13,
                                child: Center(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    width: double.infinity,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${index + 1}限',
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          periods_time[index],
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
                                for (var timetable in timetables)
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .13,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                          Text(
                                            getSubjectByPeriod(
                                              timetable.timetable,
                                              index + 1,
                                            ).teacher.replaceAll("　", " "),
                                            style: const TextStyle(
                                              fontSize: 9,
                                              color: Colors.black45,
                                            ),
                                          ),
                                          Text(
                                            getSubjectByPeriod(
                                              timetable.timetable,
                                              index + 1,
                                            ).classroom,
                                            style: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.blueAccent,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
