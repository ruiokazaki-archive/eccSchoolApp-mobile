import 'package:ecc_school_app_mobile/providers/attendances_provider.dart';
import 'package:ecc_school_app_mobile/providers/timetable_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/async_value_layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimetableScreen extends HookConsumerWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timetablesAsyncValue = ref.watch(timetableNotifierProvider);
    final attendancesAsyncValue = ref.watch(attendancesNotifierProvider);

    return layout(
      pageTitle: '時間割',
      context: context,
      body: SingleChildScrollView(
        child: asyncValueLayout(
          context: context,
          asyncValue: timetablesAsyncValue,
          builder: (timetables) => asyncValueLayout(
            context: context,
            asyncValue: attendancesAsyncValue,
            builder: (attendances) => Column(
              children: [
                Text(timetables.toString()),
                Text(attendances.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
