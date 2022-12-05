import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AttendanceScreen extends ConsumerWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance Screen')),
      body: Center(
        child: Column(
          children: const [
            Text("Attendance Screen"),
          ],
        ),
      ),
    );
  }
}
