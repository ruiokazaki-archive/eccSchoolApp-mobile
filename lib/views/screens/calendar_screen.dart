import 'package:ecc_school_app_mobile/providers/calendar_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends HookConsumerWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(calendarNotifierProvider);

    DateTime focusedDay = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar Screen')),
      body: TableCalendar(
        locale: 'ja_JP',
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2040, 12, 31),
        focusedDay: focusedDay,
      ),
    );
  }
}
