import 'package:ecc_school_app_mobile/providers/attendances_provider.dart';
import 'package:ecc_school_app_mobile/providers/timetable_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimetableScreen extends HookConsumerWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timetables = ref.watch(timetableNotifierProvider);
    final attendances = ref.watch(attendancesNotifierProvider);

    return layout(
      pageTitle: '時間割',
      context: context,
      body: Center(
        child: Column(
          children: [
            Text(timetables.toString()),
            TextButton(
              onPressed: () {
                ref.read(timetableNotifierProvider.notifier).getTimetables();
              },
              child: const Text("Get Timetable"),
            ),
            Text(attendances.toString()),
            TextButton(
              onPressed: () {
                ref.read(attendancesNotifierProvider.notifier).getAttendances();
              },
              child: const Text("Get Attendances"),
            )
          ],
        ),
      ),
    );
  }
}
