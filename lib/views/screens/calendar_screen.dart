import 'package:ecc_school_app_mobile/providers/calendar_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalendarScreen extends HookConsumerWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(calendarNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar Screen')),
      body: Center(
        child: Column(
          children: [
            const Text("Calendar Screen"),
            Text(calendar.toString()),
            TextButton(
              onPressed: () {
                ref
                    .read(calendarNotifierProvider.notifier)
                    .getCalendar("2022", "12");
              },
              child: const Text("Get Calendar"),
            )
          ],
        ),
      ),
    );
  }
}
