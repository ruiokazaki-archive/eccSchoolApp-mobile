import 'package:ecc_school_app_mobile/providers/attendances_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AttendanceScreen extends HookConsumerWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attendances = ref.watch(attendancesNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Attendance Screen')),
      body: Center(
        child: Column(
          children: [
            const Text("Attendance Screen"),
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
