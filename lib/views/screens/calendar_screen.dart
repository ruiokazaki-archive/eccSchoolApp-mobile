import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

Widget _buildEventsMarker(DateTime date, List events) {
  return Positioned(
    right: 5,
    bottom: 5,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red[300],
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: const TextStyle().copyWith(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    ),
  );
}

class CalendarScreen extends HookConsumerWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusedDayState = useState<DateTime>(DateTime.now());
    final selectedDayState = useState<DateTime>(DateTime.now());

    final eventsListState = useState<Map<DateTime, List<String>>>({
      DateTime.now().subtract(const Duration(days: 2)): [
        'Event A6',
        'Event B6'
      ],
      DateTime.now(): ['Event A7', 'Event B7', 'Event C7', 'Event D7'],
      DateTime.now().add(const Duration(days: 1)): [
        'Event A8',
        'Event B8',
        'Event C8',
        'Event D8'
      ],
      DateTime.now().add(const Duration(days: 3)):
          {'Event A9', 'Event A10', 'Event B9'}.toList(),
      DateTime.now().add(const Duration(days: 7)): [
        'Event A10',
        'Event B10',
        'Event C10'
      ],
      DateTime.now().add(const Duration(days: 11)): ['Event A11', 'Event B11'],
      DateTime.now().add(const Duration(days: 17)): [
        'Event A12',
        'Event B12',
        'Event C12',
        'Event D12'
      ],
      DateTime.now().add(const Duration(days: 22)): ['Event A13', 'Event B13'],
      DateTime.now().add(const Duration(days: 26)): [
        'Event A14',
        'Event B14',
        'Event C14'
      ],
    });

    final events = LinkedHashMap<DateTime, List<String>>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(eventsListState.value);

    List getEventForDay(DateTime day) {
      return events[day] ?? [];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('calendar sample'),
      ),
      body: Column(
        children: [
          TableCalendar(
            locale: 'ja_JP',
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
            ),
            focusedDay: focusedDayState.value,
            eventLoader: getEventForDay,
            selectedDayPredicate: (day) {
              return isSameDay(selectedDayState.value, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(selectedDayState.value, selectedDay)) {
                selectedDayState.value = selectedDay;
                focusedDayState.value = focusedDay;
                getEventForDay(selectedDay);
              }
            },
            onPageChanged: (focusedDay) {
              focusedDayState.value = focusedDay;
            },
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                if (events.isNotEmpty) {
                  return _buildEventsMarker(date, events);
                }
                return null;
              },
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: getEventForDay(selectedDayState.value)
                .map(
                  (event) => ListTile(
                    title: Text(event.toString()),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
