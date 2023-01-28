// ignore_for_file: constant_identifier_names

import 'package:ecc_school_app_mobile/providers/attendances_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/attendance/build_table.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/loader.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AttendanceScreen extends HookConsumerWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(attendancesNotifierProvider);

    return layout(
      pageTitle: '出席率',
      context: context,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: asyncValue.when(
            data: (attendances) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: buildTable(attendances, context),
            ),
            error: (error, _) => Text(error.toString()),
            loading: () => loader(context),
          ),
        ),
      ),
    );
  }
}
